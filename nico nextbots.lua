
--[[
████               ████             ████           ████        ██
████         ██████                 ████           ████        ██
████       ██████                   ████           ████        ██
████    ██████                      ████           ████        ██
████████                            ████           ████        ██
████    ██████                      ████           ████        ██
████        ██████                  ████           ████        ██
████            ██████              ████           ████        ██
████                ██████          ████           ████        ██
████                ██████          ███████████████████
████                ██████          ███████████████████        ██
]]

if game.PlaceId == 10118559731 then
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
Title = "Made by:";
Text = "Kurus-Ware"
})
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Nico's Nextbots scrept | Darijus#1071", "Ocean")
local Main = Window:NewTab("LocalPlayer")
local ShitSection = Main:NewSection("Stuff for u")
ShitSection:NewToggle("Unlock(gives god)(for bhop and else)", "just hold shift lol",function(v)
if v then
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
wait(4.85)
pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
else
local old_cf = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
keypress(0x1B) wait()
keyrelease(0x1B) wait()
game:GetService("ReplicatedStorage").events.respawnchar:FireServer()
keypress(0x1B) wait()
keyrelease(0x1B)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Position = old_cf
end
end)
ShitSection:NewButton("Unlock movement", "auughhh", function(v)
for i,v in pairs(game.workspace:GetChildren()) do
if v.Name == game.Players.LocalPlayer.Name then
if v:FindFirstChild('Humanoid') then
v.Humanoid.WalkSpeed = 25.84
v.Humanoid.CameraOffset = Vector3.new(0,0,-1.5)
v.Humanoid.JumpPower = 40
end
end
end
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input,gameProcessedEvent)
if not gameProcessedEvent then
if input.UserInputType == Enum.UserInputType.Keyboard then
if input.KeyCode == Enum.KeyCode.Space then
for i,v in pairs(game.workspace:GetChildren()) do
if v.Name == game.Players.LocalPlayer.Name then
if v:FindFirstChild('Humanoid') then
v.Humanoid.Jump=true
end
end
end
elseif input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.C then
for i,v in pairs(game.workspace:GetChildren()) do
if v.Name == game.Players.LocalPlayer.Name then
if v:FindFirstChild('Humanoid') then
if v.scripts['running'].Value == true then
v.scripts.sliding.Value = true end
end
end
end
end
end
end
end)
end)
ShitSection:NewButton("Bhop (WIP) (wont work)", "work in progress", function(v)
local RS = game:GetService("RunService")
--RS.RenderStepped:Connect(function()
_G.bhp = v
--while _G.bhp do

--keypress(0x20) wait() keyrelease(0x20) wait(1)
--end
end)
ShitSection:NewToggle("AutoRun (won't work if unlocked)", "just hold shift lol",function(v)
local plr = game:GetService('Players').LocalPlayer
_G.Autorun = v
while _G.Autorun do
plr.Character.scripts['running'].Value = true
wait(1)
end
plr.Character.scripts['running'].Value = false
end)
ShitSection:NewButton("Speed ('K'toggle,'-'slower,'='faster)", "Be faster than soneccc",function(s)
loadstring(game:HttpGet(('https://pastebin.com/raw/AfKeddPG'),true))()--https://v3rmillion.net/showthread.php?tid=753373
end)
---------------------------------------------------------------------------
ShitSection:NewSlider("Hip height", "u becom tall", 50, 2, function(s)
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == game.Players.LocalPlayer.Name then
v.Humanoid.HipHeight = s --max 5.5 min 1.6
end end
end)
---------------------------------------------------------------------------
ShitSection:NewSlider("Fov", "zoomie", 120, 1, function(fov)
game.Players.LocalPlayer.PlayerScripts.options.fov.Value = fov
end)
---------------------------------------------------------------------------
ShitSection:NewButton("Infinite jump(won't work if unlocked)", "PRESS ONLY ONCE", function(v) --dont remember thread sorry
    local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';
    _G.JumpHeight = 50;
    function Action(Object, Function) if Object ~= nil then Function(Object); end end
    UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
            Action(Player.Character.Humanoid, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.FreeFall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                    end)
                end
            end)
        end
    end)
