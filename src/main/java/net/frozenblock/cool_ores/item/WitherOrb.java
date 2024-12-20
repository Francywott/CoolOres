package net.frozenblock.cool_ores.item;


import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResultHolder;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.Level;
import org.jetbrains.annotations.NotNull;

public class WitherOrb extends Item {
    public WitherOrb(Properties p_41383_) {
        super(p_41383_);
    }

    @Override
    public @NotNull InteractionResultHolder<ItemStack> use(@NotNull Level level, @NotNull Player player, @NotNull InteractionHand interactionHand) {
        level.getEntitiesOfClass(Mob.class, player.getBoundingBox().inflate(20, 3, 20));
        return super.use(level, player, interactionHand);
    }
}
