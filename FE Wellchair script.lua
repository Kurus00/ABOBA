--dont change "local script = rbx 818228
--itll break
--if stolen this script will never work again

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Melon's (FE) Scripts";
	Text = "Loading, enjoy!";
	Icon = "rbxthumb://type=Asset&id=7969699183&w=150&h=150"})
Duration = 16;
wait(0) 
Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,30,0)
wait(0.5)
end)
end
end

local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
for i,v in pairs (char:GetChildren()) do
	if v:IsA("Accessory") then
		v.Handle.Massless = true
		v.Handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
	end
end
hed.Massless = true
hed.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
torso.Massless = true
torso.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
rarm.Massless = true
rarm.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
larm.Massless = true
larm.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
lleg.Massless = true
lleg.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
rleg.Massless = true
rleg.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
root.Massless = true
root.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
warn("Netless Activated!")
Bypass = "Death"
plr = game.Players.LocalPlayer
dead = false
char = plr.Character



bullet = workspace[plr.Name]["HumanoidRootPart"]
bullet.Transparency = 1
bhandle = bullet
bullet.Massless = true

mouse = plr:GetMouse()
head = char.Head
camera = workspace.CurrentCamera
lt = true
ltt = false

local function IsFirstPerson()
     return (head.CFrame.p - camera.CFrame.p).Magnitude < 1
