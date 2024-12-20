package net.frozenblock.cool_ores.mixin;

import com.kreezcraft.justenoughcrowns.JustEnoughCrownsForge;
import com.kreezcraft.justenoughcrowns.registry.JECRegistry;
import io.github.foundationgames.automobility.automobile.AutomobileEngine;
import io.github.foundationgames.automobility.automobile.AutomobileFrame;
import io.github.foundationgames.automobility.automobile.AutomobilePrefab;
import io.github.foundationgames.automobility.automobile.AutomobileWheel;
import io.github.xsmalldeadguyx.elementalcreepers.common.ElementalCreepers;
import net.frozenblock.cool_ores.CoolOres;
import net.frozenblock.cool_ores.RandomLambda;
import net.frozenblock.cool_ores.RegisterItems;
import net.frozenblock.cool_ores.SkullLambda;
import net.mcreator.pigzilla.init.PigzillaModEntities;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.core.registries.Registries;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.tags.TagKey;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.MobSpawnType;
import net.minecraft.world.entity.item.ItemEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Items;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.BedBlock;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.NetherPortalBlock;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.properties.BedPart;
import net.minecraft.world.level.storage.loot.LootParams;
import net.minecraft.world.level.storage.loot.LootTable;
import net.minecraft.world.level.storage.loot.parameters.LootContextParamSet;
import net.minecraft.world.level.storage.loot.parameters.LootContextParams;
import net.skatric.ohioores.init.OhioOresModItems;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Unique;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

import java.util.function.Function;

@Mixin(Block.class)

public class BlockMixin {
    @Unique
    private static final TagKey<Block> ORE_TAG = TagKey.create(Registries.BLOCK, new ResourceLocation("forge:ores"));

    @Unique
    private static final AutomobilePrefab[] cool_ores$PREFABS = {
            new AutomobilePrefab(
                    new ResourceLocation("automobility:red_tractor"),
                    AutomobileFrame.RED_TRACTOR,
                    AutomobileWheel.TRACTOR,
                    AutomobileEngine.COPPER
            ),
            new AutomobilePrefab(
                    new ResourceLocation("automobility:yellow_tractor"),
                    AutomobileFrame.YELLOW_TRACTOR,
                    AutomobileWheel.TRACTOR,
                    AutomobileEngine.COPPER
            ),
            new AutomobilePrefab(
                    new ResourceLocation("automobility:green_tractor"),
                    AutomobileFrame.GREEN_TRACTOR,
                    AutomobileWheel.TRACTOR,
                    AutomobileEngine.COPPER
            ),
            new AutomobilePrefab(
                    new ResourceLocation("automobility:blue_tractor"),
                    AutomobileFrame.SHOPPING_CART,
                    AutomobileWheel.STEEL,
                    AutomobileEngine.STONE
            )
    };

    @Unique
    private static final SkullLambda[] cool_ores$SKULL_RUNNABLES = {
            (level, pos, player) -> EntityType.WITHER.spawn(level, pos, MobSpawnType.MOB_SUMMONED),
            (level, pos, player) -> EntityType.WITHER_SKELETON.spawn(level, pos, MobSpawnType.MOB_SUMMONED),
            (level, pos, player) -> EntityType.SKELETON.spawn(level, pos, MobSpawnType.MOB_SUMMONED),
            (level, pos, player) -> {
                LootTable table = level.getServer().getLootData().getLootTable(new ResourceLocation("minecraft:chests/bastion_hoglin_stable"));
                LootParams.Builder builder = new LootParams.Builder(level)
                        .withParameter(LootContextParams.ORIGIN, pos.getCenter())
                        .withLuck(player.getLuck())
                        .withParameter(LootContextParams.THIS_ENTITY, player);
                var list = table.getRandomItems(builder.create(LootContextParamSet.builder().build()));
                list.forEach(item -> cool_ores$dropStack(level, pos, item));
            },
            (level, pos, player) -> cool_ores$dropStack(level, pos, Items.NETHERITE_SWORD.getDefaultInstance()),
            (level, pos, player) -> cool_ores$dropStack(level, pos, Items.NETHER_STAR.getDefaultInstance()),
            (level, pos, player) -> {
                final var dir = player.getDirection().getClockWise();
                final BlockPos[] obsidian = {
                        pos,
                        pos.relative(dir),
                        pos.relative(dir,2),
                        pos.relative(dir,3),
                        pos.above(),
                        pos.above().relative(dir, 3),
                        pos.above(2),
                        pos.above(2).relative(dir, 3),
                        pos.above(3),
                        pos.above(3).relative(dir, 3),
                        pos.above(4),
                        pos.above(4).relative(dir),
                        pos.above(4).relative(dir,2),
                        pos.above(4).relative(dir,3)
                };
                final BlockPos[] portal = {
                        pos.above().relative(dir),
                        pos.above().relative(dir, 2),
                        pos.above(2).relative(dir),
                        pos.above(2).relative(dir, 2),
                        pos.above(3).relative(dir),
                        pos.above(3).relative(dir, 2)
                };
                for(BlockPos finalPos : obsidian) {
                    level.setBlock(finalPos, Blocks.OBSIDIAN.defaultBlockState(), 3);
                }
                for(BlockPos finalPos : portal) {
                    level.setBlock(finalPos, Blocks.NETHER_PORTAL.defaultBlockState().setValue(NetherPortalBlock.AXIS, dir.getAxis()), 3);
                }
            },
            (level, pos, player) -> level.setBlock(pos, Blocks.CHIPPED_ANVIL.defaultBlockState(), 3),
            (level, pos, player) -> {
                level.setBlock(pos, Blocks.RED_BED.defaultBlockState(), 3);
                level.setBlock(pos.north(), Blocks.RED_BED.defaultBlockState().setValue(BedBlock.PART, BedPart.FOOT), 3);
            },
    };