end)
local otherstuff = Main:NewSection("Other stuff")
otherstuff:NewButton("Fly (E) (glitchy)", "kill u fest boi", function(v)
loadstring(game:HttpGet("https://raw.githubusercontent.com/LegitH3x0R/Roblox-Scripts/main/AEBypassing/CFrameFly.lua"))()
game.Players.LocalPlayer.Character.Humanoid.Died:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LegitH3x0R/Roblox-Scripts/main/AEBypassing/CFrameFly.lua"))()
end)
end)
otherstuff:NewToggle("Quick respawn after death", "niauuuuuuuuuuuuuuw", function(v)
_G.quickboi = v
while _G.quickboi do
for __,v in pairs(game.Workspace:GetChildren()) do
if v.Name == game.Players.LocalPlayer.Name then
if v:FindFirstChild('Humanoid') then
if v.Humanoid.Health <= 0 then
wait(1)
game:GetService("ReplicatedStorage").events.respawnchar:FireServer()
wait(2)
keypress(0x46) wait() keyrelease(0x46)
end
end
end
end
wait()
end
end)
otherstuff:NewButton("Quick reset (R)", "kill u fest boi", function(v)
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input,gameProcessedEvent)
            if not gameProcessedEvent then
                if input.UserInputType == Enum.UserInputType.Keyboard then
                    if input.KeyCode == Enum.KeyCode.R then
                        keypress(0x1B) wait()
                        keyrelease(0x1B) wait()
                        game:GetService("ReplicatedStorage").events.respawnchar:FireServer()
                        keypress(0x1B) wait()
                        keyrelease(0x1B)
                    end
                end
            else
                local skip
            end
        end)
end)
otherstuff:NewButton("Farm spot(to go back press button under)", "idk bro it teleport u", function(v)
save_CFRAME = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.406494140625, 102.73624420166016, 295.02508544921875)
end)
otherstuff:NewButton("Go back(Farm)", "idk bro it teleport u", function(v)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = save_CFRAME
end)
otherstuff:NewToggle("Autofarm time", "idk", function(v)
_G.autofarm = v
local old_cf = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.406494140625, 102.73624420166016, 295.02508544921875)
while _G.autofarm do
game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(149.20252990722656, 103.04377746582031, 391.72296142578125))
wait(10)
game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(170.00933837890625, 103.04377746582031, 162.31370544433594))
wait(10)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.Position = old_cf
end)
otherstuff:NewToggle("Monster not chase u", "kinda useless", function(v)
player = game.Players.LocalPlayer --https://v3rmillion.net/showthread.php?tid=1179524
if v then
if player.Character.scripts:FindFirstChild('safe') then
local old_cf = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
if not player.Character.scripts.safe.Value == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").spawns.mall.SpawnLocation.CFrame
wait(1)
end
safe = player.Character.scripts.safe
safe.Parent = nil;
wait(0.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.Position = old_cf
end
else
if not player.Character.scripts:FindFirstChild('safe') then
local old_cf = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
keypress(0x1B) wait()
keyrelease(0x1B) wait()
game:GetService("ReplicatedStorage").events.respawnchar:FireServer()
keypress(0x1B) wait()
keyrelease(0x1B)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Position = old_cf
end
end
end)
otherstuff:NewToggle("Auto Flashlight", "kinda useless", function(v)
_G.verynaic = v
while _G.verynaic do
local plr = game:GetService('Players').LocalPlayer
path_to = plr.PlayerGui.engine.flv2.flashlight
path_to.Value = true
wait()
end
game.Players.LocalPlayer.PlayerGui.engine.flv2.flashlight.Value = false
end)
otherstuff:NewToggle("Flickering Flashlight(why would you use this)", "kinda useless", function(v)
_G.flicker = v
local plr = game:GetService('Players').LocalPlayer
while _G.flicker do
plr.PlayerGui.engine.flv2.flashlight.Value = true
wait()
plr.PlayerGui.engine.flv2.flashlight.Value = false
wait()
end
end)
local Main2 = Window:NewTab("Game")
local ShitSection2 = Main2:NewSection("Esp")
ShitSection2:NewToggle("Player ESP", "magic e-s-p hahahe", function(v)
_G.player_esp = v
while _G.player_esp do
wait(0.1)
for __,v in pairs(game.Workspace:GetChildren()) do
for i,b in pairs(game.Players:GetChildren()) do
if b.Name==game.Players.LocalPlayer.Name then local skip else
if b.Name == v.Name then
    --print(v,Name, math.floor(v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)))
    if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end
    local a = Instance.new("BillboardGui",v)
    a.Name = "ESP"
    a.Size = UDim2.new(3,0, 5,0)
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 0.60
    b.BorderSizePixel = 0
    b.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
    local c = Instance.new('TextLabel',b)
    c.Size = UDim2.new(1,1,0,1)
    c.BorderSizePixel = 0
    c.TextSize = 12 
    c.Text = v.Name
    c.BackgroundTransparency = 1
    c.TextColor3 = Color3.fromRGB(255, 255, 255)
    c.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    c.TextStrokeTransparency = 0.7
end
end
end
end
end

for __,v in pairs(game.Workspace:GetChildren()) do
for i,b in pairs(game.Players:GetChildren()) do
if b.Name==game.Players.LocalPlayer.Name then local skip else
if b.Name == v.Name then
if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end 
end
end
end
end
end)



