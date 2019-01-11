--[[ -----------------------.
 ________________________	|
|------------------------|	|
|--Made by: Erictemponi--|	|
|------------------------|	|
|________________________|	|
--]] -----------------------'


local npcid = 190003

function profession_gossip(unit, player, unit)
	player:GossipMenuAddItem(0, "|TInterface\\icons\\INV_Misc_ScrewDriver_02:30:30:-15:0|t 进入专业技能训练 ->|r", 0, 1)
	player:GossipMenuAddItem(0, "|TInterface\\icons\\achievement_reputation_01:30:30:-15:0|t 再见！我不需要！|r", 0, 999)
	player:GossipSendMenu(1, unit)
end

function profession_select(event, player, unit, sender, intid)
	if (intid == 1) then
		player:GossipMenuAddItem(0, "|TInterface\\icons\\trade_alchemy:30:30:-15:0|t 炼金术|r", 0, 10)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\INV_Ingot_05:30:30:-15:0|t 锻造|r", 0, 13)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\INV_Misc_LeatherScrap_02:30:30:-15:0|t 制皮|r", 0, 16)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\INV_Fabric_Felcloth_Ebon:30:30:-15:0|t 裁缝|r", 0, 19)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\inv_misc_wrench_01:30:30:-15:0|t 工程|r", 0, 22)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\trade_engraving:30:30:-15:0|t 附魔|r", 0, 25)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\inv_misc_gem_01:30:30:-15:0|t 珠宝加工|r", 0, 28)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\INV_Scroll_08:30:30:-15:0|t 铭文|r", 0, 31)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\INV_Misc_Herb_07:30:30:-15:0|t 草药|r", 0, 34)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\inv_misc_pelt_wolf_01:30:30:-15:0|t 剥皮|r", 0, 37)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\trade_mining:30:30:-15:0|t 采矿|r", 0, 40)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\inv_misc_food_15:30:30:-15:0|t 烹饪|r", 0, 43)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\spell_holy_sealofsacrifice:30:30:-15:0|t 急救|r", 0, 46)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\trade_fishing:30:30:-15:0|t 钓鱼|r", 0, 49)
		player:GossipMenuAddItem(0, "|TInterface\\icons\\Spell_ChargePositive:30:30:-15:0|t 将我所有专业提升为450|r", 0, 100)
		player:GossipMenuAddItem(0, "|TInterface\\Glues\\Common\\Glue-LeftArrow-Button-Up:30:30:-20:3|t  返回...|r", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Alchemy
	if (intid == 10) then
		player:GossipMenuAddItem(0, "学习大师级炼金", 0, 11)
		player:GossipMenuAddItem(0, "忘掉大师级炼金", 0, 12)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Blacksmithing
	if (intid == 13) then
		player:GossipMenuAddItem(0, "学习大师级锻造", 0, 14)
		player:GossipMenuAddItem(0, "忘掉大师级锻造", 0, 15)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Leatherworking
	if (intid == 16) then
		player:GossipMenuAddItem(0, "学习大师级制皮", 0, 17)
		player:GossipMenuAddItem(0, "忘掉大师级制皮", 0, 18)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Tailoring
	if (intid == 19) then
		player:GossipMenuAddItem(0, "学习大师级裁缝", 0, 20)
		player:GossipMenuAddItem(0, "忘掉大师级裁缝", 0, 21)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Engineering
	if (intid == 22) then
		player:GossipMenuAddItem(0, "学习大师级工程", 0, 23)
		player:GossipMenuAddItem(0, "忘掉大师级工程", 0, 24)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Enchanting
	if (intid == 25) then
		player:GossipMenuAddItem(0, "学习大师级附魔", 0, 26)
		player:GossipMenuAddItem(0, "忘掉大师级附魔", 0, 27)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Jewelcrafting
	if (intid == 28) then
		player:GossipMenuAddItem(0, "学习大师级珠宝加工", 0, 29)
		player:GossipMenuAddItem(0, "忘掉大师级珠宝加工", 0, 30)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Inscription
	if (intid == 31) then
		player:GossipMenuAddItem(0, "学习大师级铭文", 0, 32)
		player:GossipMenuAddItem(0, "忘掉大师级铭文", 0, 33)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Herbalism
	if (intid == 34) then
		player:GossipMenuAddItem(0, "学习大师级草药", 0, 35)
		player:GossipMenuAddItem(0, "忘掉大师级草药", 0, 36)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Skinning
	if (intid == 37) then
		player:GossipMenuAddItem(0, "学习大师级剥皮", 0, 38)
		player:GossipMenuAddItem(0, "忘掉大师级剥皮", 0, 39)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Mining
	if (intid == 40) then
		player:GossipMenuAddItem(0, "学习大师级采矿", 0, 41)
		player:GossipMenuAddItem(0, "忘掉大师级采矿", 0, 42)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Cooking
	if (intid == 43) then
		player:GossipMenuAddItem(0, "学习大师级烹饪", 0, 44)
		player:GossipMenuAddItem(0, "忘掉大师级烹饪", 0, 45)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- First Aid
	if (intid == 46) then
		player:GossipMenuAddItem(0, "学习大师级急救", 0, 47)
		player:GossipMenuAddItem(0, "忘掉大师级急救", 0, 48)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	-- Fishing
	if (intid == 49) then
		player:GossipMenuAddItem(0, "学习大师级钓鱼", 0, 50)
		player:GossipMenuAddItem(0, "忘掉大师级钓鱼", 0, 51)
		player:GossipMenuAddItem(0, "返回...", 0, 500)
		player:GossipSendMenu(1, unit)
	end
	
	
	-- ----- Learn/Unlearn ----- --
	-- Alchemy
	if (intid == 11) then
		player:CastSpell(player, 51303, true)
		player:GossipComplete()
	end
	if (intid == 12) then
		player:RemoveSpell(51304)
		player:RemoveSpell(28596)
		player:RemoveSpell(11611)
		player:RemoveSpell(3464)
		player:RemoveSpell(3101)
		player:RemoveSpell(2259)
		player:GossipComplete()
	end
	
	-- Blacksmithing
	if (intid == 14) then
		player:CastSpell(player, 51298, true)
		player:GossipComplete()
	end
	if (intid == 15) then
		player:RemoveSpell(51300)
		player:RemoveSpell(29844)
		player:RemoveSpell(9785)
		player:RemoveSpell(3538)
		player:RemoveSpell(3100)
		player:RemoveSpell(2018)
		player:GossipComplete()
	end

	-- Leatherworking
	if (intid == 17) then
		player:CastSpell(player, 51301, true)
		player:GossipComplete()
	end
	if (intid == 18) then
		player:RemoveSpell(51302)
		player:RemoveSpell(32549)
		player:RemoveSpell(10662)
		player:RemoveSpell(3811)
		player:RemoveSpell(3104)
		player:RemoveSpell(2108)
		player:GossipComplete()
	end

	-- Tailoring
	if (intid == 20) then
		player:CastSpell(player, 51308, true)
		player:GossipComplete()
	end
	if (intid == 21) then
		player:RemoveSpell(51309)
		player:RemoveSpell(26790)
		player:RemoveSpell(12180)
		player:RemoveSpell(3910)
		player:RemoveSpell(3909)
		player:RemoveSpell(3908)
		player:GossipComplete()
	end

	-- Engineering
	if (intid == 23) then
		player:CastSpell(player, 51305, true)
		player:GossipComplete()
	end
	if (intid == 24) then
		player:RemoveSpell(51306)
		player:RemoveSpell(30350)
		player:RemoveSpell(12656)
		player:RemoveSpell(4038)
		player:RemoveSpell(4037)
		player:RemoveSpell(4036)
		player:GossipComplete()
	end

	-- Enchanting
	if (intid == 26) then
		player:CastSpell(player, 51312, true)
		player:GossipComplete()
	end
	if (intid == 27) then
		player:RemoveSpell(51313)
		player:RemoveSpell(28029)
		player:RemoveSpell(13920)
		player:RemoveSpell(7413)
		player:RemoveSpell(7412)
		player:RemoveSpell(7411)
		player:GossipComplete()
	end

	-- Jewelcrafting
	if (intid == 29) then
		player:CastSpell(player, 51310, true)
		player:GossipComplete()
	end
	if (intid == 30) then
		player:RemoveSpell(51311)
		player:RemoveSpell(28897)
		player:RemoveSpell(28895)
		player:RemoveSpell(28894)
		player:RemoveSpell(25230)
		player:RemoveSpell(25229)
		player:GossipComplete()
	end

	-- Inscription
	if (intid == 32) then
		player:CastSpell(player, 45380, true)
		player:GossipComplete()
	end
	if (intid == 33) then
		player:RemoveSpell(45363)
		player:RemoveSpell(45361)
		player:RemoveSpell(45360)
		player:RemoveSpell(45359)
		player:RemoveSpell(45358)
		player:RemoveSpell(45357)
		player:GossipComplete()
	end

	-- Herbalism
	if (intid == 35) then
		player:CastSpell(player, 50301, true)
		player:GossipComplete()
	end
	if (intid == 36) then
		player:RemoveSpell(50300)
		player:RemoveSpell(28695)
		player:RemoveSpell(11993)
		player:RemoveSpell(3570)
		player:RemoveSpell(2368)
		player:RemoveSpell(2366)
		player:GossipComplete()
	end

	-- Skinning
	if (intid == 38) then
		player:CastSpell(player, 50307, true)
		player:GossipComplete()
	end
	if (intid == 39) then
		player:RemoveSpell(50305)
		player:RemoveSpell(32678)
		player:RemoveSpell(10768)
		player:RemoveSpell(8618)
		player:RemoveSpell(8617)
		player:RemoveSpell(8613)
		player:GossipComplete()
	end

	-- Mining
	if (intid == 41) then
		player:CastSpell(player, 50309, true)
		player:GossipComplete()
	end
	if (intid == 42) then
		player:RemoveSpell(50310)
		player:RemoveSpell(29354)
		player:RemoveSpell(10248)
		player:RemoveSpell(3564)
		player:RemoveSpell(2576)
		player:RemoveSpell(2575)
		player:GossipComplete()
	end
	
	-- Cooking
	if (intid == 44) then
		player:CastSpell(player, 51295, true)
		player:GossipComplete()
	end
	if (intid == 45) then
		player:RemoveSpell(51296)
		player:RemoveSpell(33359)
		player:RemoveSpell(18260)
		player:RemoveSpell(3413)
		player:RemoveSpell(3102)
		player:RemoveSpell(2550)
		player:RemoveSpell(2550)
		player:GossipComplete()
	end
	
	-- First Aid
	if (intid == 47) then
		player:CastSpell(player, 50299, true)
		player:GossipComplete()
	end
	if (intid == 48) then
		player:RemoveSpell(45542)
		player:RemoveSpell(27028)
		player:RemoveSpell(10846)
		player:RemoveSpell(7924)
		player:RemoveSpell(3274)
		player:RemoveSpell(3273)
		player:GossipComplete()
	end
	
	-- Fishing
	if (intid == 50) then
		player:CastSpell(player, 51293, true)
		player:GossipComplete()
	end
	if (intid == 51) then
		player:RemoveSpell(51294)
		player:RemoveSpell(33095)
		player:RemoveSpell(18248)
		player:RemoveSpell(7732)
		player:RemoveSpell(7731)
		player:RemoveSpell(7620)
		player:GossipComplete()
	end
	
	
	-----------------------------------------------------
	
	if (intid == 100) then
		player:AdvanceSkill(171, 450) -- Alchemy
		player:AdvanceSkill(164, 450) -- Blacksmithing
		player:AdvanceSkill(333, 450) -- Enchanting
		player:AdvanceSkill(202, 450) -- Engineering
		player:AdvanceSkill(182, 450) -- Herbalism
		player:AdvanceSkill(773, 450) -- Inscription
		player:AdvanceSkill(755, 450) -- Jewelcrafting
		player:AdvanceSkill(165, 450) -- Leatherworking
		player:AdvanceSkill(186, 450) -- Mining
		player:AdvanceSkill(393, 450) -- Skinning
		player:AdvanceSkill(197, 450) -- Tailoring
		player:AdvanceSkill(185, 450) -- Cooking
		player:AdvanceSkill(129, 450) -- First Aid
		player:AdvanceSkill(356, 450) -- Fishing
		player:GossipComplete()
	end
	
	if (intid == 500) then
		profession_gossip(unit, player, unit)
	end
	
	if (intid == 999) then
		player:GossipComplete()
	end
end

RegisterCreatureGossipEvent(npcid, 1, profession_gossip)
RegisterCreatureGossipEvent(npcid, 2, profession_select)