local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true) ---this is showing all the fish player base in pacific pocean, be caref yl you might crash from all the fish

ESP:AddObjectListener(workspace.Characters.fish, {
    Color =  Color3.new(152,255,233), ---pink fish color for the fish esp
    Type = "Model",
    PrimaryPart = function(obj)
        local hrp = obj:FindFirstChildWhichIsA("BasePart")
        while not hrp do
            wait()
            hrp = obj:FindFirstChildWhichIsA("BasePart")
        end
        return hrp
    end,
    Validator = function(obj)
        return not game.Players:GetPlayerFromCharacter(obj)
    end,
    CustomName = function(obj)
        return obj:FindFirstChild("Zombie") and obj.Zombie.Value or obj.Name
    end,
    IsEnabled = "NPCs",
})
--some toggle:
ESP.NPCs = true ---toggle to see the fshing
