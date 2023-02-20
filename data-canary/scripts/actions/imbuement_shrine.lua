local imbuement = Action()

function imbuement.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if configManager.getBoolean(configKeys.TOGGLE_IMBUEMENT_SHRINE_STORAGE) and player:getStorageValue(Storage.Imbuement) ~= 1 then
		return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You did not collect enough knowledge from the ancient Shapers. Visit the Shaper temple in Montag for help.")
	end

	player:openImbuementWindow(target)
	return true
end

imbuement:id(25060, 25061, 25103, 25104, 25202, 25174, 25175, 25182, 25183)
imbuement:register()
