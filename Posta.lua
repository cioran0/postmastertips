local places = {
	["Broken Isles"] = {
		"Azurewing Repose",
		"Bradensbrook",
		"Deliverance Point",
		"Greywatch",
		"Lorlathil",
		"Meredil",
		"Shackle's Den",
		"Skyhorn",
		"Thunder Totem",
		"Valdisdall"
	},

	["Eastern Kindoms"] = {
		"Aerie Peak",
		"Booty Bay",
		"Brill",
		"Goldshire",
		"Kharanos",
		"Menethil Harbor",
		"Sentinel Hill",
		"Stonard",
		"Tarren Mill",
		"Tranquillen"
	},
	["Kalimdor"] = {
		"Astranaar",
		"Everlook",
		"Feathermoon Stronghold",
		"Gadgetzan",
		"Lor'danel",
		"Nighthaven",
		"Nordrassil",
		"Ramkahen",
		"The Crossroads",
		"Whisperwind Grove",
	},
	["Northrend"] = {
		"Camp Oneqwah",
		"Conquest hold",
		"Frosthold",
		"Kamagua",
		"Moa'Kai Harbour",
		"Nessingwary Base Camp",
		"The Argent Stand",
		"Valiance keep",
		"Warsong Hold",
		"Wyrmrest Temple",
	},
	["Outland"] = {
		"Allerian Stronghold",
		"Altar of Sha'tar",
		"Area 52",
		"Cenarion ",
		"Cosmowrench",
		"Garadar",
		"Honor Hold",
		"Sylvanaar",
		"Thrallmar",
		"Zabra'jin",
	},
	["Pandaria"] = {
		"Dawn's Blossom",
		"Halfhill",
		"Klaxxi'vess",
		"Lion's Landing",
		"Longying Outpost",
		"One Keg",
		"Soggy's Gamble",
		"Thunder Cleft",
		"Tian Monastery",
		"Zouchin Village",
	}
}

	local header1 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	header1:SetFont("Fonts\\FRIZQT__.TTF", 20)
	header1:SetPoint("CENTER",-400,-50)
	local header2 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	header2:SetFont("Fonts\\FRIZQT__.TTF", 20)
	header2:SetPoint("CENTER", -250, -50)
	local header3 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	header3:SetFont("Fonts\\FRIZQT__.TTF", 20)
	header3:SetPoint("CENTER", -100, -50)
	local header4 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	header4:SetFont("Fonts\\FRIZQT__.TTF", 20)
	header4:SetPoint("CENTER", 50, -50)
	local header5 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	header5:SetFont("Fonts\\FRIZQT__.TTF", 20)
	header5:SetPoint("CENTER", 200, -50)
	local header6 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	header6:SetFont("Fonts\\FRIZQT__.TTF", 20)
	header6:SetPoint("CENTER", 350, -50)

	local text1 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	text1:SetPoint("CENTER",-400,-130)
	local text2 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	text2:SetPoint("CENTER", -250, -130)
	local text3 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	text3:SetPoint("CENTER", -100, -130)
	local text4 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	text4:SetPoint("CENTER", 50, -130)
	local text5 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	text5:SetPoint("CENTER", 200, -130)
	local text6 = UIParent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	text6:SetPoint("CENTER", 350, -130)

	
	
	local zoneName = ""
--Frame necessary for eventhandler
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("ZONE_CHANGED_INDOORS")
EventFrame:SetScript("OnEvent", function(self, event, ...)

	if(event == "ZONE_CHANGED_INDOORS") then
		zoneName = GetSubZoneText();
		--print("Inside Loop ", zoneName)
		if  (zoneName == "The Postmaster's Office") then
			header1:SetText("Kalimdor")
			header2:SetText("Eastern Kingdoms")
			header3:SetText("Outland")
			header4:SetText("Northrend")
			header5:SetText("Pandaria")
			header6:SetText("Broken Isles")

			text1:SetText(table.concat(places["Kalimdor"],"\n"))
			text2:SetText(table.concat(places["Eastern Kindoms"],"\n"))
			text3:SetText(table.concat(places["Outland"],"\n"))
			text4:SetText(table.concat(places["Northrend"],"\n"))
			text5:SetText(table.concat(places["Pandaria"],"\n"))
			text6:SetText(table.concat(places["Broken Isles"],"\n"))
			zoneName =""
		else
				zoneName = GetSubZoneText();
				--print("else Loop ", zoneName)print("not the x dont display stuff", zoneName)
				zoneName = ""
				--get rid of the text on-screen
				text1:SetText("")
				text2:SetText("")
				text3:SetText("")
				text4:SetText("")
				text5:SetText("")
				text6:SetText("")

				header1:SetText("")
				header2:SetText("")
				header3:SetText("")
				header4:SetText("")
				header5:SetText("")
				header6:SetText("")
		end
	end
end)
--End 1st eventframe	

--begin 2nd
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("ZONE_CHANGED")
EventFrame:SetScript("OnEvent", function(self, event, ...)
	if(event == "ZONE_CHANGED") then
		if  (zoneName ~= "The Postmaster's Office") then
			zoneName = ""
			--get rid of the text on-screen
			text1:SetText("")
			text2:SetText("")
			text3:SetText("")
			text4:SetText("")
			text5:SetText("")
			text6:SetText("")

			header1:SetText("")
			header2:SetText("")
			header3:SetText("")
			header4:SetText("")
			header5:SetText("")
			header6:SetText("")
		end
	end
end)
