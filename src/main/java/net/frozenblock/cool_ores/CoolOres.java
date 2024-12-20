package net.frozenblock.cool_ores;

import it.unimi.dsi.fastutil.ints.Int2ObjectMap;
import net.minecraft.core.registries.Registries;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.world.entity.npc.VillagerTrades;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Items;
import net.minecraft.world.item.trading.MerchantOffer;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.village.VillagerTradesEvent;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import net.minecraftforge.registries.NewRegistryEvent;
import net.minecraftforge.registries.RegisterEvent;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

@Mod(CoolOres.MOD_ID)
public class CoolOres {
    public static final String MOD_ID = "cool_ores";
    public static final ArrayList<Runnable> LIST = new ArrayList<>();

    public CoolOres() {
        IEventBus bus = FMLJavaModLoadingContext.get().getModEventBus();
        bus.register(this);

        MinecraftForge.EVENT_BUS.register(ForgeBus.class);
    }

    @SubscribeEvent
    public void registerEvent(RegisterEvent event) {
       event.register(Registries.ITEM, RegisterItems::register);
       event.register(Registries.BLOCK, RegisterBlocks::register);
       event.register(Registries.POINT_OF_INTEREST_TYPE, RegisterPoiTypes::register);
       event.register(Registries.VILLAGER_PROFESSION, RegisterVillagerProfessions::register);
    }


}
