package net.frozenblock.cool_ores;

import com.mojang.brigadier.StringReader;
import com.mojang.brigadier.exceptions.CommandSyntaxException;
import it.unimi.dsi.fastutil.ints.Int2ObjectMap;
import net.minecraft.commands.arguments.item.ItemParser;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.nbt.TagParser;
import net.minecraft.world.entity.npc.VillagerTrades;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Items;
import net.minecraft.world.item.trading.MerchantOffer;
import net.minecraftforge.event.village.VillagerTradesEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;

import java.util.List;

public class ForgeBus {

    @SubscribeEvent
    public static void addCustomTrades(VillagerTradesEvent event) {
        if(event.getType() == RegisterVillagerProfessions.MONEY_MASTER) {
            Int2ObjectMap<List<VillagerTrades.ItemListing>> trades = event.getTrades();
            final String[] tags = {
                    "{display:{Name:'{\"text\":\"Spectator Apple\",\"italic\":false}',Lore:['{\"text\":\"Eat for 10 seconds of spectator mode.\",\"color\":\"white\",\"italic\":false}','{\"text\":\"Returns you to your original position.\",\"color\":\"white\",\"italic\":false}']},CustomModelData:6370001,wasd_apple:1b,wasd_apple_type:1b} 1\n"
            };
            int i = 0;
            for(String tag : tags) {
                i++;
                final ItemStack stack = Items.GOLDEN_APPLE.getDefaultInstance();
                try {
                    CompoundTag nbt = new TagParser(new StringReader(tag)).readStruct();
                    stack.setTag(nbt);
                } catch (CommandSyntaxException e) {
                    throw new RuntimeException(e);
                }
                trades.get(i).add((trader, random) -> new MerchantOffer(
                        new ItemStack(Items.BRICK, 16),
                        stack, 2, 8, 0.02f
                ));
            }


        }
    }
}