ShitSection2:NewToggle("Friend ESP", "if u have any", function(v)
_G.friend_esp = v
while _G.friend_esp do
for __,v in pairs(game.Workspace:GetChildren()) do
for i,b in pairs(game.Players:GetChildren()) do
if b.Name==game.Players.LocalPlayer.Name then local skip else
if b.Name == v.Name then
if b:IsFriendsWith(game.Players.LocalPlayer.UserId) then
    if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end
    local a = Instance.new("BillboardGui",v)
    a.Name = "ESP"
    a.Size = UDim2.new(3,0, 5,0)
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 0.50
    b.BorderSizePixel = 0
    b.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
    local c = Instance.new('TextLabel',b)
    c.Size = UDim2.new(1,1,0,1)
    c.BorderSizePixel = 0
    c.TextSize = 15 
    c.Text = v.Name
    c.BackgroundTransparency = 1
    c.TextColor3 = Color3.fromRGB(255, 255, 255)
    c.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    c.TextStrokeTransparency = 0.7
end
end
end
end
end
wait(0.1)
end

for __,v in pairs(game.Workspace:GetChildren()) do
for i,b in pairs(game.Players:GetChildren()) do
if b.Name==game.Players.LocalPlayer.Name then local skip else
if b.Name == v.Name then
if b:IsFriendsWith(game.Players.LocalPlayer.UserId) then
if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end 
end
end
end
end
end

end)

ShitSection2:NewToggle("Monster ESP", "magic e-s-p hahahe", function(v)
_G.monster_esp = v
while _G.monster_esp do
local function contains(table, val)
   for i=1,#table do
      if table[i] == val then return true end
   end
   return false
end
for __,v in pairs(game:GetService("Workspace").bots:GetChildren()) do
    if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end
    local a = Instance.new("BillboardGui",v)
    a.Name = "ESP"
    a.Size = UDim2.new(15,0, 13,0)
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 0.50
    b.BorderSizePixel = 0
    b.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    local c = Instance.new('TextLabel',b)
    c.Size = UDim2.new(1,1,0,1)
    c.BorderSizePixel = 2
    c.TextSize = 13
    c.Text = v.Name
    c.BackgroundTransparency = 1
    c.TextColor3 = Color3.fromRGB(255, 255, 255)
    c.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    c.TextStrokeTransparency = 0.1
end
wait(0.1)
end
for __,v in pairs(game:GetService("Workspace").bots:GetChildren()) do
if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end end
end)

