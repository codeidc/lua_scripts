--[[无敌幸运星]]--
print(">>Script: xingyunxing.lua loading...OK")
local TIME=60    ---------------间隔时间(单位分钟)
local diffTime=os.time()     ---不要改动
----如果物品是唯一的，将只发送1个
local RWitem={50736,32837,32838,50735,51398,51399,50012,51942,32466,50730,40553,34247,35015,38175}     ---------正常奖励
local RWitemcount=1   ----奖励数量上限
local RWitemlucy={50736,32837,32838,50735,51398,51399,50012,51942,32466,50730,40553,34247,35015,38175,60000} ----超级奖励
local RWitemcountLucy=1     --------奖励数量上限
local playerminlevel=80 -----参与奖励的最低等级
local function luckstar()
	local nowTime = os.time()
  if (nowTime-diffTime>=(TIME*60))then
    local text=CharDBQuery("SELECT guid ,account , name,online FROM characters  AS u1  JOIN (SELECT ROUND(RAND() * ((SELECT MAX(guid) FROM `characters` where  `level`  >='"..playerminlevel.."')-(SELECT MIN(guid) FROM characters where  `level`  >='"..playerminlevel.."' ))+(SELECT MIN(guid) FROM characters where  `level`  >='"..playerminlevel.."') ) AS uid) AS u2 WHERE u1.guid >= u2.uid ORDER BY u1.guid LIMIT 1")
   if (text )   then 
    local playidlistluck= math.random(1,100)--
	local itemID=0
	local Count=0
	local playstaus='|cFF00FA9A在线|r'
	if (text:GetString(3)=='0') then
	playstaus='|cFF00FA9A离线|r'
	end
	if (playidlistluck==88) then
	itemID=RWitemlucy[math.random(1,#RWitemlucy)]
		Count=math.random(1,RWitemcountLucy )
    SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]超级大奖出现！！！幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个,恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")
    elseif (playidlistluck==66) then
	itemID=RWitemlucy[math.random(1,#RWitemlucy)]
	Count=math.random(1,RWitemcountLucy )
   SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]超级大奖出现！！！幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个,恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")
    elseif (playidlistluck==77) then
	itemID=RWitemlucy[math.random(1,#RWitemlucy)]
	Count=math.random(1,RWitemcountLucy )
   SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]超级大奖出现！！！幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个,恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")
    elseif (playidlistluck==99) then
	itemID=RWitemlucy[math.random(1,#RWitemlucy)]
	Count=math.random(1,RWitemcountLucy )
   SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]超级大奖出现！！！幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个,恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")
    elseif (playidlistluck==66) then
	itemID=RWitemlucy[math.random(1,#RWitemlucy)]
Count=math.random(1,RWitemcountLucy )
   SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]超级大奖出现！！！幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个,恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")
    elseif (playidlistluck==55) then
	itemID=RWitemlucy[math.random(1,#RWitemlucy)]
	Count=math.random(1,RWitemcountLucy )
   SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]超级大奖出现！！！幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个,恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")
    elseif (playidlistluck==44) then
	itemID=RWitemlucy[math.random(1,#RWitemlucy)]
	Count=math.random(1,RWitemcountLucy )
   SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]超级大奖出现！！！幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个,恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")
    elseif (playidlistluck==33) then
	itemID=RWitemlucy[math.random(1,#RWitemlucy)]
	Count=math.random(1,RWitemcountLucy )
   SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]超级大奖出现！！！幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个,恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")
    elseif (playidlistluck==22) then
	itemID=RWitemlucy[math.random(1,#RWitemlucy)]
	Count=math.random(1,RWitemcountLucy )
   SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]超级大奖出现！！！幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个,恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")
    elseif (playidlistluck==11) then
	itemID=RWitemlucy[math.random(1,#RWitemlucy)]
	Count=math.random(1,RWitemcountLucy )
   SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]超级大奖出现！！！幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个,恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")
	else
		itemID=RWitem[math.random(1,#RWitem)]
	Count=math.random(1,RWitemcount )
   SendWorldMessage("|cffff0000[JSWOW超级幸运星]|r本期幸运数字[:|CFF00FFFF"..playidlistluck.."|r]幸运"..playstaus.."玩家【|CFF00FFFF"..text:GetString(2).."|r】获得了物品"..GetItemLink(itemID).."X|CFF00FFFF"..Count.."|r个恭喜恭喜！！！收到奖励的玩家小退再上即可在邮件查收！！！★★★下一次幸运星奖励将在|r|cffff0000("..TIME.."分钟)|r|cFFF08000后开始.请留意★★★|r")

	end 
	diffTime=os.time()
	  -- 	SendMail("JSWOW幸运星奖励","您的运气天下无敌！祝您玩的愉快！",text:GetString(0),0,61,0,itemID,itemID,Count)
	  	SendMail("JSWOW幸运星奖励",--subject
        "您的运气天下无敌！您在"..diffTime.."获得了奖励物品"..itemID.."X"..Count..",请您查收,祝您玩的愉快！",--text
        text:GetString(0),--receiverGuid
        0,--senderGuid
        61,--stationary 
        0,--delay 
        0,--money 
        0,--cod
        itemID,--entry 
        Count)--amount 
		print('发送给:'..text:GetString(0).. 'itemID:'..itemID.."数量:" ..Count)
	--SendMail('JSWOW幸运星奖励','您的运气天下无敌！祝您玩的愉快！',text:GetString(0),'',61,0,0,0,itemID,Count)
	--SendMail("JSWOW幸运星奖励","您的运气天下无敌！祝您玩的愉快！","371","0",61,1000,0,0,itemID,Count)
	end 
  end
end



RegisterServerEvent(5, luckstar)
