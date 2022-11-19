local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
    SchemeColor = Color3.fromRGB(0,139,139), --Teal/Dark Cyan
    Background = Color3.fromRGB(24,25,25), --Dim Grey
    Header = Color3.fromRGB(29,31,31), --Light Grey
    TextColor = Color3.fromRGB(255,255,255), --White
    ElementColor = Color3.fromRGB(0,0,0) --4
}
local Window = Library.CreateLib("Azure-X | Version 1.0 | "..game:GetService("Players")["LocalPlayer"].DisplayName, colors)

    --Money
    local Money = Window:NewTab("Money")
    local MoneySection = Money:NewSection("Money Options")
    local plrs = game:GetService("Players")

    MoneySection:NewButton("Give Everyone Money", "Give everyone 100 million", function()
        for i, v in pairs(plrs:GetChildren()) do
	        game:GetService("ReplicatedStorage").MoneyRequest:FireServer(false, 100000000, "Cash", v)
        end
    end)
    MoneySection:NewButton("Give Self Money", "Give yourself 100 million", function()
        local args = {
            [1] = false,
            [2] = 100000000,
            [3] = "Cash"
        }
        
        game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))
    end)
    MoneySection:NewButton("Remove Everyone Money", "Remove 100 million from everyone", function()
        for i, v in pairs(plrs:GetChildren()) do
	        game:GetService("ReplicatedStorage").MoneyRequest:FireServer(false, -100000000, "Cash", v)
        end
    end)
    MoneySection:NewButton("Remove Self Money", "Remove 100 million from yourself", function()
        local args2 = {
            [1] = false,
            [2] = -100000000,
            [3] = "Cash"
        }

        game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args2))
    end)
    

    --Vehicles
    local Vehicles = Window:NewTab("Vehicles")
    local VehiclesSection = Vehicles:NewSection("Vehicles Options")

    VehiclesSection:NewButton("Spawn Jetski", "Spawn a Jetski for free", function()
        game:GetService("ReplicatedStorage").BoatSpawner:InvokeServer("Jetski")
    end)
    VehiclesSection:NewButton("Spawn Dingy", "Spawn a Dinghy for free", function()
        game:GetService("ReplicatedStorage").BoatSpawner:InvokeServer("Dinghy")
    end)
    VehiclesSection:NewButton("Spawn Transport Boat", "Spawn a Transport Boat for free", function()
        game:GetService("ReplicatedStorage").BoatSpawner:InvokeServer("Transport Boat")
    end)

    --Keybinds
    local Keybinds = Window:NewTab("Keybinds")
    local KeybindsSection = Keybinds:NewSection("Keybind Options")

    KeybindsSection:NewKeybind("Open UI", "Opens the GUI", Enum.KeyCode.RightShift, function()
        Library:ToggleUI()
    end)

    --Credits
    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Credits")

    CreditsSection:NewButton("Trixxy#4663", "Made By Trixxy#4663", function()
    end)