function onSay(cid, words, param)
	local price = 50000

	if(getPlayerStorageValue(cid, "bless") < 0) then
		setPlayerStorageValue(cid, "bless", 0)
	elseif(getPlayerStorageValue(cid, "bless") == 5) then
		return doPlayerSendCancel(cid, "You have already been blessed.")
	elseif(getPlayerMoney(cid) < price) then
		return doPlayerSendCancel(cid, "You need " .. price .. "gps.")
	end

	setPlayerStorageValue(cid, "bless", 5)
	doPlayerRemoveMoney(cid, price)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have been blessed by the gods!")
	doSendMagicEffect(getPlayerPosition(cid), CONST_ME_HOLYAREA)
	doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FIREWORK_YELLOW)
	return true
end
