function onDeath(cid, corpse, deathList)
	if getPlayerStorageValue(cid, "bless") == 5 then
		setPlayerStorageValue(cid, "bless", 0)
		setPlayerStorageValue(cid, "death_bless", 1)
		if(getCreatureSkullType ~= SKULL_RED and getCreatureSkullType ~= SKULL_BLACK) then
			doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, 60)
			doPlayerSetLossPercent(cid, PLAYERLOSS_SKILLS, 60)
			doPlayerSetLossPercent(cid, PLAYERLOSS_ITEMS, 0)
			doPlayerSetLossPercent(cid, PLAYERLOSS_CONTAINERS, 0)
		end
	end
	return true
end
