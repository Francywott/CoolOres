package net.frozenblock.cool_ores;

import net.minecraft.core.registries.Registries;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import net.minecraftforge.registries.NewRegistryEvent;
import net.minecraftforge.registries.RegisterEvent;

import java.util.ArrayList;

@Mod(CoolOres.MOD_ID)
public class CoolOres {
    public static final String MOD_ID = "cool_ores";
    public static final ArrayList<Runnable> LIST = new ArrayList<>();

    public CoolOres() {
        IEventBus bus = FMLJavaModLoadingContext.get().getModEventBus();
        bus.register(this);
    }

    @SubscribeEvent
    public void registerEvent(RegisterEvent event) {
       event.register(Registries.ITEM, RegisterItems::register);
       event.register(Registries.BLOCK, RegisterBlocks::register);
    }
}
