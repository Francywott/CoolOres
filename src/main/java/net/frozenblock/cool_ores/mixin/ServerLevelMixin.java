package net.frozenblock.cool_ores.mixin;

import net.frozenblock.cool_ores.CoolOres;
import net.minecraft.server.level.ServerLevel;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

import java.util.function.BooleanSupplier;

@Mixin(ServerLevel.class)

public class ServerLevelMixin {
    @Inject(method = "tick", at = @At("TAIL"))
    private void cool_ores$tick(BooleanSupplier boolianSupplier, CallbackInfo ci) {
        CoolOres.LIST.forEach(Runnable::run);
        CoolOres.LIST.clear();
    }
}
