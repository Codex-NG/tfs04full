function isInvited(houseId, playerName)
	if(string.find(string.lower(getHouseAccessList(houseId, 0x100)), playerName) or string.find(string.lower(getHouseAccessList(houseId, 0x101)), playerName)) then
		return true
	end

	return false
end

function onMoveItem(cid, item, count, toContainer, fromContainer, fromPos, toPos)
	if((getPlayerGroupId(cid) < 6) and (getTileInfo(toPos).house) and (getHouseOwner(getHouseFromPos(toPos)) ~= getPlayerGUID(cid)) and (not isInvited(getHouseFromPos(toPos), string.lower(getCreatureName(cid))))) then
		doPlayerSendCancel(cid, "You cannot throw there.")
	else
		return true
	end
end
