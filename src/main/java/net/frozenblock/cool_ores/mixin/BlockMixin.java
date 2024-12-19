package net.frozenblock.cool_ores.mixin;

import io.github.foundationgames.automobility.automobile.AutomobileEngine;
import io.github.foundationgames.automobility.automobile.AutomobileFrame;
import io.github.foundationgames.automobility.automobile.AutomobilePrefab;
import io.github.foundationgames.automobility.automobile.AutomobileWheel;
import net.frozenblock.cool_ores.CoolOres;
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
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.storage.loot.LootParams;
import net.minecraft.world.level.storage.loot.parameters.LootContextParams;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Unique;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;


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

    @Inject(method = "playerDestroy", at = @At("TAIL"))
    private void cool_ores$playerDestroy(Level level, Player player, BlockPos pos, BlockState blockState, BlockEntity blockEntity, ItemStack itemStack, CallbackInfo ci) {
        if (level.isClientSide) return;
        if (blockState.getBlock() == Blocks.PINK_GLAZED_TERRACOTTA) {
            BlockPos pos2 = cool_ores$EmptyFind(level, pos);
            EntityType.CREEPER.spawn((ServerLevel) level, pos2, MobSpawnType.MOB_SUMMONED);
        } else if (blockState.getBlock() == Blocks.YELLOW_GLAZED_TERRACOTTA) {
            final Block block = BuiltInRegistries.BLOCK.get(new ResourceLocation("lucky:lucky_block"));
            block.playerDestroy(level, player, pos, block.defaultBlockState(), blockEntity, itemStack);
        } else if (blockState.getBlock() == Blocks.MAGENTA_GLAZED_TERRACOTTA) {
            cool_ores$Mine3x3(level, pos, player);
        } else if(blockState.getBlock() == Blocks.LIGHT_BLUE_GLAZED_TERRACOTTA) {
            final double random = Math.random();
            final var randomCar = cool_ores$PREFABS[(int)(random*cool_ores$PREFABS.length)];
            ItemEntity itemEntity = new ItemEntity(level, pos.getX() + 0.5, pos.getY() + 0.5, pos.getZ() + 0.5, randomCar.toStack());
            itemEntity.setPickUpDelay(10);
            level.addFreshEntity(itemEntity);
        } else if(blockState.getBlock() == Blocks.LIME_GLAZED_TERRACOTTA) {
            final double random = Math.random();
            ItemStack itemStack1 = Items.ANVIL.getDefaultInstance();
            itemStack1.setCount((int)(2 + (random * 3)));
            ItemEntity itemEntity = new ItemEntity(level, pos.getX() + 0.5, pos.getY() + 0.5, pos.getZ() + 0.5, itemStack1);
            itemEntity.setPickUpDelay(10);
            level.addFreshEntity(itemEntity);
        }
    }

    @Unique
    private static BlockPos cool_ores$EmptyFind(Level level, BlockPos pos) {
        if (!level.getBlockState(pos).isSolid() && !level.getBlockState(pos.above()).isSolid()) return pos;

        for(Direction dir : Direction.values()) { //UP DOWN NORTH WEST SOUTH EAST
            BlockPos pos2 = pos.relative(dir);
            if (!level.getBlockState(pos2).isSolid() && !level.getBlockState(pos2.above()).isSolid()) return pos2;
        }
        for(Direction dir : Direction.values()) { //UP DOWN NORTH WEST SOUTH EAST
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
}