    @Unique
    private static final RandomLambda[] cool_ores$MONEY_LOOT = {
            random -> new ItemStack(Items.ANVIL, (int)(2 + (random * 3))),
            random -> new ItemStack(Items.GOLD_INGOT, (int)(2 + (random * 5))),
            random -> new ItemStack(Items.RAW_GOLD, (int)(2 + (random * 5))),
            random -> new ItemStack(Items.BRICK, (int)(2 + (random * 5))),
            random -> new ItemStack(JECRegistry.GOLDCROWN_HELMET.get(), 1),
            random -> new ItemStack(OhioOresModItems.WANDD.get()),
            random -> new ItemStack(OhioOresModItems.THRONE.get())
    };

    @Inject(method = "playerDestroy", at = @At("TAIL"))
    private void cool_ores$playerDestroy(Level level, Player player, BlockPos pos, BlockState blockState, BlockEntity blockEntity, ItemStack itemStack, CallbackInfo ci) {
        if (level.isClientSide) return;
        if (blockState.getBlock() == Blocks.PINK_GLAZED_TERRACOTTA) {
            BlockPos pos2 = cool_ores$EmptyFind(level, pos);
            final double random = Math.random();
            EntityType<?>[] list = {
                    EntityType.CREEPER, ElementalCreepers.ELECTRIC_CREEPER.get(), ElementalCreepers.FIRE_CREEPER.get(),
                    ElementalCreepers.ICE_CREEPER.get(), ElementalCreepers.DARK_CREEPER.get()
            };
            final var type = list[(int) (random * list.length)];
            type.spawn((ServerLevel) level, pos2, MobSpawnType.MOB_SUMMONED);
        } else if (blockState.getBlock() == Blocks.RED_GLAZED_TERRACOTTA) {
            BlockPos pos2 = cool_ores$EmptyFind(level, pos);
            PigzillaModEntities.PIGZILLA.get().spawn((ServerLevel) level, pos2, MobSpawnType.MOB_SUMMONED);
        } else if (blockState.getBlock() == Blocks.YELLOW_GLAZED_TERRACOTTA) {
            @SuppressWarnings("deprecation")
            final Block block = BuiltInRegistries.BLOCK.get(new ResourceLocation("lucky:lucky_block"));
            block.playerDestroy(level, player, pos, block.defaultBlockState(), blockEntity, itemStack);
        } else if (blockState.getBlock() == Blocks.MAGENTA_GLAZED_TERRACOTTA) {
            cool_ores$Mine3x3(level, pos, player);
        } else if(blockState.getBlock() == Blocks.LIGHT_BLUE_GLAZED_TERRACOTTA) {
            final double random = Math.random();
            final var randomCar = cool_ores$PREFABS[(int)(random*cool_ores$PREFABS.length)];
            cool_ores$dropStack(level, pos, randomCar.toStack());
        } else if(blockState.getBlock() == Blocks.LIME_GLAZED_TERRACOTTA) {
            final double random = Math.random();
            final double random2 = Math.random();
            cool_ores$dropStack(level, pos, cool_ores$MONEY_LOOT[(int) (random*cool_ores$MONEY_LOOT.length)].supply(random2));
        } else if(blockState.getBlock() == Blocks.PURPLE_GLAZED_TERRACOTTA) {
            final double random = Math.random();
            cool_ores$SKULL_RUNNABLES[(int) (random * cool_ores$SKULL_RUNNABLES.length)].supply((ServerLevel) level, pos, player);
        }
    }

    @Unique
    @SuppressWarnings("deprecation")
    private static BlockPos cool_ores$EmptyFind(Level level, BlockPos pos) {
        if (!level.getBlockState(pos).isSolid() && !level.getBlockState(pos.above()).isSolid()) return pos;
        for(Direction dir : Direction.values()) {
            BlockPos pos2 = pos.relative(dir);
            if (!level.getBlockState(pos2).isSolid() && !level.getBlockState(pos2.above()).isSolid()) return pos2;
        }
        for(Direction dir : Direction.values()) {
            BlockPos pos2 = pos.relative(dir);
            if (!level.getBlockState(pos2).isSolid() && !level.getBlockState(pos2.below()).isSolid()) return pos2;
        }
        return pos;
    }

    @Unique
    private static void cool_ores$Mine3x3(Level level, BlockPos pos, Player player) {
        for (int x = -1; x < 2; x++){
            for (int z = -1; z < 2; z++){
                BlockPos pos2 = pos.offset(x, 0, z);
                BlockState state2 = level.getBlockState(pos2);
                if (state2.is(ORE_TAG)){
                    var list = state2.getDrops(
                            new LootParams.Builder((ServerLevel) level)
                                    .withParameter(LootContextParams.TOOL, player.getMainHandItem())
                                    .withParameter(LootContextParams.ORIGIN, pos.getCenter())
                    );
                    list.forEach(player::addItem);
                    level.setBlock(pos2, Blocks.AIR.defaultBlockState(), 3);
                } else {
                    if (level.getBlockState(pos2).getBlock() == Blocks.BEDROCK) return;
                    level.destroyBlock(pos2, true, player);
                }
            }
        }
        CoolOres.LIST.add(() -> cool_ores$Mine3x3(level, pos.below(), player));
    }

    @Unique
    private static void cool_ores$dropStack(Level level, BlockPos pos, ItemStack stack) {
        ItemEntity itemEntity = new ItemEntity(level, pos.getX() + 0.5, pos.getY() + 0.5, pos.getZ() + 0.5, stack);
        itemEntity.setPickUpDelay(10);
        level.addFreshEntity(itemEntity);
    }
}
