function onDeath(cid, corpse, deathList)
	if getPlayerStorageValue(cid, "bless") == 5 then
		setPlayerStorageValue(cid, "bless", 0)
		setPlayerStorageValue(cid, "death_bless", 1)
	end
	return true
end
