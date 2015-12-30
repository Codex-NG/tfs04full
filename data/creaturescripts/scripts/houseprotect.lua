function onMoveItem(moveItem, frompos, position, cid)
	if((getPlayerGroupId(cid) < 6) and (getTileInfo(position).house) and (getHouseOwner(getHouseFromPos(position)) ~= getPlayerGUID(cid)) and (not isInvited(getHouseFromPos(position), string.lower(getCreatureName(cid))))) then
		doPlayerSendCancel(cid, "You cannot throw there.")
	else
		return true
	end
end
