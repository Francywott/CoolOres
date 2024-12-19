package net.frozenblock.cool_ores;

import net.minecraft.core.BlockPos;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.world.entity.player.Player;

public interface SkullLambda {
    void supply(ServerLevel level, BlockPos pos, Player player);
}
