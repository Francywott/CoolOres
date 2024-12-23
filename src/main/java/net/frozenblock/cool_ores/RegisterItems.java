package net.frozenblock.cool_ores;

import net.frozenblock.cool_ores.item.WitherOrb;
import net.minecraft.world.item.*;
import net.minecraftforge.registries.RegisterEvent;

public class RegisterItems {

    public static final SwordItem DUMBBELLS = new SwordItem(Tiers.NETHERITE, 100, 100, new Item.Properties().stacksTo(1));
    public static final WitherOrb WITHER_ORB = new WitherOrb(new Item.Properties().stacksTo(1));
    public static void register(RegisterEvent.RegisterHelper<Item> helper) {
        helper.register("dumbbell", DUMBBELLS);
        helper.register("treadmill", new BlockItem(RegisterBlocks.TREADMILL_BLOCK, new Item.Properties()));
        helper.register("money_table", new BlockItem(RegisterBlocks.MONEY_TABLE, new Item.Properties()));
        helper.register("wither_orb", WITHER_ORB);
    }
}
