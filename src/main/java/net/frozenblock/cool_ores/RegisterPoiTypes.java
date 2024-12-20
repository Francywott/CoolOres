package net.frozenblock.cool_ores;

import com.google.common.collect.ImmutableSet;
import net.minecraft.world.entity.ai.village.poi.PoiType;
import net.minecraftforge.registries.RegisterEvent;

public class RegisterPoiTypes {

    public static final PoiType MONEY_POI = new PoiType(ImmutableSet.copyOf(RegisterBlocks.MONEY_TABLE.getStateDefinition().getPossibleStates()), 1, 1);

    public static void register(RegisterEvent.RegisterHelper<PoiType> helper) {
        helper.register("monet_poi", MONEY_POI);
    }
}
