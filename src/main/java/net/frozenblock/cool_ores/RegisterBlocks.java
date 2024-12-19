package net.frozenblock.cool_ores;

import net.frozenblock.cool_ores.block.TreadmillBlock;
import net.minecraft.core.Registry;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.state.BlockBehaviour;

public class RegisterBlocks {

    public static final TreadmillBlock TREADMILL_BLOCK = new TreadmillBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK));

    public static void register() {
        Registry.register(BuiltInRegistries.BLOCK, new ResourceLocation(CoolOres.MOD_ID, "treadmill"), TREADMILL_BLOCK);
    }

}
