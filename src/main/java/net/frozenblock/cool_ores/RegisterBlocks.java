package net.frozenblock.cool_ores;

import net.frozenblock.cool_ores.block.TreadmillBlock;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraftforge.registries.RegisterEvent;

public class RegisterBlocks {

    public static final TreadmillBlock TREADMILL_BLOCK = new TreadmillBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK));

    public static void register(RegisterEvent.RegisterHelper<Block> helper) {
        helper.register("treadmill", TREADMILL_BLOCK);
    }

}
