loadstring(game:HttpGetAsync("https://guard.lol/scripts/guardnotify.lua"))("https://guard.lol")
local treefound = false
for _,v in game:GetDescendants() do
	if v.Name == "TreeClass" and v.Parent:FindFirstChild("WoodSection") and v.parent:FindFirstChild("Owner") then
		if v.parent:FindFirstChild("Owner").Value == nil then
			if v.Value == "Spooky" or v.Value == "SpookyNeon" then
			game.Players.LocalPlayer.Character:PivotTo(v.Parent:GetPivot())
			guardNotify(
				"Tree Type",
				v.Value,
				5,
				Color3.fromRGB(49, 55, 66),
				Color3.fromRGB(177, 255, 177),
				Color3.fromRGB(178, 255, 190),
				Color3.fromRGB(0, 0, 0),
				"rbxassetid://57254792",
				"Sine"
			)
			treefound = true
			break
		
			end
		end
	end
end
if treefound == false then
	guardNotify(
		"no tree found",
		"join a new server",
		5,
		Color3.fromRGB(49, 55, 66),
		Color3.fromRGB(255, 102, 88),
		Color3.fromRGB(178, 255, 190),
		Color3.fromRGB(0, 0, 0),
		"",
		"Sine"
	)
end
