package net.frozenblock.cool_ores;

import com.google.common.collect.ImmutableSet;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.world.entity.npc.VillagerProfession;
import net.minecraftforge.registries.RegisterEvent;

public class RegisterVillagerProfessions {
    public static final VillagerProfession MONEY_MASTER = new VillagerProfession(
            "moneymaster",
            holder -> holder.get() == RegisterPoiTypes.MONEY_POI,
            holder -> holder.get() == RegisterPoiTypes.MONEY_POI,
            ImmutableSet.of(), ImmutableSet.of(), SoundEvents.VILLAGER_WORK_ARMORER);

    public static void register(RegisterEvent.RegisterHelper<VillagerProfession> helper) {
        helper.register("moneymaster", MONEY_MASTER);
    }
}
