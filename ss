local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Booga Hub", "BloodTheme")

local Tab = Window:NewTab("Combat")

local Section = Tab:NewSection("Combat")

Section:NewToggle("Show HitBox", "You will be able to see your enemy's hitbox", function(state)
    if state then
        print("Toggle On")
        _G.HeadSize = 10
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("White")
v.Character.HumanoidRootPart.Material = "Block"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
    else
        print("Toggle Off")
        _G.HeadSize = 1
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("White")
v.Character.HumanoidRootPart.Material = "Block"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
    end
end)

Section:NewSlider("Jump Power", "You can Jump power", 250, 50, function(b) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = b
end)

Section:NewSlider("WalkSpeed", "You run more fast", 18, 16, function(a)
    local function PYLMV_fake_script() -- Walkspeed.LocalScript 
        local script = Instance.new('LocalScript', Walkspeed)
    
        local plr = game.Players.LocalPlayer
        local box = script.Parent
    
        while true do wait()
            plr.Character.Humanoid.WalkSpeed = a
        end
    end
    coroutine.wrap(PYLMV_fake_script)()
    local function FFTA_fake_script() -- Walkspeed.LocalScript 
        local script = Instance.new('LocalScript', Walkspeed)
    
        local textBox = script.Parent
        function PositiveIntegerMask(text)
            return text:gsub("%D+", "")
        end
    
        a:GetPropertyChangedSignal("Text"):Connect(function()     -- Replace the text with the formatted text:     
            a = PositiveIntegerMask(a) 
        end)
    end
end)

Section:NewSlider("Hip Height", ".....", 100, 2, function(c) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = c
end)

local Tab = Window:NewTab("TPS")

local Section = Tab:NewSection("Arenas")

Section:NewButton("Arena 1", "Rare Map", function()
    print("Clicked")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(75, -111, -465)
end)

Section:NewButton("Arena 2", "Rare Map", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121, -102, -248)
end)

Section:NewButton("Arena 3", "Rare Map", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19, -108, -326)
end)

Section:NewButton("Arena 4", "Rare Map", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, -113, -253)
end)

Section:NewButton("Under Old God", "You can farm", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1115, -109, -689)
	game:GetService("Workspace").TpBack.TopOfWhiteAntArea:Destroy()
	game:GetService("Workspace").Terrain:Destroy()
end)

Section:NewButton("Under Volcano", "You can farm", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1132, -78, 1199)
	game:GetService("Workspace").TpBack.TopOfLavaArea:Destroy()
end)

Section:NewButton("Under Old God 2", "You can farm", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1112, -18, -992)
end)

Section:NewButton("Under Volcano 2", "You can farm", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1144, 4, 1252)
end)

local Tab = Window:NewTab("Craft")

local Section = Tab:NewSection("Craft And Equip")

Section:NewButton("God Rock", "Tool OP", function()
    print("Clicked")
	local item = "God Rock"
	game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(item)
end)

Section:NewButton("God Armor", "Armor OP", function()
    print("Clicked")
	local item = "God Halo"
	game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(item)
	local item = "God Legs"
	game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(item)
	local item = "God Chestplate"
	game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(item)
	wait(1)
	local item = "God Halo"
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(item)
	local item = "God Legs"
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(item)
	local item = "God Chestplate"
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(item)
end)

Section:NewButton("Void Armor", "Armor OP", function()
    print("Clicked")
	local item = "Void Shroud"
	game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(item)
	local item = "Void Legs"
	game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(item)
	local item = "Void Chestplate"
	game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(item)
	wait(1)
	local item = "Void Shroud"
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(item)
	local item = "Void Legs"
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(item)
	local item = "Void Chestplate"
	game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(item)
end)

local Tab = Window:NewTab("Misc")

local Section = Tab:NewSection("Misc")

Section:NewToggle("Show Hair", "You can change Hair/Faces/Skins", function(state)
    if state then
        print("Toggle On")
        game:GetService("Players").LocalPlayer.PlayerGui.SpawnGui.Enabled = true
    else
        print("Toggle Off")
        game:GetService("Players").LocalPlayer.PlayerGui.SpawnGui.Enabled = false
    end
end)

