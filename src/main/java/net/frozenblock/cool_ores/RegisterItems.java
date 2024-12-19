package net.frozenblock.cool_ores;

import net.minecraft.core.Registry;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.item.*;

public class RegisterItems {

    public static final SwordItem DUMBBELLS = new SwordItem(Tiers.NETHERITE, 100, 100, new Item.Properties().stacksTo(1));
    public static final PotionItem PROTEIN_POWDER = new PotionItem(new Item.Properties());

    public static void register() {
        Registry.register(BuiltInRegistries.ITEM, new ResourceLocation(CoolOres.MOD_ID, "dumbbells"), DUMBBELLS);
        Registry.register(BuiltInRegistries.ITEM, new ResourceLocation(CoolOres.MOD_ID, "protein_powder"), PROTEIN_POWDER);
    }
}