end

     bbv = Instance.new("BodyPosition",bhandle)
     bbv.Position = char.Torso.CFrame.p
   
     
     
     mouse.Button1Down:Connect(function()
         if dead == false then
        lt = false
        ltt = false
     bbav = Instance.new("BodyAngularVelocity",bhandle)
     bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
     bbav.P = 1000000000000000000000000000
     bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)
     game:GetService("Debris"):AddItem(bbav,0.1)
        if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) then
            if mouse.Target.Parent.Name == char.Name or mouse.Target.Parent.Name == "non" then return end
              --repeat 
            game:GetService("RunService").RenderStepped:Wait()
            bbv.Position = (CFrame.new(mouse.Target.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            bhandle.Position = (CFrame.new(mouse.Target.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            wait(1)
            --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        elseif game.Players:GetPlayerFromCharacter(mouse.Target.Parent.Parent) then
            if mouse.Target.Parent.Name == char.Name or mouse.Target.Parent.Name == "non" then return end
            --repeat 
            game:GetService("RunService").RenderStepped:Wait()
            bbv.Position = (CFrame.new(mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            bhandle.Position = (CFrame.new(mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            wait(1)
            --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
            
            else
       -- repeat 
        game:GetService("RunService").RenderStepped:Wait()
        wait(1)
        --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        end
        wait()
        lt = true
         end
         end)
         
    spawn(
        function()
            while true do
                game:GetService("RunService").Heartbeat:Wait()
                bullet.Velocity = Vector3.new(0,26,0)
         end
    end)

 plr:GetMouse().Button1Down:Connect(function()
attackingwithhrp = true	
end)

 
plr:GetMouse().Button1Up:Connect(function()
attackingwithhrp = false
end)

plr:GetMouse().Button1Down:Connect(function()
repeat wait() until attackingwithhrp == true
repeat
game:GetService("RunService").Heartbeat:Wait()
if plr:GetMouse().Target ~= nil then
bullet.Position = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
end
until attackingwithhrp == false
end)

local script = game:GetObjects("rbxassetid://9922792697")[1]
--// SHORTCUTS \\--
local S =setmetatable({},{__index=function(s,i)local serv = select(2,pcall(game.GetService,game,i))if(serv)then rawset(s,i,serv) return serv end end})
local RNG = (function()
	local R=Random.new()
	return function(min,max,intOrDivider)
		local min=min or 0
		local max=max or 1
		
		if(typeof(intOrDivider)=='number')then
			return R:NextInteger(min,max)/intOrDivider
		else
			if(intOrDivider)then
				return R:NextInteger(min,max)
			else
				return R:NextNumber(min,max)
			end
		end
	end
end)()

local M = {R=math.rad;RNG=RNG;RRNG=function(...)return math.rad(RNG(...))end;P=math.pi;C=math.clamp;S=math.sin;C=math.cos;T=math.tan;AS=math.asin;AC=math.acos;AT=math.atan;D=math.deg;H=math.huge;}
local CF = {N=CFrame.new;A=CFrame.Angles;fEA=CFrame.fromEulerAnglesXYZ;}
local C3 = {N=Color3.new;RGB=Color3.fromRGB;HSV=function(...)local data={...}if(typeof(data[1])=='Color3')then return Color3.toHSV(...)else return Color3.fromHSV(...)end;end;}
local V3 = {N=Vector3.new};
local IN = Instance.new;
local R3 = Region3.new

 
-- Initialization --

local Plr = game:service'Players'.localPlayer;
local PlrGui = Plr:FindFirstChildOfClass'PlayerGui'
local Char = Workspace.non;
local Hum = Char:FindFirstChildOfClass'Humanoid'
assert(Hum and Hum.RigType==Enum.HumanoidRigType.R6,"You need to have a Humanoid and be R6.")
local RArm = Char:WaitForChild'Right Arm'
local LArm = Char:WaitForChild'Left Arm'
local Torso = Char:WaitForChild'Torso'
local RLeg = Char:WaitForChild'Right Leg'
local LLeg = Char:WaitForChild'Left Leg'
local Head = Char:WaitForChild'Head'
local Root = Char:WaitForChild'HumanoidRootPart'
local Flange = script:WaitForChild'FlangeSoundEffect'
local NeutralAnims = true;
local Attack = false;
local DmgLabel = script:WaitForChild'DMGPart'
local CritStars =script:WaitForChild'Crit'
local Mouse = Plr:GetMouse()
local EffectFolder=Instance.new("Folder")
EffectFolder.Name='Effects'
EffectFolder.Parent=Char
local FXFolder = script:WaitForChild'Effects'
FXFolder.Parent=nil
local Joints = {}
local Sine = 0
local Change = 1

local baseSound = IN("Sound")
function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = baseSound:Clone()
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			Sound:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent =parent or workspace
	return Sound
end
function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = IN("Part")
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.CanCollide = cancollide or false
	part.Anchored = anchored or false
	part.Parent = parent
	return part
end

function Weld(part0,part1,c0,c1)
	local weld = IN("Weld")
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0 or CF.N()
	weld.C1 = c1 or CF.N()
	weld.Parent = part0
	return weld
end

function Mesh(parent,meshtype,meshid,textid,scale,offset)
	local part = IN("SpecialMesh")
	part.MeshId = meshid or ""
	part.TextureId = textid or ""
	part.Scale = scale or V3.N(1,1,1)
	part.Offset = offset or V3.N(0,0,0)
	part.MeshType = meshtype or Enum.MeshType.Sphere
	part.Parent = parent
	return part
end

function SoundPart(id,pitch,volume,looped,effect,autoPlay,cf)
	local soundPart = Part(EffectFolder,C3.N(1,1,1),Enum.Material.SmoothPlastic,V3.N(.05,.05,.05),cf,true,false)
	soundPart.Transparency=1
	local Sound = IN("Sound")
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			soundPart:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent = soundPart
	return Sound
end

function Joint(name,part0,part1,c0,c1,type)
	local joint = IN(type or "Motor6D")
	joint.Part0 = part0
	joint.Part1 = part1
	joint.C0 = c0 or CF.N()
	joint.C1 = c1 or CF.N()
	joint.Parent=part0
	joint.Name=name or part0.." to "..part1.." "..joint.ClassName
	return joint
end

function NewInstance(instance,parent,properties)if(properties.Parent)then properties.Parent=parent end;local new = IN(instance)if(properties)then for prop,val in next, properties do pcall(function() new[prop]=val end)end;end;new.Parent=parent;return new;end

-- Customization --
local DamageColor = Color3.new(1,0,0)
local WalkSpeed = 16
local MusicData = {ID=526867175;Pitch=1;Volume=1;}

-- Joints and Manipulation --
local Chair = script:WaitForChild'Chair'
Chair.Parent=Char
local Seat = Chair.PrimaryPart
local ChairMoving = Seat:WaitForChild'Sound'

for _,v in next, Chair:children() do if(v:IsA'BasePart')then v.Anchored=false end end

function GetJoint(joint)
	for i,v in next, Joints do
		if(i==joint or v.J==joint)then
			return v,i;
		end
	end	
	return nil;
end

function Animate(joint,c0,alpha,style,dir)
	local joint = typeof(joint)=='string' and Joints[joint].J or typeof(joint)=='table' and joint.J or typeof(joint)=='Instance' and joint or error("lol animate needs a string, table or instance")
	if(style=='Lerp')then
		joint.C0 = joint.C0:lerp(c0,alpha)
	else
		local info = TweenInfo.new(alpha or 1,style or Enum.EasingStyle.Linear,dir or Enum.EasingDirection.Out,0,false,0)
		local tween = S.TweenService:Create(joint,info,{C0=c0})
		tween:Play();
		return tween;
	end
end

Joints['RJ'] = Joint("RootJoint",Root,Torso,CF.N(),CF.N())
Joints['NK'] = Joint("Neck",Torso,Head,CF.N(0,1.5,0),CF.N())
Joints['LS'] = Joint("Left Shoulder",Torso,LArm,CF.N(-1.5,.5,0),CF.N(0,.5,0))
Joints['RS'] = Joint("Right Shoulder",Torso,RArm,CF.N(1.5,.5,0),CF.N(0,.5,0))
Joints['LH'] = Joint("Left Hip",Torso,LLeg,CF.N(-.5,-2,0),CF.N(0,0,0))
Joints['RH'] = Joint("Right Hip",Torso,RLeg,CF.N(.5,-2,0),CF.N(0,0,0))
Joints['CW'] = Joint("ChairWeld",Torso,Seat)

for i,v in next, Joints do Joints[i]={J=v,D={C0=v.C0,C1=v.C1}} end


-- Artificial Heartbeat --
local AHB = Instance.new("BindableEvent")
do
	local Timeframe = 0;
	local LastFrame= 0;
	
	local FPS = 60
	AHB:Fire()
	
	game:GetService("RunService").Heartbeat:connect(function(s, p)
		Timeframe = Timeframe + s
		if(Timeframe >= 1/FPS)then
			for i = 1, math.floor(Timeframe/(1/FPS)) do
				AHB:Fire()
			end
			LastFrame = tick()
			Timeframe = Timeframe - (1/FPS) * math.floor(Timeframe / (1/FPS))
		end
	end)
end

function fwait(Frames)
	for i = 1,((typeof(Frames)~='number' or Frames<=0) and 1)do
		AHB.Event:wait()
	end
end

-- Stop Animations --
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')
-- Effect Functions --

local fromaxisangle = function(x, y, z) -- credit to phantom forces devs
	if not y then
		x, y, z = x.x, x.y, x.z
	end
	local m = (x * x + y * y + z * z) ^ 0.5
	if m > 1.0E-5 then
		local si = math.sin(m / 2) / m
		return CFrame.new(0, 0, 0, si * x, si * y, si * z, math.cos(m / 2))
	else
		return CFrame.new()
	end
end

function fakePhysics(elapsed,cframe,velocity,rotation,acceleration)
	local pos = cframe.p
	local matrix = cframe-pos
	return fromaxisangle(elapsed*rotation)*matrix+pos+elapsed*velocity+elapsed*elapsed*acceleration
end

function CamshakePlayer(p,settings)
	local sh = script:WaitForChild'CamShake':Clone()	
	local optionFolder = sh:WaitForChild'Options'
	for _,v in next, optionFolder:children() do
		if(settings[v.Name])then
			v.Value=settings[v.Name]
		end
	end
	local originVal;
	if(typeof(settings.Origin)=='Vector3')then
		originVal=IN("Vector3Value")
	elseif(typeof(settings.Origin)=='CFrame')then
		originVal=IN("CFrameValue")
	elseif(typeof(settings.Origin)=='Instance')then
		originVal=IN("ObjectValue")
	end
	if(originVal)then
		originVal.Name = 'Origin'
		originVal.Value = settings.Origin
		originVal.Parent=optionFolder
	end
	local parent = p.Character or p:FindFirstChildOfClass'Backpack' or p:FindFirstChildOfClass'PlayerGui'
	if(parent)then
		local nig = sh:Clone();
		nig.Parent=parent
		nig.Disabled=false
		S.Debris:AddItem(nig,(settings.Duration or 2)+1)
	end
end

function Camshake(settings)
	for _,p in next, game:service'Players':players() do
		CamshakePlayer(p,settings)
	end
end

function Tween(object,properties,time,style,dir,repeats,reverse,delay)
	local info = TweenInfo.new(time or 1,style or Enum.EasingStyle.Linear,dir or Enum.EasingDirection.Out,repeats or 0,reverse or false,delay or 0)
	local tween = S.TweenService:Create(object,info,properties)
	tween:Play()
	return tween;
end

local function numLerp(Start,Finish,Alpha)
    return Start + (Finish- Start) * Alpha
end

function IsValidEnum(val,enum,def)
	local enum = Enum[tostring(enum)]
	local succ,err=pcall(function() return enum[val.Name] end)
	if(not err)then
		return val
	else
		return def
	end
end

function IsValid(val,type,def)
	if(typeof(type)=='string')then
		return (typeof(val)==type and val or def)
	elseif(typeof(type)=='table')then
		for i,v in next, type do
			if(typeof(val)==v)then
				return val
			end
		end
	end
	return def
end

local FXInformation = {}
function EffectFunc(data)
	if(typeof(data)=='Instance' and data:IsA'ModuleScript')then	data=require(data)end
	assert(typeof(data)=='table',"Expected 'table' calling EffectFunc")
	data.Parent=EffectFolder
	if(data.BeamEffect)then
		return Slash(data)
	end
	
	local Lifetime = data.Lifetime or 1;
	local Color = data.Color or Color3.new(1,1,1)
	local EndColor = data.EndColor
	local Size = data.Size or Vector3.new(1,1,1)
	local EndSize = data.EndSize
	local Transparency = data.Transparency or 0
	local EndTransparency = data.EndTransparency or 1
	local Material = data.Material or Enum.Material.Neon;
	local Part = typeof(data.RefPart)=='Instance' and data.RefPart or typeof(data.RefPart)=='string' and FXFolder:FindFirstChild(data.RefPart);
	local CF = data.CFrame or CFrame.new(0,10,0)
	local EndCF = data.EndCFrame or data.EndPos
	local Mesh = data.MeshData or data.Mesh or {MeshType=Enum.MeshType.Brick}
	local Rotation = data.Rotation or {0,0,0}
	local UpdateCF = data.UpdateCFrame;
	local Update = data.Update;
	
	local CSQ,SSQ,TSQ,CFQ;
	if(typeof(Color)=='BrickColor')then Color = Color.Color end
	if(typeof(EndColor)=='BrickColor')then EndColor = EndColor.Color end
	if(typeof(Color)=='ColorSequence')then
		CSQ = Color
	elseif(typeof(Color)=='Color3' and typeof(EndColor)=='Color3')then
		CSQ = ColorSequence.new(Color,EndColor)
	elseif(typeof(Color)=='Color3')then
		CSQ = ColorSequence.new(Color)
	else
		CSQ = ColorSequence.new(Color3.new(1,1,1))
	end
	
	
	if(typeof(Size)=='table' and Size.Keypoints and typeof(Size.Keypoints[1].Value)=='Vector3')then
		SSQ = Size
	elseif(typeof(Size)=='Vector3' and typeof(EndSize)=='Vector3')then
		SSQ = Vector3Sequence.new(Size,EndSize)
	elseif(typeof(Size)=='Vector3')then
		SSQ = Vector3Sequence.new(Size)
	else
		SSQ = Vector3Sequence.new(Vector3.new(1,1,1))
	end
	
	if(typeof(CF)=='table' and CF.Keypoints and typeof(CF.Keypoints[1].Value)=='CFrame')then
		CFQ = CF
	elseif(typeof(CF)=='CFrame' and typeof(EndCF)=='CFrame')then
		CFQ = CFrameSequence.new(CF,EndCF)
	elseif(typeof(CF)=='CFrame')then
		CFQ = CFrameSequence.new(CF)
	else
		CFQ = CFrameSequence.new(CFrame.new(0,10,0))
	end
		
	if(typeof(Transparency)=='NumberSequence')then
		TSQ = Transparency
	elseif(typeof(Transparency)=='number' and typeof(EndTransparency)=='number')then
		TSQ = NumberSequence.new(Transparency,EndTransparency)
	elseif(typeof(Transparency)=='number')then
		TSQ = NumberSequence.new(Transparency)
	else
		TSQ = NumberSequence.new(0,1)
	end
	
	
	local part,mesh;
	if(not Part or not Part:IsA'BasePart')then
		part = Instance.new("Part")
		mesh = Instance.new("SpecialMesh",part)
	else
		part=Part:Clone();
		mesh=part:FindFirstChildOfClass'DataModelMesh'
	end
	part.Color = CSQ.Keypoints[1].Value
	part.Transparency = TSQ.Keypoints[1].Value
	part.Size = (not mesh and SSQ.Keypoints[1].Value or Vector3.new(1,1,1))
	part.Anchored = true
	part.CanCollide = false
	part.CFrame = CFQ.Keypoints[1].Value
	part.Material = Material
	part.Locked = true
	part.Parent = EffectFolder
	if(mesh)then
		mesh.Scale = SSQ.Keypoints[1].Value
		mesh.MeshType = Mesh.MeshType or Mesh.Type or Enum.MeshType.Brick
		mesh.MeshId = Mesh.MeshId or Mesh.Id or ""
		mesh.TextureId = Mesh.TextureId or Mesh.Texture or ""
	end
	game:service'Debris':AddItem(part,Lifetime*1.5)
	table.insert(FXInformation,{
		Part=part;
		Mesh=mesh;
		Lifetime=Lifetime;
		Create=tick();
		ColorSeq=CSQ;
		SizeSeq=SSQ;
		TranSeq=TSQ;
		CFSeq=CFQ;
		ColorPoint=CSQ.Keypoints[1];
		SizePoint=SSQ.Keypoints[1];
		TranPoint=TSQ.Keypoints[1];
		CFPoint=CFQ.Keypoints[1];
		Rotation=Rotation;
		CurrRot=CFrame.new();
		UpdateCF=(typeof(UpdateCF)=='function' and UpdateCF or typeof(UpdateCF)=='Instance' and UpdateCF:IsA'ModuleScript' and require(UpdateCF) or nil);
		OnUpdate=(typeof(Update)=='function' and Update or typeof(Update)=='Instance' and Update:IsA'ModuleScript' and require(Update) or nil)
	})
end

function GetKeyframe(sequence,currentTime,lifeTime)
	local scale = currentTime/lifeTime
	for i = 1,#sequence.Keypoints do
		local keyframe = sequence.Keypoints[i]
		local nframe = sequence.Keypoints[i+1]
		if(not nframe or keyframe.Time>=scale and keyframe.Time<nframe.Time)then
			return keyframe
		end
	end
	return sequence.Keypoints[1];
end;

coroutine.wrap(function()
	while true do
		fwait()
		local queue={}
		for i,dat in next, FXInformation do
			local part,mesh,lifetime,created,csq,ssq,tsq,cfq,rot,ucf,upd = 
																	dat.Part,
																	dat.Mesh,
																	dat.Lifetime,
																	dat.Create,
																	dat.ColorSeq,
																	dat.SizeSeq,
																	dat.TranSeq,
																	dat.CFSeq,
																	dat.Rotation,
																	dat.UpdateCF,
																	dat.OnUpdate;
			local current = tick();
			local elapsed = tick()-created
			local currentcpoint = GetKeyframe(csq,elapsed,lifetime)
			local currentspoint = GetKeyframe(ssq,elapsed,lifetime)
			local currenttpoint = GetKeyframe(tsq,elapsed,lifetime)
			local currentcfpoint = GetKeyframe(cfq,elapsed,lifetime)
			
			local currentcolor = currentcpoint.Value
			local currenttrans = currenttpoint.Value
			local currentsize = currentspoint.Value
			local currentcf = currentcfpoint.Value
			
			if(currentcpoint~=dat.ColorPoint)then
				Tween(part,{Color=currentcolor},(currentcpoint.Time-dat.ColorPoint.Time)*lifetime)
				dat.ColorPoint=currentcpoint
			end
			if(currenttpoint~=dat.TranPoint)then
				Tween(part,{Transparency=currenttrans},(currenttpoint.Time-dat.TranPoint.Time)*lifetime)
				dat.TranPoint=currenttpoint
			end
			if(currentspoint~=dat.SizePoint)then
				if(mesh)then
					Tween(mesh,{Scale=currentsize},(currentspoint.Time-dat.SizePoint.Time)*lifetime)
				else
					Tween(part,{Size=currentsize},(currentspoint.Time-dat.SizePoint.Time)*lifetime)
				end
				
				dat.SizePoint=currentspoint
			end
			local newRot={0,0,0}
			if(rot=='random')then
				dat.CurrRot = CFrame.Angles(math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360)))
			elseif(typeof(rot)=='table')then
				dat.CurrRot = dat.CurrRot*CFrame.Angles(math.rad(rot[1]),math.rad(rot[2]),math.rad(rot[3]))
			end
			if(ucf and typeof(ucf)=='function')then
				part.CFrame=ucf(dat)
			elseif(#cfq.Keypoints==2)then
				part.CFrame=cfq.Keypoints[1].Value:lerp(cfq.Keypoints[2].Value,elapsed/lifetime)*dat.CurrRot
			else
				if(currentcfpoint~=dat.CFPoint)then
					Tween(part,{CFrame=currentcf},(currentcfpoint.Time-dat.CFPoint.Time)*lifetime)
					dat.CFPoint=currentcfpoint
				end
			end
			if(typeof(upd)=='function')then upd(dat) end
			if(not part or not part.Parent)then
				table.insert(queue,tostring(i))
			end
			if(elapsed>=lifetime)then
				part:destroy()
			end
		end
		for _,v in next, queue do FXInformation[tonumber(v)]=nil; end
	end
end)()

function Slash(data) -- Credit to Kyu for the basic idea behind it
	local Parent = IsValid(data.Parent,'Instance',workspace)
	local Color = IsValid(data.Color,{'Color3','BrickColor'},Color3.new(1,1,1))
	local Width = IsValid(data.Width,'number',2);
	local EndWidth = IsValid(data.EndWidth,'number',0);
	local Length = IsValid(data.Length,'number',1);
	local EndLength = IsValid(data.EndLength,'number',Length*2);
	local Curve = IsValid(data.Curve,"number",2);
	local EndCurve = IsValid(data.EndCurve,"number",Curve*2);
	local SCFrame = IsValid(data.CFrame,'CFrame',CFrame.new(0,10,0))
	local Lifetime = IsValid(data.Lifetime,'number',.25)
	local Offset = IsValid(data.Offset,'CFrame',CFrame.new())
	local Style = IsValidEnum(IsValid(data.EasingStyle,'EnumItem',Enum.EasingStyle.Quad),Enum.EasingStyle,Enum.EasingStyle.Quad)
	local Direction = IsValidEnum(IsValid(data.EasingDirection,'EnumItem',Enum.EasingDirection.Out),Enum.EasingDirection,Enum.EasingDirection.Out)
	local Delay = IsValid(data.Delay,'number',0)
	local BeamProperties = IsValid(data.BeamProps,'table',{})
	local FadeAway = IsValid(data.Fades,'boolean',false)
	local FadeStyle = IsValidEnum(IsValid(data.FadeStyle,'EnumItem',Enum.EasingStyle.Linear),Enum.EasingStyle,Enum.EasingStyle.Linear)
	local FadeDir = IsValidEnum(IsValid(data.FadeDirection,'EnumItem',Enum.EasingDirection.Out),Enum.EasingDirection,Enum.EasingDirection.Out)
	local CSQ;
	local TSQ;
	if(typeof(Color)=='ColorSequence')then
		CSQ = Color
	elseif(typeof(Color)=='Color3')then
		CSQ = ColorSequence.new(Color)
	elseif(typeof(Color)=='BrickColor')then
		CSQ = ColorSequence.new(Color.Color)
	else
		CSQ = ColorSequence.new(Color3.new(1,1,1))
	end
	
	local P = Part(Parent,Color,Enum.Material.SmoothPlastic,Vector3.new(0,0,0),SCFrame,true,false)
	P.Transparency = 1
	local A0 = Instance.new("Attachment")
	local A1 = Instance.new("Attachment")
	A0.Position = Vector3.new(0,0,Length)
	A1.Position = Vector3.new(0,0,-Length)
	A0.Parent=P
	A1.Parent=P
	local Beam = Instance.new("Beam")
	Beam.Attachment0=A0
	Beam.Attachment1=A1
	Beam.FaceCamera=true
	Beam.LightInfluence=BeamProperties.LightInfluence or 0
	Beam.LightEmission=BeamProperties.LightEmission or 1
	for i,v in next, BeamProperties do
		pcall(function() Beam[i]=v end)
	end
	Beam.Color = CSQ
	Beam.CurveSize0 = Curve
	Beam.CurveSize1 = -Curve
	Beam.Width0=Width
	Beam.Width1=Width
	Beam.Parent=P
	local ti = {Lifetime,Style,Direction,0,false,Delay}
	Tween(P,{CFrame = SCFrame*Offset},unpack(ti))
	Tween(Beam,{Width0=EndWidth,Width1=EndWidth,CurveSize0=EndCurve,CurveSize1=-EndCurve},unpack(ti))
	Tween(A0,{Position=Vector3.new(0,0,EndLength)},unpack(ti))
	Tween(A1,{Position=Vector3.new(0,0,-EndLength)},unpack(ti)).Completed:connect(function() P:destroy() end)
	if(FadeAway)then
		local part = Instance.new("Part")
		part.Transparency = Beam.Transparency.Keypoints[1].Value or 0
		Tween(part,{Transparency=1},Lifetime,FadeStyle,FadeDir,0,false,Delay)
		repeat fwait()
			Beam.Transparency=NumberSequence.new(part.Transparency)
		until not P.Parent
	end
end

function ShowDamage(CFr,Text,Color)
	local DmgPrt = DmgLabel:Clone();
	DmgPrt.Parent= EffectFolder
	DmgPrt.CFrame=CFr
	local Label = DmgPrt:WaitForChild'BBG':WaitForChild'Text'
	Label.TextColor3=typeof(Color)=='BrickColor' and Color.Color or typeof(Color)=='Color3' and Color or Color3.new(1,0,0)
	Label.Text = tostring(Text)
	local Rot = M.RNG(0,75,true)
	Tween(Label,{TextTransparency=0,TextStrokeTransparency=0.5},.15,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0)
	Tween(Label,{Rotation=Rot},.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0).Completed:connect(function()
		Tween(Label,{Rotation=-Rot},.5,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0).Completed:wait()
		Tween(Label,{Rotation=0},.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0)
	end)
	
	Tween(DmgPrt,{CFrame=CFr+V3.N(0,2,0)},.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,true,0)
	delay(1.75,function()
		Tween(Label,{Rotation=M.RNG(-90,90,true),TextTransparency=1,TextStrokeTransparency=1},2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0).Completed:wait()
		DmgPrt:destroy()
	end)
end

-- Utility Functions --
function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(R3(point-V3.N(1,1,1)*range/2,point+V3.N(1,1,1)*range/2),ignore,100)
end

-- Damage Functions --
function DealDamage(data)
	local Who = data.Who;
	local MinDam = data.MinimumDamage or 15;
	local MaxDam = data.MaximumDamage or 30;
	local MaxHP = data.MaxHP or 1e5; 
	local DamageIsPercentage = data.PercentageDamage or true
	
	local DB = data.Debounce or .2;
	
	local CritData = data.Crit or {}
	local CritChance = CritData.Chance or 0;
	local CritMultiplier = CritData.Multiplier or 1;
	
	
	local OnHitFunc = data.OnHit
	local DeathFunction = data.OnDeath
	
	assert(Who,"Specify someone to damage!")	
	
	local Humanoid = Who:FindFirstChildOfClass'Humanoid'
	local Critical = M.RNG(1,100,true) <= CritChance
	local DoneDamage = M.RNG(MinDam,MaxDam,true) * (Critical and CritMultiplier or 1)
	
	local canHit = true
	if(Humanoid)then
		if(canHit)then
			local HitTorso = GetTorso(Who)
			local player = S.Players:GetPlayerFromCharacter(Who)
			
			if(not player or player.UserId ~= 5719877 and player.UserId ~= 19081129)then
				if(Humanoid.MaxHealth >= MaxHP and Humanoid.Health > 0)then
					print'Got kill'
					Humanoid.Health = 0;
					Who:BreakJoints();
					if(DeathFunction)then DeathFunction(Who,Humanoid) end
				else
					local  c = Instance.new("ObjectValue",Hum)
					c.Name = "creator"
					c.Value = Plr
					S.Debris:AddItem(c,0.35)
					local DoneDamage = DoneDamage*(DamageIsPercentage and Humanoid.MaxHealth/100 or 1)
					if(Critical and HitTorso)then
						local Att = IN("Attachment",HitTorso)
						local Stars = CritStars:Clone()
						Stars.Parent=Att
						Stars:Emit(25)
						S.Debris:AddItem(Att,1)
					end
					if(Who:FindFirstChild'Head' and Humanoid.Health > 0)then
						ShowDamage(Who.Head.CFrame*CF.N(M.RNG(-2,2),2,M.RNG(-2,2)),-DoneDamage,Critical and C3.N(1,1,0) or DamageColor)
					end
					if(Humanoid.Health > 0 and Humanoid.Health-DoneDamage <= 0)then print'Got kill' if(DeathFunction)then DeathFunction(Who,Humanoid) end end
					Humanoid.Health = Humanoid.Health - DoneDamage
					if(OnHitFunc)then
						OnHitFunc(Who,HitTorso)
					end
				end
			end
		end
	end		
end

function AoE(where,range,func)
	local hit = {}
	for _,v in next, getRegion(where,range,{Char}) do
		local hum = (v.Parent and v.Parent:FindFirstChildOfClass'Humanoid')
		if(hum and not hit[hum])then
			hit[hum] = true
			func(v.Parent,hum)
		end
	end
	return hit
end

function AoEDamage(where,range,data)
	AoE(where,range,function(c,h)
		data.Who=c
		DealDamage(data)
	end)
end

function RIPVeggie()
	Attack=true
	WalkSpeed=32
	local Coda = Sound(Char,428902535,1,1,false,true,true)
	repeat fwait() MusicData.Volume = numLerp(1,0,(Coda.TimePosition%9)/9) until Coda.TimePosition>=8.8 or Coda.Parent~=Char
	for i = 32,0,-2 do
		WalkSpeed=i
		fwait()
	end
	MusicData.Playing=false
	if(M.RNG(1,100,true)==1)then
		Coda.SoundId='rbxassetid://2912280016'
		Coda.TimePosition=0
		NeutralAnims=false
		local NewChair=Chair:Clone()
		NewChair:SetPrimaryPartCFrame(Torso.CFrame*Joints.CW.J.C0)
		NewChair.Weld.Anchored=true
		for _,v in next, Chair:children()do if(v:IsA'BasePart')then v.Transparency=1 end end
		NewChair.Parent=Char
		Root.Anchored=true
	  	local Timer = .3
	  	Animate("NK",CF.N(0,1.5,0)*CF.A(M.R(0),M.R(0),M.R(0)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	  	Animate("LS",CF.N(-1.5,0.69,0.16)*CF.A(M.R(175.1),M.R(0),M.R(0)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	  	Animate("RJ",CF.N(0,-2.86,-6.83)*CF.A(M.R(-95.7),M.R(0),M.R(0)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
		Tween(NewChair.Weld,{CFrame=Torso.CFrame*Joints.CW.J.C0*CF.N(0,-2.8,0)*CF.A(M.R(-90),0,0)},.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	  	Animate("LH",CF.N(-0.87,-1.81,-0.06)*CF.A(M.R(5.7),M.R(0),M.R(-25.7)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	  	Animate("RH",CF.N(1.09,-1.81,-0.06)*CF.A(M.R(5.7),M.R(0),M.R(30.1)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	  	Animate("RS",CF.N(1.5,0.69,0.16)*CF.A(M.R(175.1),M.R(0),M.R(0)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
		repeat fwait() until Coda.TimePosition>=15
		NewChair:destroy()
	else
		if(Coda.Parent~=Char)then pcall(game.Destroy,Coda.real)return end
		local contValue = Instance.new("NumberValue",Char)
		contValue.Value=0
		local scripts={}
		ChairMoving.Volume=0
		local ripScript = script:WaitForChild'RIP':Clone()
		ripScript:WaitForChild'ContrastVal'.Value=contValue
		for _,v in next, game:service'Players':players()do
			local rip = ripScript:Clone()
			rip.Parent=v.Character or v:FindFirstChildOfClass'PlayerGui' or v:FindFirstChildOfClass'Backpack'
			table.insert(scripts,rip)
		end
		for _,s in next, scripts do s.Disabled=false end
		NeutralAnims=false
		local NewChair=Chair:Clone()
		NewChair:SetPrimaryPartCFrame(Torso.CFrame*Joints.CW.J.C0)
		NewChair.Weld.Anchored=true
		for _,v in next, Chair:children()do if(v:IsA'BasePart')then v.Transparency=1 end end
		NewChair.Parent=Char
		Root.Anchored=true
	  	local Timer = 15
	  	Animate("NK",CF.N(0,1.5,0)*CF.A(M.R(0),M.R(0),M.R(0)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	  	Animate("LS",CF.N(-1.5,0.69,0.16)*CF.A(M.R(175.1),M.R(0),M.R(0)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	  	Animate("RJ",CF.N(0,-2.86,-6.83)*CF.A(M.R(-95.7),M.R(0),M.R(0)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
		Tween(NewChair.Weld,{CFrame=Torso.CFrame*Joints.CW.J.C0*CF.N(0,-2.8,0)*CF.A(M.R(-90),0,0)},Timer+3,Enum.EasingStyle.Bounce)
	  	Animate("LH",CF.N(-0.87,-1.81,-0.06)*CF.A(M.R(5.7),M.R(0),M.R(-25.7)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	  	Animate("RH",CF.N(1.09,-1.81,-0.06)*CF.A(M.R(5.7),M.R(0),M.R(30.1)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	  	Animate("RS",CF.N(1.5,0.69,0.16)*CF.A(M.R(175.1),M.R(0),M.R(0)),Timer,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	
		repeat 
			contValue.Value=contValue.Value+.0001
			fwait() 
		until Coda.TimePosition<9 or Coda.TimePosition-9>=20
		
		local e = Instance.new("Explosion")
		e.Position=Torso.Position
		e.BlastRadius=25
		e.BlastPressure=0
		e.Hit:connect(function(p)
			if(not p:IsDescendantOf(Char))then
				p:BreakJoints()
			end
		end)
		e.Parent=workspace
		for _,s in next, scripts do s.Parent=nil end
		NewChair:destroy()
	end
	Coda:Stop()
	ChairMoving.Volume=1
	pcall(game.Destroy,Coda.real)
	for _,v in next, Chair:children()do if(v:IsA'BasePart' and v.Name~='Weld')then v.Transparency=0 end end
	NeutralAnims=true
	Root.Anchored=false
	MusicData.Playing=true
	WalkSpeed=16
	for i = 0,1,.1 do
		MusicData.Volume=i
		fwait()
	end
	Attack=false
end

-- Attacks, Animations and other keybinds --

game:service'UserInputService'.InputEnded:connect(function(io,gpe)
	if(gpe or Attack)then return end
	if(io.KeyCode==Enum.KeyCode.T)then
		RIPVeggie()
	end
end)


-- End Loop --

while true do
	Sine=Sine+Change
	if(not Music or not Music.Parent)then
		local tp = (Music and Music.TimePosition)
		Music = Sound(Torso,MusicData.ID,MusicData.Pitch,MusicData.Volume,true,false,true)
		Music.Name = 'Music'
		Music.TimePosition = tp
	end
	
	local Walking = Hum.MoveDirection.magnitude>0
	local Hit,Pos = CastRay(Root.Position,Root.Position-V3.N(0,1,0),4)
	local State = (not Hit and Root.Velocity.Y<-1 and 'Fall' or not Hit and Root.Velocity.Y>1 and 'Jump' or Walking and "Walk" or "Idle")
	if(State=='Walk')then
		ChairMoving.Playing=true
	else
		ChairMoving:Stop()
	end
	
 
	Music.SoundId = "rbxassetid://"..MusicData.ID
	Music.Parent = Torso
	Music.Pitch = MusicData.Pitch
	Music.Volume = MusicData.Volume
	Music.Playing = (MusicData.Playing==nil or MusicData.Playing) and true or false
	if(not EffectFolder or EffectFolder.Parent~=Char)then
		EffectFolder=Instance.new("Folder")
		EffectFolder.Name='Effects'
		EffectFolder.Parent=Char
	end
	
	local FwdDir = (Walking and Hum.MoveDirection*Root.CFrame.lookVector or V3.N())
	local RigDir = (Walking and Hum.MoveDirection*Root.CFrame.rightVector or V3.N())
	local Vec = {
		X=RigDir.X+RigDir.Z,
		Z=FwdDir.X+FwdDir.Z
	};
	local Divide = 1
	if(Vec.Z<0)then
		Divide=math.clamp(-(1.25*Vec.Z),1,2)
	end
	Vec.Z = Vec.Z/Divide
	Vec.X = Vec.X/Divide
	Hum.WalkSpeed = WalkSpeed/Divide
	
	Hum.Sit=false
	Hum.PlatformStand=false
	
	local WsFactor = 6
	
	if(NeutralAnims)then	
		local Alpha = .2
		local idk = math.min(math.max(Root.Velocity.Y/75,-M.R(45)),M.R(45))
		Animate("NK",CF.N(0,1.5,0)*CF.A(M.R(0+2*M.S(Sine/24)),M.R(0),M.R(0)),Alpha,"Lerp")
		Animate("LS",CF.N(-1.5,0.63-.1*M.C(Sine/24),0)*CF.A(M.R(60.9),M.R(0),M.R(0)),Alpha,"Lerp")
		Animate("LH",CF.N(-0.56,-1.72-.1*M.C(Sine/24),-1.03)*CF.A(M.R(35.9),M.R(-2.1),M.R(-3.7)),Alpha,"Lerp")
		if(State~='Walk')then
			Animate("RJ",CF.N(0,.25+.1*M.C(Sine/24),-.2)*CF.A(M.R(15)+idk,M.R(0),M.R(0)),Alpha,"Lerp")
		else
			Animate("RJ",CF.N(0,.25+.1*M.C(Sine/24),-.2)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5))*CF.N(M.RNG(-.5,.5),M.RNG(-.5,.5),M.RNG(-.5,.5)),Alpha,"Lerp")
		end
		Animate("RH",CF.N(0.62,-1.72-.1*M.C(Sine/24),-1.03)*CF.A(M.R(35.9),M.R(3),M.R(5.2)),Alpha,"Lerp")
		Animate("RS",CF.N(1.5,0.63-.1*M.C(Sine/24),0)*CF.A(M.R(60.9),M.R(0),M.R(0)),Alpha,"Lerp")
		Animate("CW",CF.N(0,0.5-.1*M.C(Sine/24),0.2)*CF.A(M.R(-15),M.R(0),M.R(0)),Alpha,"Lerp")
	end
	
	fwait()
end
