package net.frozenblock.cool_ores.item;


import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResultHolder;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.entity.LivingEntity;
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
        final var list = level.getEntitiesOfClass(LivingEntity.class, player.getBoundingBox().inflate(20, 3, 20));
        list.forEach(living -> {
            living.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 1, 10));
            if(living == player) return;
            living.addEffect(new MobEffectInstance(MobEffects.WITHER, 1, 10));
            living.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 1, 10));
        });
        return super.use(level, player, interactionHand);
    }
}