ShitSection2:NewToggle("PowerBox ESP", "magic e-s-p hahahe", function(v)
_G.power_esp = v
while _G.power_esp do
local function contains(table, val)
   for i=1,#table do
      if table[i] == val then return true end
   end
   return false
end
for __,v in pairs(game:GetService("Workspace").PowerBox:GetChildren()) do
    if v:FindFirstChild('Highlight') then
    if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end
    local a = Instance.new("BillboardGui",v)
    a.Name = "ESP"
    a.Size = UDim2.new(2.7,0, 6.5,0)
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 0.50
    b.BorderSizePixel = 0
    b.BackgroundColor3 = Color3.fromRGB(90,80,255)
    local c = Instance.new('TextLabel',b)
    c.Size = UDim2.new(1,1,0,1)
    c.BorderSizePixel = 2
    c.TextSize = 8
    c.Text = v.Name
    c.BackgroundTransparency = 1
    c.TextColor3 = Color3.fromRGB(255,255,0)
    c.TextStrokeColor3 = Color3.fromRGB(73,78,234)
    c.TextStrokeTransparency = 0.1
end
end
wait(0.1)
end
for __,v in pairs(game:GetService("Workspace").PowerBox:GetChildren()) do
if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end end
end)
--[[ dont look here
sukanikadig
]]
local GameSection2 = Main2:NewSection("Delete stuff and other")
GameSection2:NewButton("Delete doors", "magic hahahe", function(v)
game:GetService("Workspace").doors:Destroy() 
game:GetService("Workspace").junk:Destroy()
end)
GameSection2:NewButton("Delete garage doors", "magic hahahe", function(v)
for i,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == 'garage' then
    v:Destroy()
end end end)
GameSection2:NewButton("Lower graphics", "if u run on a potato", function(v)
for i,v in pairs(game.workspace:GetDescendants()) do
if v.ClassName == 'Part' then v.Material = 'SmoothPlastic'
end
end
end)
GameSection2:NewToggle("Lights (for scawwy gameplay)", "turn on or off electricity", function(light)
_G.LIGHT = light
num = 0
while _G.LIGHT do
if num == 0 then
game:GetService("Workspace").ambience.BlackoutEnd.Playing = true
game:GetService("Workspace").ambience.BlackoutAmbience.Playing = false
game:GetService("Workspace").ambience.BlackoutJingle.Playing = true
game.Players.LocalPlayer.PlayerGui.engine.flv2.flashlight.Value = false
end
num = num + 1
wait(0.1)
--[[
if v.Name == 'light' and v:FindFirstChild('SurfaceGui') then
v.Enabled = true
elseif v.Name == 'ceiling_light' then
for __,c in pairs(v.light:GetChildren()) do
c.Material = 'Neon' 
end
else]]
for i,v in pairs(game.Workspace:GetDescendants()) do
if  v.Name == 'PointLight' then
v.Enabled = true
end  
end
end
while not _G.LIGHT do
if num == 0 then
game:GetService("Workspace").ambience.Blackout.Playing = true
game:GetService("Workspace").ambience.BlackoutAmbience.Playing = true
game:GetService("Workspace").ambience.BlackoutJingle.Playing = false
game.Players.LocalPlayer.PlayerGui.engine.flv2.flashlight.Value = true
end
num = num + 1
wait(0.1)
for i,v in pairs(game.Workspace:GetDescendants()) do
--[[
if v.Name == 'light' and v:FindFirstChild('SurfaceGui') then
v.Enabled = false
elseif v.Name == 'ceiling_light' then
for __,c in pairs(v.light:GetChildren()) do
c.Material = 'SmoothPlastic'
end
else]]if  v.Name == 'PointLight' then
v.Enabled = false
end  
end
end
end)
GameSection2:NewToggle("FullBright", "magic hahahe", function(v)--https://v3rmillion.net/showthread.php?tid=886276
if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled end)
GameSection2:NewButton("Infinite yield", "magic hahahe", function(v)
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
local Main3 = Window:NewTab("Info")
local ShitSection3 = Main3:NewSection("Made by Kurus-Ware")
local ShitSection3 = Main3:NewSection("Latest update: 7/10/2022")
local ShitSection3 = Main3:NewSection("Update: Not")
local number = math.random(1,15)
if number == math.random(1,15) or number == math.random(1,15) then
warn('---------------------------------------------------------------------------------------------')
warn('your number is: '..number..' so you get to access the cursed tab C:')
warn('---------------------------------------------------------------------------------------------')
local Main4 = Window:NewTab("Cursed")
local cursed = Main4:NewSection('DO NOT USE (I am not responsible for your actions)')
cursed:NewButton('B̷͇̈́̇̚͝ă̷̧̳͍̘̌́n̸͒̑͑̂̐͜ ̸̟͚̉Ý̷̢̗̖͕̩̒͝o̵̻̳͍͑̅ụ̵̡̥̀͘r̸̩͚̒s̵͕̪̲̀̎͝è̶̡͙͚̀͆l̵͕̬̩̿͐̃f̷̟̾̎̂','uhhhhhh idk', function(v)
game:GetService("ReplicatedStorage").events.ban:FireServer()
end)
else
print('--------------------------------------------------------------------------------------------------------------')
print('Script - your number is: '..number..', better luck next time C:')
print('--------------------------------------------------------------------------------------------------------------')
end