Section:NewButton("Inf Jump", "You can jump infinite times", function()
    print("Clicked")
    local InfiniteJumpEnabled = true
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJumpEnabled then
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
	end) end)

    Section:NewButton("Invisible", "You will become invisible, but they will see your name", function()
        print("Clicked")
        game.Players.LocalPlayer.Character.LowerTorso:Destroy()
    end)

    Section:NewButton("Armor Invisible", "Your armor will become invisible", function()
        print("Clicked")
        game.Players.LocalPlayer.Character["God Legs Right Leg"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Legs Right Leg"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Legs Left Leg"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Legs Left Leg"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Legs Right Foot"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Legs Left Foot"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Right Shoulder"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Left Shoulder"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Chestplate"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Halo"].Handle.AccessoryWeld:Destroy()
    end)

    Section:NewButton("Armor Bugged", "You can have an armor crazy", function()
        print("Clicked")
        game.Players.LocalPlayer.Character["God Chestplate"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Halo"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Legs Right Leg"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Legs Left Leg"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Legs Right Leg"].Handle.AccessoryWeld:Destroy()
        game.Players.LocalPlayer.Character["God Legs Left Leg"].Handle.AccessoryWeld:Destroy()
    end)

    Section:NewButton("PickUp", "Grab items faster", function()
        print("Clicked")
        
	local Players = game:GetService("Players")
	local Lp = Players.LocalPlayer
	local Char = Lp.Character
	local Root = Char.HumanoidRootPart
	local uis = game:GetService'UserInputService'

	--local PickupKey = "G"

	local Load;
	local Pick = function(Character)
		local Pos = Root.Position
		local Load = {}

		for i,v in pairs(workspace:GetChildren()) do
			if v:FindFirstChild("Pickup") ~= nil and v.ClassName == "Part" or v.ClassName == "UnionOperation" then
				local Object = v.Position
				local Mag = (Pos - Object).Magnitude

				if Mag < 50 then
					table.insert(Load, v)
				end
			end
		end
		for i,v in pairs(Load) do
			for i=1,10 do
				v.Position = Pos
				game:GetService'ReplicatedStorage'.Events.Pickup:FireServer(v)
			end
		end
	end
	wait(0.5)

	uis.InputBegan:Connect(function(Key)
		if uis:GetFocusedTextBox() then return end
		if Key.KeyCode == Enum.KeyCode.G then -- Enum.KeyCode[PickupKey] for certain Key!
			Pick(Char)
		end
	end)
    end)

    Section:NewButton("Ctrl Delete", "Works to get through walls", function()
        print("Clicked")
        local Plr = game:GetService("Players").LocalPlayer
        local Mouse = Plr:GetMouse()
    
        Mouse.Button1Down:connect(function()
            if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
            if not Mouse.Target then return end
            Mouse.Target:Destroy()
        end)
    end)

    Section:NewButton("Shaders", "Nice!", function()
        print("Clicked")
        local light = game.Lighting
        for i, v in pairs(light:GetChildren()) do
            v:Destroy()
        end
    
        local ter = workspace.Terrain
        local color = Instance.new("ColorCorrectionEffect")
        local bloom = Instance.new("BloomEffect")
        local sun = Instance.new("SunRaysEffect")
        local blur = Instance.new("BlurEffect")
    
        color.Parent = light
        bloom.Parent = light
        sun.Parent = light
        blur.Parent = light
    
    
        local config = {
    
            Terrain = true;
            ColorCorrection = true;
            Sun = true;
            Lighting = true;
            BloomEffect = true;
    
        }
    
    
        color.Enabled = true
        color.Contrast = 0.15
        color.Brightness = 0.1
        color.Saturation = 0.2
        color.TintColor = Color3.fromRGB(255, 222, 211)
    
        bloom.Enabled = true
        bloom.Intensity = 0.3
    
        sun.Enabled = true
        sun.Intensity = 1
        sun.Spread = 5
    
        bloom.Enabled = true
        bloom.Intensity = 0.05
        bloom.Size = 32
        bloom.Threshold = 1
    
        blur.Enabled = true
        blur.Size = 2
    
    
    
        if config.ColorCorrection then
            color.Enabled = true
        end
    
    
        if config.Sun then
            sun.Enabled = true
        end
    
    
        if config.Terrain then
            ter.WaterColor = Color3.fromRGB(10, 10, 24)
            ter.WaterWaveSize = 0.1
            ter.WaterWaveSpeed = 22
            ter.WaterTransparency = 0.9
            ter.WaterReflectance = 0.05
        end
    
    
        if config.Lighting then
            light.Ambient = Color3.fromRGB(120, 31, 42)
            light.Brightness = 3.5
            light.ColorShift_Bottom = Color3.fromRGB(12, 31, 42)
            light.ColorShift_Top = Color3.fromRGB(12, 31, 42)
            light.ExposureCompensation = 0
            light.FogColor = Color3.fromRGB(132, 132, 132)
            light.GlobalShadows = true
            light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
            light.Outlines = true
        end
    end)

    Section:NewButton("No Legs", "Your arms will become invisible", function()
        print("Clicked")
        game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
        game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
    end)

    Section:NewButton("No Arms", "Your legs will become invisible", function()
        print("Clicked")
        game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
        game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
    end)

    local Tab = Window:NewTab("Guis")

    local Section = Tab:NewSection("OP Guis")

    Section:NewButton("Infinite Yield", "Admin Commands", function()
        print("Clicked")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
    end)

    Section:NewButton("Shite", "Rare Script", function()
        print("Clicked")
        loadstring(game:HttpGet("https://pastebin.com/raw/52E1cvWV", true))()
    end)

    Section:NewButton("Loss Hub", "Script Booga 2019", function()
        print("Clicked")
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/lololboogahacker/loss-hub/main/VAMPTHEGODLEAKER.txt'),true))()
    end)

    Section:NewButton("EzP Gui Beta", "My First Gui", function()
        print("Clicked")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzPWinning/EzPWinning/main/BoogaScript2019c", true))()
    end)

    Section:NewButton("Farewell", "Gui", function()
        print("Clicked")
        loadstring(game:HttpGet("https://pastebin.com/raw/AZPFGAMD", true))()
    end)

    Section:NewButton("Reviz Admin", "Admin Commands", function()
        print("Clicked")
        loadstring(game:HttpGet("https://pastebin.com/raw/8zh7FiHv"))()
    end)

    local Tab = Window:NewTab("Dupe")

    local Section = Tab:NewSection("New Dupe Method")

    Section:NewToggle("Trade Button", "It will give you a gui button", function(state)
        if state then
            print("Toggle On")
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Panels.Card.List.Market.Visible = true
        else
            print("Toggle Off")
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Panels.Card.List.Market.Visible = false
        end
    end)
    
    Section:NewToggle("Trade Gui", "You can dupe", function(state)
        if state then
            print("Toggle On")
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.LeftPanel.Market.Visible = true
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.RightPanel.Market.Visible = true
        else
            print("Toggle Off")
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.LeftPanel.Market.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.RightPanel.Market.Visible = false
        end
    end)
