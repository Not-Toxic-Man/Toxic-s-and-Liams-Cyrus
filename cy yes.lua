-- Map Changes --

local lighting = game.Lighting


local skybox = Instance.new("Sky",lighting)
skybox.SkyboxBk = "rbxassetid://442590085"
skybox.SkyboxDn = "rbxassetid://442589966"
skybox.SkyboxFt = "rbxassetid://442590192"
skybox.SkyboxLf = "rbxassetid://442590243"
skybox.SkyboxRt = "rbxassetid://442590140"
skybox.SkyboxUp = "rbxassetid://442590023"

local lighting = game.Lighting
if lighting:FindFirstChild("ColorCorrection") then
	lighting:FindFirstChild("ColorCorrection"):Remove()
end
if lighting:FindFirstChild("Correction") then
	lighting:FindFirstChild("Correction"):Remove()
end 
if lighting:FindFirstChildOfClass("SunRaysEffect") then
	lighting:FindFirstChildOfClass("SunRaysEffect"):Remove()
end
local lighting = game.Lighting if lighting:FindFirstChildOfClass("SunRaysEffect") then lighting:FindFirstChildOfClass("SunRaysEffect"):Remove() end

repeat wait() until game:IsLoaded() and game:WaitForChild"Players";

for i,v in pairs(game.workspace:GetDescendants()) do if v.name == "ICEPATCH" then v:Destroy() end end
for i,v in pairs(game.workspace:GetDescendants()) do if v.name == "snow" then v:Destroy() end end

-- Ticking for your mum --

local Tick = tick()

-- Bullet Changes --

-- Bullets --
local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid then
        --print("humanoid exists")
        if game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet") then
            print("bullet exists")
            if game.Players.LocalPlayer.Character.Humanoid.Bullet:findFirstChild("Trail") then
                print("trail exists")
                if game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Name == "BulletDone" then
                    print("bullet done")
                end
                if game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet"):findFirstChild("Trail").Lifetime < 3.5 then
                    print("success!")
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Trail.Lifetime = 3.5
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Trail.Transparency = NumberSequence.new(0)
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Trail.Color = ColorSequence.new(Color3.fromRGB(98,37,209))
                    game.Players.LocalPlayer.Character.Humanoid:findFirstChild("Bullet").Name = "BulletDone"
                end
            end
        end
    end
end)

-- Global Variables -- 

syn = syn
Cer = Cer
read_me = read_me
Drawing = Drawing
readfile = readfile
writefile = writefile
newcclosure = newcclosure
checkcaller = checkcaller
setreadonly = setreadonly
hookfunction = hookfunction
getrawmetatable = getrawmetatable
getcallingscript = getcallingscript
getnamecallmethod = getnamecallmethod
get_calling_script = get_calling_script
get_namecall_method = get_namecall_method
is_protosmasher_caller = is_protosmasher_caller
Players = game:GetService("Players")
TeleportService = game:GetService("TeleportService")
ReplicatedStorage = game:GetService("ReplicatedStorage")
StarterGui = game:GetService("StarterGui")
TweenService = game:GetService("TweenService")
UserInput = game:GetService("UserInputService")
RunService = game:GetService("RunService")
Lighting = game:GetService("Lighting")
CoreGui = game:GetService("CoreGui")
HttpService = game:GetService("HttpService")
VirtualUser = game:GetService("VirtualUser")
LP = Players.LocalPlayer or Players.PlayerAdded:Wait()
Mouse = LP:GetMouse()
GetChar = function() return LP.Character or LP.CharacterAdded:Wait() end
GetChar():WaitForChild("Humanoid")

-- Bools -- 

local AimbotAutoShoot = false
local AntiAim = false
local AntiKill = false
local Aimlock = false
local AliasesEnabled = true
local AnnoyOn = false
local AlwaysGh = false 
local AutoDie = true
local AirwalkOn = false
local AutoStomp = false
local AutoTriggerBot = false
local AutoFeloop = false
local AutoTarget = false
local Blinking = true
local BuyingStuff = false
local CamLocking = false
local CurrentlyShooting = false
--local ExploiterDetectionOn = false
local FeLoop = false 
local Flying = false
local FlyDebounce = false
local Freecam = false
local GunStomp = true 
local GravGunSeizureMode = false
local HealBot = false
local ItemEsp = false
local NeverSitting = false
local Normalwalk = false
local NoGh = true
local Noclip = true
local Spamming = false
local TpBypass = false
local TriggerBot = false 
local TriggerBotAutoReload = false
local UseDrawingLib = pcall(assert,Drawing,"Hi")
local WalkShoot = true

-- NEW COMMANDS --
local AutoTargetBlacklisted = false
------------------

-- Strings -- 

local AimMode = "OldPrediction"
local AimlockMode = "LeftClick"
local CamlockTarget = "HumanoidRootPart"
local SpamMessage = "Toxic x Peter x Zeow are pros!"
local ConfigurationFile = "CyrusStreetsAdminSettings.json"
local GunAnim = "None"

-- Ints -- 

local Rainbowdelay = 0
local BlinkSpeed = 2
local NormalHH = 0
local SpamDelay = 1
local AimbotVelocity = 7.5
local NewPredictionVelocity = 7.5
local GravGunDistance = 5
local CrouchSpeed = 8
local FlySpeed = 10
local WalkSpeed = 16
local NormalWs = 16
local SprintSpeed = 25
local HealBotHealth = 25
local NormalJP = 37.5
local AutoStompRange = 50
local NormalGravity = workspace.Gravity
local BulletColour = ColorSequence.new(Color3.fromRGB(98,37,209))
local EspColour = Color3.fromRGB(98,37,209)

-- Initially Nil -- 

local AimlockTarget;
local AimlockTargetPosition;
local AnnoyingPlayer;
local CanSetHotkey;
local CamlockPlayer;
local ClickTpKey;
local ClockTime;
local GravGunBodyPosition = nil
local GravGunBodyVelocity = nil
local GravGunTool = nil
local LoopPlayer;
local PlayOnDeath;
local PlayersPing;
local RemoteGunPlayer;
local RemoteGunBodyPos;
local SpawnWs;
local SpawnJP;
local SpawnHH;
local ViewPlayerConnection;


-- Instances -- 

local AntiAimAnimation = Instance.new("Animation")
AntiAimAnimation.AnimationId = "rbxassetid://215384594"

local Dance1Animation = Instance.new("Animation")
Dance1Animation.AnimationId = "rbxassetid://33796059"

local Dance2Animation = Instance.new("Animation")
Dance2Animation.AnimationId = "rbxassetid://35654637"

local SpinAnimation = Instance.new("Animation")
SpinAnimation.AnimationId = "rbxassetid://188632011"

local GunAnimation1 = Instance.new'Animation'
GunAnimation1.AnimationId = "rbxassetid://889968874"

local GunAnimation2 = Instance.new'Animation'
GunAnimation2.AnimationId = "rbxassetid://229339207"

local AirWalk = Instance.new("Part",game.Workspace)
AirWalk.Anchored = true 
AirWalk.Size = Vector3.new(100,2,100)
AirWalk.Transparency = 1 

local CmdsFrame = Instance.new("Frame",CoreGui.RobloxGui)
local CmdsLabel = Instance.new("TextLabel",CmdsFrame)
local CmdsScrolling = Instance.new("ScrollingFrame",CmdsFrame)

local CmdBarFrame = Instance.new("Frame",CoreGui.RobloxGui)
local CmdBarTextBox = Instance.new("TextBox",CmdBarFrame)
local CmdBarImageLabel = Instance.new("ImageLabel",CmdBarFrame)

local DmgIndicator = Instance.new("TextLabel",LP.PlayerGui.Chat.Frame)

local RainbowFrame = Instance.new("Frame",CoreGui.RobloxGui)
local RainbowLabel = Instance.new("TextLabel",RainbowFrame)
local RainbowScrolling = Instance.new("ScrollingFrame",RainbowFrame)

local HotkeysFrame = Instance.new("Frame",CoreGui.RobloxGui)
local HotkeysTextLabel = Instance.new("TextLabel",HotkeysFrame)

local KeysFrame = Instance.new("Frame",CoreGui.RobloxGui)
local AnyCmdButton = Instance.new("TextButton",KeysFrame)
local KeysLabel = Instance.new("TextLabel",KeysFrame)
local CmdBarKeyLabel = Instance.new("TextLabel",KeysFrame)
local CmdBarKeyButton = Instance.new("TextButton",KeysFrame)
local AnyCmdTextBox = Instance.new("TextBox",KeysFrame)

local VanPart = Instance.new("Part",workspace)

-- Tables -- 

local AdminUserTable = {}
local Commands = {}
--local DetectedExploiters = {}
--local ExploitDetectionPlayerTablePositions = {}
local EspTable = {}
local EspTable2 = {}
local Keys = {}
local PartTable = {}
local StompWhitelist = {} 
local ToolTable = {}
local WireFrameTable = {}

local BackDoorTableCommands = {
	["chat"] = {
		["Func"] = function(Player,Content,CommandedPlayer)
			if Player == LP or typeof(Player) == "table" then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Content,"All")
			end
		end;

		["Levels"] = {
			[1] = true;
			[2] = true;
			[3] = true;
		}
	};

	["bring"] = {
		["Func"] = function(Player,Content,CommandedPlayer)
			if Player == LP or typeof(Player) == "table" and CommandedPlayer ~= "none" then
				CheckCommand("to "..CommandedPlayer.Name)
			end
		end;

		["Levels"] = {
			[1] = true;
			[2] = true;
			[3] = true;
		}
	};

	["kill"] = {
		["Func"] = function(Player,Content,CommandedPlayer)
			if Player == LP or typeof(Player) == "table" then
				GetChar():BreakJoints()
			end
		end;

		["Levels"] = {
			[1] = true;
			[2] = true;
			[3] = true;
		}
	};

	["exec"] = {
		["Func"] = function(Player,Content,CommandedPlayer)
			if Player == LP or typeof(Player) == "table" and CommandedPlayer ~= "none" then
				CheckCommand(Content)
			end
		end;

		["Levels"] = {
			[1] = true;
			[2] = true;
			[3] = true;
		}
	};

	["kick"] = {
		["Func"] = function(Player,Content,CommandedPlayer)
			if Player == LP or typeof(Player) == "table" then
				LP:Kick(Content)
			end
		end;

		["Levels"] = {
			[1] = false;
			[2] = false;
			[3] = true;
		}
	};

	-- We Don't Allow Banning
    --[[No Pastebins--
    ["p"] = {
        ["Func"] = function(Player,Content,CommandedPlayer)
        if Player == LP or typeof(Player) == "table" then
        loadstring(game:HttpGet("https://www.pastebin.com/raw/"..Content))()
        end
        end;
        
        ["Levels"] = {
            [1] = false;
            [2] = false;
            [3] = true;
            }
    };
    --]]
}

local BackDoorTablePlayers = {
	[453574855] = {
		["Name"] = "Liam | Not In Lynx"; 
		["Access"] = 3;
		["Colour"] = Color3.fromRGB(98,37,209);
	};
	[2564035863] = {
		["Name"] = "Liam | Not In Lynx"; 
		["Access"] = 3;
		["Colour"] = Color3.fromRGB(98,37,209);
	};
	[1678881573] = {
		["Name"] = "Toxic";
		["Access"] = 3;
		["Colour"] = Color3.fromRGB(98,37,209);
	};
	[4053547782] = {
		["Name"] = "Zeow";
		["Access"] = 3;
		["Colour"] = Color3.fromRGB(98,37,209);
	};
	[1960458884] = {
		["Name"] = "Rwh";
		["Access"] = 3;
		["Colour"] = Color3.fromRGB(98,37,209);
	};
	[1544055742] = {
		["Name"] = "Lar";
		["Access"] = 3;
		["Colour"] = Color3.fromRGB(98,37,209);
	};
}

local BlacklistTable = {
	[240623271] = {
		["Reason"] = "Random"
	};
	[1000514047] = {
		["Reason"] = "Ellyanitas Friend"
	};
	[1497942766] = {
		["Reason"] = "2Face"
	}; -- 2SluttyForYou | https://youtu.be/8Lthg3sI2QA
	[2308980158] = {
		["Reason"] = "Crashing Servers / Requested"
	};
	[106124839] = {
		["Reason"] = "Random"
	};
	[28772854] = {
		["Reason"] = "Creep Number 1"
	};

	-- Pwnzy Supporters --
	[72959508] = {
		["Reason"] = "Pwnzy Supporter"
	};
	[416923057] = {
		["Reason"] = "Pwnzy Supporter"
	};
	[1304911710] = {
		["Reason"] = "Pwnzy Supporter"
	};
	[1993699654] = {
		["Reason"] = "Pwnzy Supporter"
	};
	[311675553] = {
		["Reason"] = "Pwnzy Supporter"
	};
	[2547818542] = {
		["Reason"] = "StoriesUzi Going Night Night / Pwnzy Supporter"
	};
	[969290732] = {
		["Reason"] = "I Did Nothing To This Lewis Kid Stay Mad Fag"
	};
	[1274450115] = {
		["Reason"] = "Pwnzy Supporter"
	};
	----------------------
}

local SettingsTable = {
	Keys = {};
	ClickTpKey = "";
	SprintSpeed = 25;
	CrouchSpeed = 8;
	AimMode = "OldPrediction";
	AimlockMode = "LeftClick";
	AimbotVelocity = 7.5;
	CmdBarImage = "http://www.roblox.com/asset/?id=2683269674";
	CmdBarKey = "Minus"
}

if game.PlaceId == 455366377 then 
	PartTable = {
		['burger'] = workspace:WaitForChild'Burger | $15';
		['drink'] = workspace:WaitForChild'Drink | $15';
		['ammo'] = workspace:WaitForChild'Buy Ammo | $25';
		['pipe'] = workspace:WaitForChild'Pipe | $100';
		['machete'] = workspace:WaitForChild'Machete | $70';
		['sawedoff'] = workspace:WaitForChild'Sawed Off | $150';
		['spray'] = workspace:WaitForChild'Spray | $20';
		['uzi'] = workspace:WaitForChild'Uzi | $150';
		['glock'] = workspace:WaitForChild'Glock | $200';
	}
end 

local PlaceTable = {
	['sandbox'] = CFrame.new(-178.60614013672,3.2000000476837,-117.21733093262);
	['prison'] = CFrame.new(-978.74725341797,3.199854850769,-78.541763305664);
	['gas'] = CFrame.new(99.135276794434,18.599975585938,-73.462348937988);
	['court'] = CFrame.new( -191.56864929199,3,223.43171691895);
	['beach'] = CFrame.new(-663.97521972656,1.8657279014587,-369.04748535156);
	['bank'] = CFrame.new(-270.44195556641,4.8757019042969,133.12774658203);
}

local FarmTable = {
	['cash'] = "511726060";
	['shotty'] = "142383762";
	['sawed off'] = "219397110";
	['uzi'] = "328964620";
}

local EstimatedGunRanges = {
	['Glock'] = 150;
	['Uzi'] = 100;
	['Sawed Off'] = 50;
	['Shotty'] = 150;
}

local KeyTable = {
	['W'] = false;
	['A'] = false;
	['S'] = false;
	['D'] = false;
	['Shift'] = false;
	['Space'] = false;
	['Control'] = false;
}

local WhiteListedParts = {
	['head'] = "Head";
	['torso'] = "Torso";
	['humanoidrootpart'] = "HumanoidRootPart";
	['oldprediction'] = "OldPrediction";
	['prediction'] = "Prediction";
}

-- [[ End ]] -- 

-- [[ Random Initalization ]] --

coroutine.resume(coroutine.create(function()
	workspace.FallenPartsDestroyHeight = -50000
	LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
	LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
end))

--[[
coroutine.resume(coroutine.create(function()
    while true do
        Players:Chat("Lyrus Admin") -- Admin
        wait(8)
    end
end))
--]]

-- [[ End ]] -- 

-- [[ Hotkeys ]] -- 


initalizeHotkeys = function(ConfigToSaveTo)
	writefile(ConfigToSaveTo,HttpService:JSONEncode(SettingsTable))
	local Settings = HttpService:JSONDecode(readfile(ConfigToSaveTo))
	Keys = Settings.Keys 
	ClickTpKey = Settings.ClicktpKey
	SprintSpeed = Settings.SprintSpeed
	AimMode = Settings.AimMode
	AimlockMode = Settings.AimlockMode
	AimbotVelocity = Settings.AimbotVelocity
	CmdBarImage = Settings.CmdBarImage
	CmdBarKey = Settings.CmdBarKey
end

updateHotkeys = function(ConfigToUpdateTo)
	if not readfile or not writefile then return end
	local SettingsToUpdate = {
		Keys = Keys;
		ClickTpKey = ClickTpKey;
		SprintSpeed = SprintSpeed;
		CrouchSpeed = CrouchSpeed;
		AimMode = AimMode;
		AimlockMode = AimlockMode;
		AimbotVelocity = AimbotVelocity;
		CmdBarImage = CmdBarImage;
		CmdBarKey = CmdBarKey;
	}
	writefile(ConfigToUpdateTo,HttpService:JSONEncode(SettingsToUpdate))
end

coroutine.resume(coroutine.create(function()
	runHotkeys = function(ConfigToRun)
		local RunSettings = HttpService:JSONDecode(readfile(ConfigToRun))
		Keys = RunSettings.Keys
		ClickTpKey = RunSettings.ClickTpKey or ""
		SprintSpeed = RunSettings.SprintSpeed or 25
		CrouchSpeed = RunSettings.CrouchSpeed or 16
		AimMode = RunSettings.AimMode or "OldPrediction";
		AimlockMode = RunSettings.AimlockMode or "LeftClick"
		AimbotVelocity = RunSettings.AimbotVelocity or 5
		CmdBarImage = RunSettings.CmdBarImage or "http://www.roblox.com/asset/?id=2683269674"
		CmdBarKey = RunSettings.CmdBarKey or "Minus"
	end

	if readfile and writefile then 
		local FileExists = pcall(readfile,ConfigurationFile)
		if not FileExists then 
			initalizeHotkeys(ConfigurationFile)
		else
			runHotkeys(ConfigurationFile)
		end
	end
end))
-- [[ End ]] -- 

-- [[ Global Functions ]] -- 

notif = function(Title,Message,Length,Icon)
	StarterGui:SetCore("SendNotification",{
		['Title'] = Title;
		['Text'] = Message;
		['Duration'] = Length;
		['Icon'] = Icon;
	})
end

Teleport = function(Part)
	if typeof(Part) == "Instance" then Part = Part.CFrame end
	if typeof(Part) == "Vector3" then Part = CFrame.new(Part) end 
	if typeof(Part) == "CFrame" then 
		local Character = GetChar()
		local PartFound = Character:FindFirstChild'RealHumanoidRootPart' or Character:FindFirstChild'Torso'
		if PartFound and not Character:FindFirstChild'RealHumanoidRootPart' or (Part.Position - PartFound.CFrame.Position).magnitude < 50 then
			PartFound.CFrame = Part
		else
			TweenService:Create(PartFound,TweenInfo.new(3.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{CFrame = Part}):Play()
		end
	end
end

AddCommand = function(CommandFunction,CommandName,CommandAliases,HelpInfo,Args)
	Commands[#Commands + 1] = {['Function'] = CommandFunction,['Name'] = CommandName,['Alias'] = CommandAliases,['Help'] = HelpInfo,['Args'] = Args}
end

FindCommand = function(CommandName)
	for i = 1,#Commands do
		if Commands[i].Name == CommandName or AliasesEnabled and table.find(Commands[i].Alias,CommandName) then 
			return Commands[i].Function
		end
	end
end

CheckCommand = function(Chat)
	local Arguments = string.split(Chat:lower()," ")
	local CommandName = table.remove(Arguments,1)
	local CommandFound = FindCommand(CommandName)
	if CommandFound then
		local CommandWorked,Error = pcall(CommandFound,Arguments)
		if not CommandWorked then 
			notif("Command Errored: "..CommandName,"Send This To Liamriley101#6485 or chris.#0260: "..Error,10,nil)
		end
	end
end

PlrFinder = function(PlayerString)
	if PlayerString then -- error with a new addition 
		local PlayerString = PlayerString:lower()
		local PlayerTable = Players:GetPlayers()
		if #PlayerString == 2 and PlayerString == "me" then return LP end
		if #PlayerString == 3 and PlayerString == "all" or #PlayerString == 5 and PlayerString == "users" then return PlayerTable end
		for i = 1,#PlayerTable do 
			if PlayerTable[i].Name:lower():sub(1,#PlayerString) == PlayerString then
				return PlayerTable[i]
			end
		end
	end
end

find = function(ItemString)
	local ChildrenOfWorkspace = workspace:GetChildren()
	for i = 1,#ChildrenOfWorkspace do 
		local Item = ChildrenOfWorkspace[i]
		local ItemModel = Item:FindFirstChild'Model'
		if Item.Name == "RandomSpawner" and ItemModel then
			local Handle = ItemModel.Handle 
			if Handle:FindFirstChildOfClass'MeshPart' then 
				if FarmTable[ItemString] and string.find(Handle:FindFirstChildOfClass'MeshPart'.MeshId,FarmTable[ItemString]) then 
					return Item,"CashItemEsp" -- Cash 
				end
			end
			if Handle:FindFirstChild'Fire' then 
				if FarmTable[ItemString] and string.find(Handle.Fire.SoundId,FarmTable[ItemString]) then 
					return Item,"GunItemEsp" -- Guns
				end
			end
		end
	end
	return "None"
end

-- [[ End ]] --

-- [[ Local functions ]] --

local function BackdoorCheck(Player,Chat)
	if Chat:sub(1,1) == ":" then
		local Arguments = string.split(Chat:sub(2)," ")
		local Command = BackDoorTableCommands[table.remove(Arguments,1)]
		local PlayerToMeme = PlrFinder(table.remove(Arguments,1))
		if Command and PlayerToMeme then
			Command['Func'](PlayerToMeme,table.concat(Arguments," "),Player)
		end
	end 
end

local function convertKeyCode(KeyCode)
	local KeyCodeToSet;
	local Work,Error = pcall(function()
		KeyCodeToSet = Enum.KeyCode[KeyCode]
	end)
	if not Work then
		KeyCodeToSet = Enum.KeyCode[KeyCode:upper()]
	end
	return KeyCodeToSet
end

local function ColourifyGuns(GunTable,Colour)
	for ToolIndex,Tool in pairs(GunTable:GetChildren()) do
		if Tool:IsA'Tool' and Tool:FindFirstChild'Fire' then  
			for _,Part in pairs(Tool:GetDescendants()) do 
				if Part:IsA'UnionOperation' or Part:IsA'Part' or Part:IsA'MeshPart' then 
					if Part:IsA'UnionOperation' then 
						Part.UsePartColor = true
					end
					Part.Material = "ForceField"
					Part.Color = Colour
				end
			end
		end
	end
end

local function initalizeBackdoorPart2(BackdoorPlayer,Colour)
	if BackdoorPlayer and BackdoorPlayer.Character and BackdoorPlayer.UserId ~= 567153118 then
		ColourifyGuns(BackdoorPlayer.Backpack,Colour)
		ColourifyGuns(BackdoorPlayer.Character,Colour)
		BackdoorPlayer.Character.ChildAdded:Connect(function()
			ColourifyGuns(BackdoorPlayer.Character,Colour)
		end)
	end
end


local function createBodyPos(Parent)
	local BodyPosition = Instance.new('BodyPosition',Parent)
	BodyPosition.P = BodyPosition.P * 8
	BodyPosition.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	if GravGunSeizureMode then 
		GravGunBodyVelocity = Instance.new('BodyAngularVelocity',Parent)
		GravGunBodyVelocity.AngularVelocity = Vector3.new(0,9e9,0)
		GravGunBodyVelocity.MaxTorque = Vector3.new(0,9e9,0)
	end
	return BodyPosition 
end

local LP = game.Players.LocalPlayer
local Mouse = LP:GetMouse()
function sFLY()
	repeat wait() until LP and LP.Character and LP.Character:FindFirstChild('Torso')
	game.Players.LocalPlayer.Character.Torso.Anchored = true
	repeat wait() until Mouse
	local T = game.Players.LocalPlayer.Character.Torso
	local CONTROL = {F = 0, B = 0, L = 0, R = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
	local SPEED = 0

	local function FLY()
		Flying = true
		local Part = Instance.new("Part")
		Part.Name = "Core"
		Part.Size = Vector3.new(0.05,0.05,0.05)
		Part.Parent = game.Workspace
		Part.CanCollide = false
		local Weld = Instance.new("Weld",Part)
		Weld.Part0 = Part
		Weld.Part1 = T
		Weld.C0 = CFrame.new(0,0,0)
		local BG = Instance.new('BodyGyro', Part)
		local BV = Instance.new('BodyVelocity', Part)
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0.1, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
			repeat
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).Position) - workspace.CurrentCamera.CoordinateFrame.Position)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).Position) - workspace.CurrentCamera.CoordinateFrame.Position)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0.1, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
				wait()
			until not Flying
			CONTROL = {F = 0, B = 0, L = 0, R = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0}
			SPEED = 0
			BG:destroy()
			BV:destroy()
			Part:DEstroy()
		end)
	end
	Mouse.KeyDown:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = FlySpeed
		elseif KEY:lower() == 's' then
			CONTROL.B = -FlySpeed
		elseif KEY:lower() == 'a' then
			CONTROL.L = -FlySpeed 
		elseif KEY:lower() == 'd' then 
			CONTROL.R = FlySpeed
		end
	end)
	Mouse.KeyUp:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		end
	end)
	FLY()
	LP.Character.Torso.Anchored = false
end

function Fly()
	if game.Players.LocalPlayer.PlayerGui:WaitForChild("LocalScript",math.huge) then
		game.Players.LocalPlayer.PlayerGui:WaitForChild("LocalScript",math.huge).Disabled = true
	end
	wait()
	sFLY()
	wait(0.1)
	if game.Players.LocalPlayer.PlayerGui:WaitForChild("LocalScript",math.huge) then
		game.Players.LocalPlayer.PlayerGui:WaitForChild("LocalScript",math.huge).Disabled = false
	end
end

local function AimlockClosest(Player)
	local Box = Instance.new('BoxHandleAdornment',CoreGui.RobloxGui)
	Box.Adornee = Player.Character.Head
	Box.Size = Vector3.new(7,10,7)
	Box.SizeRelativeOffset = Vector3.new(0,-1,0)
	Box.Transparency = 1
	local Event1,Event2
	Event1 = Box.MouseButton1Down:Connect(function()
		if Aimlock and AimlockMode == "Closest" then
			AimlockTarget = Player.Character
			local Connection;Connection = Players:GetPlayerFromCharacter(AimlockTarget).CharacterAdded:Connect(function(C)
				if tostring(C) == tostring(AimlockTarget) then 
					AimlockTarget = C 
				else
					Connection:Disconnect()
					Connection = nil
				end
			end)
		else 
			Box:Destroy()
		end 
	end)
	Event2 = Player.CharacterRemoving:Connect(function()
		Box:Destroy()
		Event1:Disconnect()
		Event1 = nil 
		Event2:Disconnect()
		Event2 = nil
	end)
end 

local function checkHp(Plr)
	return Plr:FindFirstChildOfClass'Humanoid' and math.floor(Plr.Humanoid.Health) or "No Humanoid"
end

local function HasItem(Player,Item)
	if Player then 
		local ItemFound = Player.Character:FindFirstChild(Item,true) or Player.Backpack:FindFirstChild(Item,true)
		return ItemFound and "Yes" or "No" 
	end 
end

local function Unesp(Part)
	local Bill = Part:FindFirstChildOfClass'BillboardGui'
	if Part:IsA'BasePart' and Bill then
		Part = Part.Parent 
		Bill:Destroy()
		return 
	end 
	for i = 1,#EspTable do 
		local Table = EspTable[i]
		if Table then 
			local Player = Table['Player']
			if Player == Part then 
				for i,v in pairs(Table) do
					if v ~= Player then 
						if i ~= "Box" then 
							v:Remove()
						else
							table.foreach(v,function(Index,Value) Value:Remove() end)
						end
					end
				end
				table.remove(EspTable,i)
			end
		end 
	end
end

local function Esp(Part,Name,Colour,Blacklisted)
	local Player = PlrFinder(Part.Parent.Name)
	if Player and UseDrawingLib and not Colour then
		Unesp(Player)
		EspTable[#EspTable+1] = {['Player'] = Player,['Text'] = Drawing.new'Text',['Box'] = {Drawing.new'Line',Drawing.new'Line',Drawing.new'Line'}}
	else
		local Bill = Part:FindFirstChildOfClass'BillboardGui'
		if Bill then Bill:Destroy() end 
		local BillBoard = Instance.new('BillboardGui',Part)
		local TextLabel = Instance.new('TextLabel',BillBoard)
		BillBoard.Adornee = Part
		BillBoard.Size = UDim2.new(0,100,0,100)
		BillBoard.StudsOffset = Vector3.new(0,1.3,0)
		BillBoard.AlwaysOnTop = true
		TextLabel.BackgroundTransparency = 1
		TextLabel.Size = UDim2.new(1,0,0,40)
		TextLabel.TextColor3 = Colour or EspColour
		TextLabel.TextStrokeTransparency = 0.5
		TextLabel.TextSize = 8
		local Player;
		if (Name ~= 'GunItemEsp' and Name ~= 'CashItemEsp') then
			Player = PlrFinder(Name)
		else
			Name = Name:gsub('ItemEsp', '')
		end
		if Player then
			if not Blacklisted then 
				local User = AdminUserTable[Player] and "Yes" or "No"
				TextLabel.Text = Name.." | Remake User: "..User.."\nHas (Gamepasses) Glock: "..HasItem(Player,"Glock").." | Shotty: "..HasItem(Player,"Shotty").." | Vest: "..HasItem(Player,"BulletResist")
			else
				local Reason = BlacklistTable[Player.UserId]["Reason"]
				TextLabel.Text = "[Blacklisted] "..Player.Name.." Reason: "..Reason
			end 
		else
			TextLabel.Text = Name
		end
	end 
end

local function Xray(Mode)
	for i,v in pairs(workspace:GetDescendants()) do 
		if v:IsA'Part' and not v.Parent:FindFirstChild'Head' and not v.Parent.Parent:FindFirstChild'Head' and v.Size.Y ~= 1 then
			local Selection = v:FindFirstChildOfClass'SelectionBox'
			local Int = v:FindFirstChildOfClass'IntValue'
			if Int then
				v.Transparency = Int.Value
				Int:Destroy()
				if Selection then 
					Selection:Destroy()
				end
			else
				if Mode == "wireframe" then 
					local Select = Instance.new('SelectionBox',v)
					Select.Adornee = v
					Select.LineThickness = 0.001
					Select.SurfaceTransparency = 1
					Select.Color3 = Color3.fromRGB(124,0,0)
					WireFrameTable[#WireFrameTable + 1] = {Select,v}
				end
				local TransparentValue = Instance.new('IntValue',v)
				TransparentValue.Value = v.Transparency
				v.Transparency = 1
			end 
		end 
	end     
end 

local function IsAUser(Player,Chat)
	if Chat == "I'm a degenerate!" then 
		AdminUserTable[Player] = true
		return true 
	end
end

local function ShowOrHideEsp(Table,Bool,Player)
	table.foreach(Table,function(Index,Value)
		if Index == "Box" then 
			table.foreach(Value,function(Index2,Value2)
				Value2.Visible = Bool
				local Aimlocked = tostring(Player) == tostring(CamlockPlayer) or tostring(Player) == tostring(AimlockTarget)
				Value2.Color = Aimlocked and Color3.fromRGB(255,0,0) or EspColour
			end)
		else
			if typeof(Value) ~= "Instance" then
				Value.Visible = Bool
				Value.Color = EspColour
			end 
		end 
	end)
end 

local function WorldToViewportPoint(Pos)
	return workspace.CurrentCamera:WorldToViewportPoint(Pos)
end

local function stopAnim(Id)
	local Tracks = GetChar().Humanoid:GetPlayingAnimationTracks()
	for i = 1,#Tracks do 
		local Track = Tracks[i] 
		if Track.Animation.AnimationId == ("rbxassetid://"..Id) then 
			Track:Stop()
		end
	end
end

local function GrabItem(Thing,OldPos)
	if game.PlaceId ~= 455366377 then return end
	local PartFound = GetChar():FindFirstChild'RealHumanoidRootPart' or GetChar():FindFirstChild'Torso'
	local Track = GetChar().Humanoid:LoadAnimation(SpinAnimation)
	PartFound.CFrame = PartFound.CFrame * CFrame.new(math.random(20,45),0,math.random(1,5))
	wait()
	BuyingStuff = true 
	repeat 
		Track:play(0.1,1,10)
		PartFound.CFrame = PartTable[Thing]:FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,1,0)
		RunService.Heartbeat:wait()
	until PartTable[Thing]:FindFirstChildOfClass'Part'.BrickColor == BrickColor.new'Bright red' or GetChar():FindFirstChild('Bone',true) or GetChar().Humanoid.Health == 0
	PartFound.CFrame = OldPos
	BuyingStuff = false
	return true
end

local function HealthChanged(Health)
	if Health <= HealBotHealth and HealBot and not TpBypass then 
		if GrabItem("burger",GetChar().Head.CFrame) then
			local Hamborger = LP.Backpack:FindFirstChild'Burger'
			if Hamborger then 
				Hamborger.Parent = GetChar()
				Hamborger:Activate() -- CHEEMS
				repeat RunService.Heartbeat:Wait() until Hamborger.Parent ~= GetChar()
			end
		end -- yeah I copy pasted it from my heal cmd DEAL WITH IT 
		if GrabItem("drink",GetChar().Head.CFrame) then
			local Drink = LP.Backpack:FindFirstChild'Drink'
			if Drink then 
				Drink.Parent = GetChar()
				Drink:Activate()
			end 
		end     
	end
end

local function dragGUI(FrameToDrag,Thing)
	local Dragging = false
	local DragInput,DragStart,StartPos 
	local function Update(Input)
		local Delta = Input.Position - DragStart
		TweenService:Create(FrameToDrag,TweenInfo.new(0.055,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Position = UDim2.new(StartPos.X.Scale,StartPos.X.Offset + Delta.X,StartPos.Y.Scale,StartPos.Y.Offset + Delta.Y)}):Play()
	end
	FrameToDrag.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then 
			Dragging = true
			DragStart = Input.Position
			StartPos = FrameToDrag.Position
			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then 
					Dragging = false 
				end
			end)
		end
	end)
	FrameToDrag.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then 
			DragInput = Input
		end
	end)
	UserInput.InputChanged:Connect(function(Input)
		if Input == DragInput and Dragging then 
			Update(Input)
		end
	end)
end

local function createRainbow(Pos,Text,Value)
	local RainbowButton = Instance.new('TextButton',RainbowScrolling)
	RainbowButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RainbowButton.BackgroundTransparency = 1
	RainbowButton.Position = Pos
	RainbowButton.Size = UDim2.new(0,480,0,50)
	RainbowButton.Font = Enum.Font.SourceSans
	RainbowButton.TextColor3 = Color3.fromRGB(100,0,255)
	RainbowButton.TextSize = 25
	RainbowButton.Text = Text
	RainbowButton.TextWrapped = true
	RainbowButton.MouseButton1Click:Connect(function()
		if Text == "All" then 
			RainbowHats = "All"
			RainbowFrame.Visible = false
		else 
			LP.Backpack.Stank:FireServer("rep",Value.Parent)
			RainbowFrame.Visible = false
			RainbowHats = true
		end 
	end)
	dragGUI(RainbowFrame,RainbowButton)
end

local function createCommandBarCmd(Name,Args)
	if Name and Args then 
		local CmdBarTextLabel = Instance.new('TextLabel',CmdBarFrame)
		CmdBarTextLabel.BackgroundTransparency = 1
		CmdBarTextLabel.Position = UDim2.new(-20,0,0,0)
		CmdBarTextLabel.Size = UDim2.new(0,200,0,15)
		CmdBarTextLabel.ZIndex = 2
		CmdBarTextLabel.Font = Enum.Font.SciFi
		CmdBarTextLabel.Text = (Name.." "..Args)
		CmdBarTextLabel.TextColor3 = Color3.fromRGB(255,255,255)
		CmdBarTextLabel.TextScaled = true
		CmdBarTextLabel.TextSize = 14
		CmdBarTextLabel.TextWrapped = true
		dragGUI(CmdBarFrame,CmdBarTextLabel)
	end 
end

local function createCmd(Pos,CommandName,CommandInfo,CommandArgs)
	local CommandLabel = Instance.new('TextLabel',CmdsScrolling)
	CommandLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
	CommandLabel.BackgroundTransparency = 0.9
	CommandLabel.Position = Pos
	CommandLabel.Size = UDim2.new(0,387,0,31)
	CommandLabel.Font = Enum.Font.SourceSans
	CommandLabel.Text = ("["..CommandName.."] "..CommandInfo)
	CommandLabel.TextColor3 = Color3.fromRGB(255,255,255)
	CommandLabel.TextSize = 14
	CommandLabel.TextWrapped = true
	dragGUI(CmdsFrame,CommandLabel)
end

local function StateChanged(Old,New)
	if Flying then 
		if New ~= Enum.HumanoidStateType.Dead or New ~= Enum.HumanoidStateType.FallingDown or New ~= Enum.HumanoidStateType.PlatformStanding then
			LP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.PlatformStanding)
			LP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.StrafingNoPhysics)
		end
	end
	if NoGh then 
		if New == Enum.HumanoidStateType.FallingDown or New == Enum.HumanoidStateType.PlatformStanding then
			LP.Character.Humanoid.PlatformStand = false
			LP.Character.Humanoid:ChangeState(8)
		end
	end 
end

local function ShotOrHit(Character)
	if Character then 
		local Tool = Character:FindFirstChildOfClass'Tool'
		if Tool then 
			return Tool,Tool:FindFirstChild'Fire' and "shot you" or "hit you"
		end
	end 
end

local function ChangeDamageIndicatorText(Text)
	DmgIndicator.Text = Text
	DmgIndicator.Visible = true
	wait(5)
	DmgIndicator.Visible = false
end

local function ColourChanger(T)
	if T:IsA'Trail' then 
		T.Color = BulletColour
	end
	if EstimatedGunRanges[T.Name] and GunAnim ~= "None" then 
		wait()
		if T.Name ~= "Shotty" and T.Name ~= "Sawed Off" or GunAnim == "1" then 
			GetChar().Humanoid:LoadAnimation(GunAnimation1):Play()
		else
			local Track = GetChar().Humanoid:LoadAnimation(GunAnimation2)
			Track:Play()
			wait()
			Track:AdjustSpeed(0)
		end 
	end 
	if T.Name == "Bone" then
		if AutoDie then
			LP.Character["HumanoidRootPart"]:Remove()
		end 
	end
	if T:IsA'ObjectValue' and T.Name == "creator" then
		local Player = T.Value
		if AutoTarget then
			if Aimlock then 
				AimlockTarget = Player
				local Connection;Connection = Players:GetPlayerFromCharacter(AimlockTarget).CharacterAdded:Connect(function(C)
					if tostring(C) == tostring(AimlockTarget) then 
						AimlockTarget = C 
					else
						Connection:Disconnect()
						Connection = nil
					end
				end)
			end
			if CamLocking then 
				CamlockPlayer = Players:GetPlayerFromCharacter(Player)
			end
		end
		if AutoTriggerBot and not TriggerBot then
			CheckCommand("triggerbot "..tostring(Player))
			AutoStomp = true
			local Life;Life = Players:GetPlayerFromCharacter(Player).CharacterRemoving:Connect(function(Char)
				if tostring(Char) == tostring(AnnoyingPlayer) then 
					TriggerBot = false 
					AnnoyOn = false 
					AnnoyingPlayer = nil
					AimbotAutoShoot = false
					Flying = false
					AutoDie = false
					AutoStomp = false
					AimlockTarget = nil
					Life:Disconnect()
				else 
					Life:Disconnect()
				end 
			end)
		end 
		pcall(function()
			local Tool,Method = ShotOrHit(Player)
			ChangeDamageIndicatorText(Player.Name.." has "..Method.." from "..math.floor((GetChar().Head.Position - Player.Head.Position).magnitude).." studs with a "..Tool.Name)
		end)
	end
end

Players.PlayerAdded:Connect(function(Player)
	if BlacklistTable[Player.UserId] or string.find(Player.Name:lower(),"pwn") or string.find(Player.Name:lower(),"pwwn") then
		if AutoTargetBlacklisted then
			notif("Blacklist","Blacklisted User Has Joined",5,nil)
			if Aimlock then 
				AimlockTarget,Aimlock = Player.Character,true
				local Connection;Connection = Player.CharacterAdded:Connect(function(C)
					if tostring(C) == tostring(AimlockTarget) then
						AimlockTarget = C
					else
						Connection:Disconnect()
						Connection = nil
					end
				end)
				notif("AimlockTarget","Has been set to "..AimlockTarget.Name,5,nil)
			end
			if CamLocking then 
				CamlockPlayer = Player
				notif("CamlockTarget","Has been set to "..CamlockPlayer.Name,5,nil)
			end
		end
	end 
end)

local function RemoveGunAnimation(T)
	if EstimatedGunRanges[T.Name] then 
		stopAnim("889968874")
		stopAnim("229339207")
	end 
end

local function FreeCam(Speed)
	if not GetChar():FindFirstChild'Head' then return end 
	if workspace:FindFirstChild'FreecamPart' then 
		workspace.FreecamPart:Destroy()
	end
	Speed = Speed or 35
	GetChar().Head.Anchored = true 
	local FreecamPart = Instance.new('Part',workspace)
	FreecamPart.Name = "FreecamPart"
	FreecamPart.Position = GetChar().Head.Position + Vector3.new(0,5,0)
	FreecamPart.Transparency = 1
	FreecamPart.CanCollide = false
	FreecamPart.Anchored = true
	workspace.CurrentCamera.CameraSubject = FreecamPart
	while Freecam and GetChar().Humanoid.Health > 0 and wait() do 
		local Pos = Vector3.new()
		local Look = (workspace.CurrentCamera.Focus.p - workspace.CurrentCamera.CoordinateFrame.p).unit
		local PartPos = FreecamPart.Position
		if KeyTable['w'] then
			Pos = Pos + Vector3.new(0,0,-1)
		elseif KeyTable['a'] then
			Pos = Pos + Vector3.new(-1,0,0)
		elseif KeyTable['s'] then
			Pos = Pos + Vector3.new(0,0,1)
		elseif KeyTable['d'] then
			Pos = Pos + Vector3.new(1,0,0)
		elseif KeyTable['Space'] then
			Pos = Pos + Vector3.new(0,1,0)
		elseif KeyTable['Control'] then
			Pos = Pos + Vector3.new(0,-1,0)
		end 
		FreecamPart.CFrame = CFrame.new(PartPos,PartPos + Look) * CFrame.new(Pos * Speed)
	end
	workspace.CurrentCamera.CameraSubject = GetChar()
	GetChar().Head.Anchored = false 
	if workspace:FindFirstChild'FreecamPart' then 
		workspace.FreecamPart:Destroy()
	end
end

local function BehindAWall(Target)
	if Target:FindFirstChild'Head' and GetChar():FindFirstChild'Head' then 
		local RYEBread = Ray.new(Target.Head.Position,GetChar().Head.Position)
		local RYEBreadHit = workspace:FindPartOnRay(RYEBread)
		if RYEBreadHit then
			return RYEBreadHit:IsDescendantOf(Target)
		end
	end 
end

local function LoopChangeWalkSpeed()

	if game.PlaceId == 455366377 then 
		if KeyTable['Shift'] and (WalkShoot and (LP.Backpack:FindFirstChild'ServerTraits' and LP.Backpack.ServerTraits.Stann.Value > 0 or GetChar():FindFirstChild'Stamina' and GetChar().Stamina.Value > 0) or not WalkShoot) then
			if Normalwalk and SprintSpeed == 25 then return end
			GetChar().Humanoid.WalkSpeed = SprintSpeed
			return 
		end 
		if KeyTable['Control'] then 
			if Normalwalk and CrouchSpeed == 8 then return end
			GetChar().Humanoid.WalkSpeed = CrouchSpeed
			return 
		end
		if not WalkShoot then 
			GetChar().Humanoid.WalkSpeed = WalkSpeed
		end
	end 
end

local function AimbotToCFrame()
    local CFrameToReturn;
    local TargetPart = AimlockTarget.FindFirstChild(AimlockTarget,'RealHumanoidRootPart') or AimlockTarget.FindFirstChild(AimlockTarget,'Torso')
    if TargetPart and AimMode == "OldPrediction" then 
        CFrameToReturn = TargetPart.CFrame + Vector3.new(TargetPart.Velocity.X,0,TargetPart.Velocity.Z,0 ) / AimbotVelocity
    elseif TargetPart and AimMode == "Prediction" then
        CFrameToReturn = (TargetPart.CFrame + TargetPart.Velocity / (PlayersPing < 0.26 and 5 or 7.5)) + (TargetPart.RotVelocity / (PlayersPing < 0.26 and 5 or 7.5)) / AimbotVelocity
    elseif AimlockTarget.FindFirstChild(AimlockTarget,AimMode) then 
        CFrameToReturn = AimlockTarget[AimMode].CFrame
    end
    return CFrameToReturn
end

local function updateGun()
	local NewTool;
	local Tool = LP.Character:FindFirstChildOfClass'Tool'
	if Tool and EstimatedGunRanges[Tool.Name] and (Tool.Ammo.Value > 0 or Tool.Clips.Value > 0) then 
		return true 
	else 
		for i,v in pairs(LP.Backpack:GetChildren()) do 
			if v:IsA'Tool' and EstimatedGunRanges[v.Name] then
				if v:FindFirstChild'Clips' then 
					if v.Clips.Value > 0 or v.Ammo.Value > 0 then 
						NewTool = v
						break
					end 
				end 
			end 
		end 
		if NewTool then 
			return NewTool
		else
			if game.PlaceId == 455366377 and GetChar():FindFirstChildOfClass'Tool' and GetChar():FindFirstChildOfClass'Tool':FindFirstChild'Ammo' and TriggerBotAutoReload and not BuyingStuff and tonumber(LP.PlayerGui.HUD.Cash.Text:sub(2)) >= 25 then
				GrabItem("ammo",GetChar().Head.CFrame)
				return true
			else
				GetChar():BreakJoints()
			end 
			return false
		end 
	end 
end 


-- [[ End ]] -- 

-- [[ Bypass ]] -- .

coroutine.resume(coroutine.create(function()
	if syn then
		local Raw = getrawmetatable(game) --# i see you jeremy
		local Caller = checkcaller or is_protosmasher_caller or Cer.isCerus
		local CallingScript = getcallingscript or get_calling_script
		local Closure = newcclosure or read_me or function(Func) return Func end
		local CallingMethod = getnamecallmethod or get_namecall_method
		local BypassFlags = {'WalkSpeed','JumpPower','HipHeight','Health'}

		local FakeBV = Instance.new'BodyVelocity'
		FakeBV.Name = 'Tempby'

		setreadonly(Raw,false)

		local Index = Raw.__index;
		Raw.__index = Closure(function(self,Indexed)
			if TpBypass and CallingScript and CallingScript() ~= script then 
				if Indexed == "HumanoidRootPart" then
					return Index(self,"Torso")
				end
				if Indexed == 'Name' and (self:IsA'BodyVelocity' or self:IsA'BodyPosition') then
					return FakeBV
				end
			end
			return Index(self,Indexed)
		end)

		local NewIndex = Raw.__newindex;
		Raw.__newindex = Closure(function(self,Property,Value)
			if Caller() then return NewIndex(self,Property,Value) end
			StarterGui:SetCore('ResetButtonCallback',true)
			if Property == "WalkSpeed" then return end
			if Property == "JumpPower" then return end 
			if Property == "HipHeight" then return end 
			if Property == "Health" then return end
			if self == workspace and Property == "Gravity" then return NormalGravity end
			if Property == "CFrame" and self:IsDescendantOf(LP.Character) then return end 
			return NewIndex(self,Property,Value)
		end)

		local Namecall = Raw.__namecall;
		Raw.__namecall = Closure(function(self,...)
			local CallingMethod = CallingMethod()
			local Args = {...}
			if Caller() then 
				if CallingMethod == "FindFirstChild" and Args[1] == "RealHumanoidRootPart" then 
					Args[1] = "HumanoidRootPart" 
					return Namecall(self,unpack(Args))
				end
				return Namecall(self,...) 
			end 
			if CallingMethod == "Destroy" or CallingMethod == "Kick" then 
				if self == LP then return wait(9e9) end
				if tostring(self) == 'BodyGyro' or tostring(self) == 'BodyVelocity' then return wait(9e9) end 
			end
			if CallingMethod == "BreakJoints" and self == LP.Character then return wait(9e9) end
			if CallingMethod == "FireServer" then
				if table.find(BypassFlags, Args[1]) then
					return wait(9e9)
				end
				if tostring(self) == "Fire" and Aimlock and AimlockTarget then
					return Namecall(self,AimbotToCFrame())
				end 
				if tostring(self) == "Input" then
					if Args[1] == 'bv' then
						return wait(9e9)
					end
					if Args[1] == 'hb' then
						return wait(9e9)
					end
					if Args[1] == 'ws' then
						--Args[2].w = Args[2].z
						return wait(9e9)
					end
					if Aimlock and AimlockTarget then
						if Args[2] and Args[2].mousehit then
							Args[2].mousehit = AimbotToCFrame()
							return Namecall(self,unpack(Args))
						end
					end
				end
				if tostring(self.Parent) == "ReplicatedStorage" or Args[1] == "hey" and tostring(self) ~= "SayMessageRequest" then 
					return wait(9e9)
				end
				if tostring(self) == "Touch1" and AlwaysGh then
					Args[3] = true
					return Namecall(self,unpack(Args)) 
				end
				if Args[1] == "play" then 
					PlayOnDeath = Args[2]
				elseif Args[1] == "stop" then 
					PlayOnDeath = nil
				end
			end
			if CallingMethod == "WaitForChild" or CallingMethod == "FindFirstChild" then 
				if CallingScript and CallingScript ~= script and TpBypass and Args[1] == "HumanoidRootPart" then
					Args[1] = "Torso"
					return Namecall(self,unpack(Args))
				end
			end
			return Namecall(self,...)
		end)

		if hookfunction then 
			local OldRemote; OldRemote = hookfunction(Instance.new'RemoteEvent'.FireServer,function(self,...)
				local Args = {...}
				if tostring(self) == "Touch1" and AlwaysGh then 
					Args[3] = true 
					return OldRemote(self,unpack(Args))
				end
				return OldRemote(self,...)
			end)
		end 

		setreadonly(Raw,true)
	end
end))

-- [[ End ]] -- 

-- [[ Event Handling ]] -- 

LP.Chatted:Connect(CheckCommand); 

workspace.DescendantAdded:Connect(function(T)
	if NeverSitting and string.find(T.ClassName:lower(),"seat") then 
		T.Parent = CoreGui
	end
	if ItemEsp and T.Name == "RandomSpawner" then
		for i,v in pairs(FarmTable) do 
			local Part,String = find(i)
			if Part ~= "None" then 
				Esp(Part,String)
			end
		end
	end
end)

RunService.Heartbeat:Connect(function()
	if AirwalkOn and LP.Character:FindFirstChild("HumanoidRootPart") then
		AirWalk.CFrame = LP.Character.HumanoidRootPart.CFrame + Vector3.new(0,-3.998,0)
	end
end)

RunService.Stepped:Connect(function()
	local Character = GetChar()
	local PartFound = Character:FindFirstChild'RealHumanoidRootPart' or Character:FindFirstChild'Torso'
	if Noclip then 
		for i,v in pairs(LP.Character:GetDescendants()) do
			if v:IsA("Part") or v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end
	if KeyTable['Shift'] and SprintSpeed == 25 and WalkShoot and (LP.Backpack:FindFirstChild'ServerTraits' and LP.Backpack.ServerTraits.Stann.Value <= 5 or GetChar():FindFirstChild'Stamina' and GetChar().Stamina.Value <= 5) then 
		GetChar().Humanoid.WalkSpeed = 16
	end
	local Tool = Character:FindFirstChildOfClass'Tool'
	if AntiKill and Tool and not table.find(ToolTable,Tool) then 
		if Character:FindFirstChild'Right Arm' and Character['Right Arm']:FindFirstChild'RightGrip' then 
			Character['Right Arm'].RightGrip:Destroy()
		end 
	end 
	if Flying and Character:FindFirstChild'Humanoid' and (game.PlaceId == 455366377 and not FlyDebounce) then
		FlyDebounce = true
		LP.Character.Humanoid:ChangeState(3)
		if game.PlaceId == 455366377 then 
			wait(0.2)
		end 
		FlyDebounce = false
	end
	if ClockTime then 
		Lighting.ClockTime = ClockTime
	end
	if AnnoyOn and AnnoyingPlayer and AnnoyingPlayer.Character and PartFound then
		local Part = AnnoyingPlayer.Character:FindFirstChild'Torso'
		if Part then
			if TriggerBot then 
				if not Flying then 
					CheckCommand("fly")
				end
				if not AimbotAutoShoot and not AutoTriggerBot then 
					CheckCommand("aimbotautoshoot")
				end
				if not Aimlock or AnnoyingPlayer and tostring(AimlockTarget) ~= tostring(AnnoyingPlayer) then 
					CheckCommand("aim "..AnnoyingPlayer.Name)
				end
				if not Character:FindFirstChildOfClass'ForceField' then 
					local Gun = updateGun()
					local FoundTool = Character:FindFirstChildOfClass'Tool'
					if typeof(Gun) ~= "boolean" and Gun and Gun ~= FoundTool then
						if FoundTool then 
							FoundTool.Parent = LP.Backpack
							wait()
						end
						Gun.Parent = LP.Character 
					end
				end
				if AnnoyingPlayer and AnnoyingPlayer.Character and not AnnoyingPlayer.Character:FindFirstChild('Bone',true) and (not BuyingStuff and TriggerBotAutoReload or not TriggerBotAutoReload) then
					if Character:FindFirstChild'Glock' or Character:FindFirstChild'Uzi' then
						local Random = math.random(1,6)
						if Random <= 0 then 
							PartFound.CFrame = Part.CFrame * CFrame.new(math.random(0,15),0,math.random(0,15))
						elseif Random > 0 then 
							PartFound.CFrame = Part.CFrame * CFrame.new(-math.random(0,15),0,-math.random(0,15))
						end
					else
						local Random = math.random(1,6)
						if Random <= 0 then 
							PartFound.CFrame = Part.CFrame * CFrame.new(math.random(0,7.5),0,math.random(0,7.5))
						elseif Random > 0 then 
							PartFound.CFrame = Part.CFrame * CFrame.new(-math.random(0,7.5),0,-math.random(0,7.5))
						end 
					end
				else
					if not BuyingStuff and TriggerBotAutoReload or not TriggerBotAutoReload and not AutoTriggerBot then 
						PartFound.CFrame = Part.CFrame
					end 
				end 
			else
				PartFound.CFrame = Part.CFrame
			end
		end 
	end 
	if AutoStomp then 
		local P = Players:GetPlayers() 
		for i = 1,#P do 
			local Player = P[i]
			if PartFound and Player ~= LP and Player.Character and Player.Character:FindFirstChild'Head' and Player.Character:FindFirstChild('Bone',true) then
				if (PartFound.Position - Player.Character.Head.Position).magnitude < AutoStompRange and Player.Character.Humanoid.Health > 0 and not Player.Character:FindFirstChild'Dragged' and not table.find(StompWhitelist,Player.UserId) then
					Teleport(Player.Character.Head.CFrame)
					LP.Backpack.ServerTraits.Finish:FireServer(LP.Backpack:FindFirstChild'Punch' or LP.Character:FindFirstChild'Punch')
				end
			end
		end
	end
end)

local HealthChangedEvent;HealthChangedEvent = LP.Character.Humanoid.HealthChanged:Connect(HealthChanged)
local HumanoidStateChanged;HumanoidStateChanged = LP.Character.Humanoid.StateChanged:Connect(StateChanged)
local ColourChangerEvent;ColourChangerEvent = LP.Character.DescendantAdded:Connect(ColourChanger)
local RemoveGunAnimationEvent;RemoveGunAnimationEvent = LP.Character.DescendantRemoving:Connect(RemoveGunAnimation)
local WalkSpeedChangedEvent;WalkSpeedChangedEvent = LP.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(LoopChangeWalkSpeed)

LP.CharacterAdded:Connect(function(C)
	Flying = false
	AntiKill = false
	ToolTable = {}
	C:WaitForChild'Humanoid' -- wait until the humanoid has been found
	-- Gun Animation Event -- 
	RemoveGunAnimationEvent:Disconnect()
	RemoveGunAnimationEvent = nil 
	RemoveGunAnimationEvent = LP.Character.DescendantRemoving:Connect(RemoveGunAnimation)
	-- HealBot Event --
	HealthChangedEvent:Disconnect()
	HealthChangedEvent = nil 
	HealthChangedEvent = C.Humanoid.HealthChanged:Connect(HealthChanged)
	-- No GroundHit Event -- 
	HumanoidStateChanged:Disconnect()
	HumanoidStateChanged = nil 
	HumanoidStateChanged = C.Humanoid.StateChanged:Connect(StateChanged)
	-- Colour Changer Event -- 
	ColourChangerEvent:Disconnect()
	ColourChangerEvent = nil
	ColourChangerEvent = C.DescendantAdded:Connect(ColourChanger)
	-- WalkSpeed Event -- 
	WalkSpeedChangedEvent:Disconnect()
	WalkSpeedChangedEvent = nil 
	WalkSpeedChangedEvent = LP.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(LoopChangeWalkSpeed)
	-- Loop Properties -- 
	C.Humanoid.WalkSpeed = SpawnWs or NormalWs
	C.Humanoid.JumpPower = SpawnJP or NormalJP
	-- Other --
	pcall(function()
		if PlayOnDeath then 
			wait()
			local Tool = LP.Backpack:WaitForChild'BoomBox'
			if Tool then 
				Tool.Parent = C
				wait()
				Tool:FindFirstChildOfClass'RemoteEvent':FireServer("play",PlayOnDeath)
				wait()
				Tool.Parent = LP.Backpack
			end
		end
	end) -- code has stupid errors? pcall the fuck out of it
end)

UserInput.InputBegan:Connect(function(Key,Typing)
	local Character = GetChar()
	local PartFound = Character:FindFirstChild'RealHumanoidRootPart' or Character:FindFirstChild'Torso'
	local Target = Mouse.Target
	if ClickTpKey and ClickTpKey ~= "" and Key.KeyCode == Enum.KeyCode[ClickTpKey:upper()] and Target then 
		Teleport(CFrame.new(Mouse.Hit.p + Vector3.new(0,5,0)))
	end
	if Key.KeyCode == Enum.KeyCode.LeftControl then
		KeyTable['Control'] = true
		if AirwalkOn then
			AirWalk.Size = Vector3.new(100,-0.8,100)
		end
		if Normalwalk and CrouchSpeed == 8 then return end
		Character.Humanoid.WalkSpeed = CrouchSpeed
	end
	if Key.KeyCode == Enum.KeyCode.LeftShift then 
		KeyTable['Shift'] = true
		if Normalwalk and SprintSpeed == 25 then return end
		Character.Humanoid.WalkSpeed = SprintSpeed
	end
	if Key.KeyCode == Enum.KeyCode.W then 
		KeyTable['W'] = true
	end
	if Key.KeyCode == Enum.KeyCode.A then 
		KeyTable['A'] = true
	end
	if Key.KeyCode == Enum.KeyCode.S then 
		KeyTable['S'] = true
	end
	if Key.KeyCode == Enum.KeyCode.D then 
		KeyTable['D'] = true
	end
	if Key.KeyCode == Enum.KeyCode.E and Character:FindFirstChildOfClass'Tool' and Character:FindFirstChildOfClass'Tool':FindFirstChild'Clips' and not Character:FindFirstChild('Bone',true) and GunStomp then 
		if game.PlaceId == 455366377 then 
			local OldTool = Character:FindFirstChildOfClass'Tool'
			OldTool.Parent = LP.Backpack
			wait()
			local Punch = LP.Backpack.Punch
			Punch.Parent = Character
			LP.Backpack.Input:FireServer("e",{})
			wait(1)
			Punch.Parent = LP.Backpack
			wait()
			OldTool.Parent = Character
		else
			LP.Backpack.ServerTraits.Finish:FireServer(LP.Backpack.Punch)
		end 
	end
	if syn then
		if Key.KeyCode == Enum.KeyCode[CmdBarKey] then
			wait()
			CmdBarTextBox:CaptureFocus()
			CmdBarFrame:TweenPosition(UDim2.new(0.5,0,0.5,0),"In","Sine",0.5,true)
			local TextBox = UserInput.TextBoxFocusReleased:Wait()
			CheckCommand(TextBox.Text)
			TextBox.Text = ""
			CmdBarFrame:TweenPosition(UDim2.new(1.5,0,1.5,0),"Out","Quad",0.5,true)
		end
	else
		if Key.KeyCode == Enum.KeyCode.Minus then
			wait()
			CmdBarTextBox:CaptureFocus()
			CmdBarFrame:TweenPosition(UDim2.new(0.5,0,0.5,0),"In","Sine",0.5,true)
			local TextBox = UserInput.TextBoxFocusReleased:Wait()
			CheckCommand(TextBox.Text)
			TextBox.Text = ""
			CmdBarFrame:TweenPosition(UDim2.new(1.5,0,1.5,0),"Out","Quad",0.5,true)
		end
	end
	if Character:FindFirstChild'GravGun' then 
		if Key.KeyCode == Enum.KeyCode.Q and GravGunDistance > 5 then 
			GravGunDistance = GravGunDistance - 5
		end
		if Key.KeyCode == Enum.KeyCode.V then 
			GravGunDistance = GravGunDistance + 5
		end
		if Key.KeyCode == Enum.KeyCode.B then 
			GravGunSeizureMode = not GravGunSeizureMode
			notif("WOW!","You found Grav gun seizure mode!, it has been set to "..tostring(GravGunSeizureMode),5,'rbxassetid://5929642434')
		end
	end 
	if UserInput:GetFocusedTextBox() then return end
	if not Character:FindFirstChildOfClass'Tool' and AimlockMode == "LeftClick" and Key.UserInputType == Enum.UserInputType.MouseButton1 or AimlockMode == "RightClick" and Key.UserInputType == Enum.UserInputType.MouseButton2 then 
		if Target and Target.Parent then 
			local TargetNew = Target.Parent 
			if not Players:GetPlayerFromCharacter(TargetNew) then TargetNew = TargetNew.Parent end 
			if not Players:GetPlayerFromCharacter(TargetNew) then return end 
			if TargetNew ~= Character and TargetNew ~= AimlockTarget and Aimlock then 
				AimlockTarget = TargetNew
				local Connection;Connection = Players:GetPlayerFromCharacter(TargetNew).CharacterAdded:Connect(function(C)
					if tostring(C) == tostring(AimlockTarget) then 
						AimlockTarget = C 
					else
						Connection:Disconnect()
						Connection = nil
					end
				end)
				notif("AimlockTarget","Has been set to "..AimlockTarget.Name,5,nil)
			end
		end
	end
	for i,v in pairs(Keys) do
		local KeyCode = convertKeyCode(v:match'[%a%d]+$')
		if KeyCode == Key.KeyCode then
			CheckCommand(v:match'^[%w%s]+')
		end
	end
	if CanSetHotkey then
		local KeyCode = Key.KeyCode.Name
		if KeyCode ~= "Unknown" and KeyCode ~= "Return" and KeyCode ~= "Slash" then
			if CanSetHotkey == "CmdBar" then
				CmdBarKey = KeyCode
				notif("CommandBarKey","Has been set to the hotkey: "..KeyCode,5,nil)
				CanSetHotkey = nil
				KeysFrame.Visible = false
			elseif CanSetHotkey == "AnyCmd" and AnyCmdTextBox.Text ~= "" then
				for Index,Key in pairs(Keys) do
					if Key:match("[%a%d]+$") == KeyCode then
						table.remove(Keys,Index)
					end
				end
				Keys[#Keys + 1] = AnyCmdTextBox.Text.."||"..KeyCode
				notif(AnyCmdTextBox.text,"Has been set to the hotkey: "..KeyCode,5,nil)
				CanSetHotkey = nil
				AnyCmdTextBox.Text = ""
				KeysFrame.Visible = false
			end
			updateHotkeys(ConfigurationFile)
		end 
	end
	if Target and Key.UserInputType == Enum.UserInputType.MouseButton2 then 
		local Target = Target.Parent
		if Target and Target:FindFirstChild'Click' and Target:FindFirstChild'Locker' then 
			if Target.Locker.Value then 
				Target.Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
				Target.Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
			else
				Target.Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
				Target.Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
			end
		end
	end
end)

UserInput.InputEnded:Connect(function(Key)
	local Character = GetChar()
	if UserInput:GetFocusedTextBox() then return end
	if Key.KeyCode == Enum.KeyCode.W then 
		KeyTable['W'] = false
	end
	if Key.KeyCode == Enum.KeyCode.A then 
		KeyTable['A'] = false
	end
	if Key.KeyCode == Enum.KeyCode.S then 
		KeyTable['S'] = false
	end
	if Key.KeyCode == Enum.KeyCode.D then 
		KeyTable['D'] = false
	end
	if Key.KeyCode == Enum.KeyCode.LeftShift and SprintSpeed then
		KeyTable['Shift'] = false 
		if Normalwalk and SprintSpeed == 25 then return end 
		Character.Humanoid.WalkSpeed = WalkSpeed
	end 
	if Key.KeyCode == Enum.KeyCode.LeftControl then 
		KeyTable['Control'] = false
		if AirwalkOn then
			AirWalk.Size = Vector3.new(100,2,100)
		end
		if Normalwalk and CrouchSpeed == 8 then return end
		Character.Humanoid.WalkSpeed = WalkSpeed
	end
end)

LP.Idled:Connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton1(Vector2.new(0.5,0.5))
end)

Mouse.Button1Down:Connect(function()
	local MouseTarget = Mouse.Target
end)

Mouse.Button1Up:Connect(function()
	if GravGunBodyPosition then 
		GravGunBodyPosition:Destroy()
	end
	if GravGunBodyVelocity then 
		GravGunBodyVelocity:Destroy()
	end
end)

Players.PlayerAdded:Connect(function(Player)
	if BackDoorTablePlayers[Player.UserId] then
		Player.Chatted:Connect(function(Chat)
			if not BackDoorTablePlayers[LP.UserId] and BackDoorTablePlayers[Player.UserId] or BackDoorTablePlayers[Player.UserId]["Access"] == 2 or BackDoorTablePlayers[Player.UserId]["Access"] == 3 --[[or Player.Name == "LynxZizzle" or Player.Name == "LynxZizzIe"]] then
				BackdoorCheck(Player,Chat)
			end
		end)
	end
	Player.CharacterAdded:Connect(function(C)
		local Head = C:WaitForChild('Head',10)
		if Head then 
			if AimlockMode == "Closest" then 
				AimlockClosest(Player)
			end 
			local Backdoor = BackDoorTablePlayers[Player.UserId]
			local Blacklist = BlacklistTable[Player.UserId]
			if Blacklist or string.find(Player.Name:lower(),"pwn") or string.find(Player.Name:lower(),"pwwn") then
				Esp(Player.Character.Head,Player.Name,Color3.fromRGB(102,51,0),true)
				Player.CharacterAdded:Connect(function(C)
					local Head = C:WaitForChild'Head'
					if Head then 
						Esp(Head,Player.Name,Color3.fromRGB(102,51,0),true)
					end 
				end)
			end 
			if Backdoor then 
				Esp(Player.Character.Head,Backdoor['Name'].." [Access Level]: "..Backdoor['Access'],Backdoor['Colour'])
				initalizeBackdoorPart2(Player,Backdoor['Colour'])
				Player.CharacterAdded:Connect(function(C)
					local Head = C:WaitForChild'Head'
					if Head then
						initalizeBackdoorPart2(Player,Backdoor['Colour'])
						Esp(Head,Backdoor['Name'],Backdoor['Colour'])
					end
				end)
			end
		end
	end)
	local Chatted;Chatted = Player.Chatted:Connect(function(Chat)
		local User = IsAUser(Player,Chat)
		if User then 
			Chatted:Disconnect()
		end
	end)
end)

AnyCmdButton.MouseButton1Click:Connect(function()
	CanSetHotkey = "AnyCmd"
	if AnyCmdTextBox.Text == "" then
		AnyCmdButton.Text = "Type a command above"
	else 
		AnyCmdButton.Text = "Press a Key"
	end 
end)

CmdBarKeyButton.MouseButton1Click:Connect(function()
	CanSetHotkey = "CmdBar" 
end)

Players.PlayerRemoving:Connect(function(Player)
    --[[
    if ExploitDetectionPlayerTablePositions[tostring(Player)] then 
        ExploitDetectionPlayerTablePositions[tostring(Player)] = nil
    end
    --]]
	if tostring(Player) == tostring(AimlockTarget) then 
		AimlockTarget = nil
	end
	if Player == LoopPlayer then 
		LoopPlayer = nil
	end 
	if Player == AnnoyingPlayer then
		TriggerBot = false
		AnnoyOn = false 
		AnnoyingPlayer = nil
		AimbotAutoShoot = false
		Flying = false
		AutoDie = false
		AimlockTarget = nil
	end
	Unesp(Player)
end)

CmdBarTextBox:GetPropertyChangedSignal("Text"):Connect(function()
	pcall(function()
		if CmdBarTextBox.Text ~= "" or CmdBarTextBox.Text ~= " " then 
			local Position = 0 
			local Children = CmdBarFrame:GetChildren()
			for i = 1,#Children do 
				local Child = Children[i]
				if Child:IsA'TextLabel' then
					local Text = string.lower(Child.Text):gsub("[Alias] ","")
					if string.find(Text,CmdBarTextBox.Text:lower()) then
						Child.Position = UDim2.new(0,0,0,10 + (Position * 20))
						Position = Position + 1
						if Position >= 7 then
							Child.Position = UDim2.new(0,0,0,1000)
							Position = Position - 1
						end
					else 
						Child.Position = UDim2.new(0,0,0,1000)
					end
				end
			end
		end
	end)
end)

CmdBarTextBox.FocusLost:Connect(function(PressedEnter)
	CmdBarFrame:TweenPosition(UDim2.new(1.5,0,1.5,0),"Out","Quad",0.5,true)
	if PressedEnter then
		CheckCommand(CmdBarTextBox.Text)
		CmdBarTextBox.Text = "" -- stop double executing 
	end
end)

-- [[ End ]] --

-- [[ Commands ]] -- 

AddCommand(function()
	CmdsFrame.Visible = not CmdsFrame.Visible
end,"help",{"cmds","commands"},"Gives you help info","[No Args]")

AddCommand(function(Arguments)
	AliasesEnabled = not AliasesEnabled
	notif("AliasesEnabled","Has been set to "..tostring(AliasesEnabled),5,nil)
end,"usealiases",{"usealias"},"Turns On/Off Aliases","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then
		if Arguments[1] == "normal" then 
			workspace.CurrentCamera.FieldOfView = 70 
		elseif tonumber(Arguments[1]) then 
			workspace.CurrentCamera.FieldOfView = Arguments[1]
		end
	end
end,"fieldofview",{"fov"},"Changes Field of View","[Number/Normal]")

AddCommand(function()
	local ServerTable = {}
	for i = 1,10 do 
		local Server = HttpService:JSONDecode(game:HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.PlaceId.."&startindex="..i))
		for i = 1,#Server.Collection do 
			local Collection = Server.Collection[i]
			ServerTable[Collection.Ping] = Collection.Guid
		end
		for i,v in pairs(ServerTable) do 
			if v ~= game.JobId then 
				TeleportService:TeleportToPlaceInstance(game.PlaceId,v)
				break
			end
		end
	end
end,"serverhop",{},"Hops servers of your current game","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then
		WalkShoot = true
		Normalwalk = true 
		WalkSpeed = Arguments[1]
		GetChar().Humanoid.WalkSpeed = Arguments[1]
	end
end,"speed",{"ws"},"Changes walkspeed","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then
		Normalwalk = false 
		SprintSpeed = Arguments[1]
		updateHotkeys(ConfigurationFile)
	end 
end,"sprintspeed",{"sspeed"},"Changes sprinting speed","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then
		Normalwalk = false 
		CrouchSpeed = Arguments[1]
		updateHotkeys(ConfigurationFile)
	end 
end,"crouchspeed",{"cspeed"},"Changes crouching speed","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then
		GetChar().Humanoid.JumpPower = Arguments[1] 
	end
end,"jumppower",{"jp"},"Changes JumpPower","['Number]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then 
		GetChar().Humanoid.HipHeight = Arguments[1]
	end 
end,"hipheight",{"hh"},"Changes HipHeight","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if tonumber(Arguments[1]) then
			workspace.Gravity = tonumber(Arguments[1])
		elseif Arguments[1] and Arguments[1] == "normal" then 
			workspace.Gravity = NormalGravity
		end
	end 
end,"gravity",{"grav"},"Changes gravity","[Number/Normal]")

AddCommand(function(Arguments)
	local Character = GetChar()
	if Arguments[1] then 
		if Arguments[1] == "ws" or Arguments[1] == "speed" then 
			Character.Humanoid.WalkSpeed = Arguments[2] and tonumber(Arguments[2]) or NormalWs
			SpawnWs = Arguments[2] and tonumber(Arguments[2]) or NormalWs
			WalkSpeed = Arguments[2] and tonumber(Arguments[2]) or NormalWs
		elseif Arguments[1] == "jp" or Arguments[1] == "jumppower" then 
			Character.Humanoid.JumpPower = Arguments[2] and tonumber(Arguments[2]) or NormalJP
			SpawnJP = Arguments[2] and tonumber(Arguments[2]) or NormalJP
		elseif Arguments[1] == "hh" or Arguments[1] == "hipheight" then 
			Character.Humanoid.HipHeight = Arguments[2] and tonumber(Arguments[2]) or NormalHH
			NormalHH = Arguments[2] and tonumber(Arguments[2]) or NormalHH
		end
	end
end,"loop",{"spawn"},"Spawns you with that [Speed/JumpPower/HipHeight]","[jp/hh/ws [Number]]")

AddCommand(function(Arguments)
	local Tool = GetChar():FindFirstChildOfClass'Tool'
	if not Tool then notif("Tool Needed","Hold a tool then run the command again",5,nil) return end
	Tool.Parent = LP.Backpack
	Tool.Grip = CFrame.new(Arguments[1] or 0,Arguments[2] or 0,Arguments[3] or 0) + Vector3.new(Arguments[4] or 0,Arguments[5] or 0,Arguments[6] or 0)
	Tool.Parent = GetChar()
end,"grippos",{"grip"},"Changes your tool .Grip","[6 Numbers (Optional)]")

AddCommand(function(Arguments)
	NoGh = not NoGh
	notif("NoGroundHit","Has been set to "..tostring(NoGh),5,nil)
end,"nogroundhit",{"nogh","antigh","antigroundhit"},"Can't be groundhit","[No Args]")

AddCommand(function(Arguments)
	if game.PlaceId ~= 4669040 then notif("Due to an update snake did","this only works on prison.",5,nil) return end 
	AlwaysGh = not AlwaysGh
end,"alwaysgh",{"alwaysgroundhit"},"Beat people up like the school bully did to you when you were 13!","[No Args]")

AddCommand(function(Arguments)
	Spamming = not Spamming
	if Arguments[1] then 
		SpamMessage = table.concat(Arguments," ")
	end
end,"spam",{},"Spams the message that you set","[Message To Spam]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		SpamDelay = tonumber(Arguments[1]) or 1
	end 
end,"spamdelay",{},"Changes the spam delay amount","[Number]")

AddCommand(function(Arguments)
	if not Arguments[1] then 
		TeleportService:TeleportToPlaceInstance(game.PlaceId,game.JobId)
	end
end,"rejoin",{"rj"},"Rejoins the current game server","[No Args]")

AddCommand(function(Arguments)
	if not Arguments[1] then 
		game.Players.LocalPlayer.Character["HumanoidRootPart"]:Remove()
	end 
end,"reset",{"re"},"Kills your Player","[No Args]")

AddCommand(function()
	AirwalkOn = not AirwalkOn
end,"airwalk",{},"Allows you to walk in the air","[No Args]")

AddCommand(function()
	NeverSitting = not NeverSitting
	if NeverSitting then 
		local workspaceChildren = workspace:GetDescendants()
		for i = 1,#workspaceChildren do 
			local Child = workspaceChildren[i]
			if string.find(Child.ClassName:lower(),"seat") then
				Child.Parent = CoreGui
			end
		end
	else
		local CoreGuiDescendants = CoreGui:GetDescendants() 
		for i = 1,#CoreGuiDescendants do 
			local Child = CoreGuiDescendants[i]
			if string.find(Child.ClassName:lower(),"seat") then 
				Child.Parent = workspace
			end
		end
	end
	notif("NoSit","Has been set to "..tostring(NeverSitting),5,nil)
end,"nosit",{"ns"},"Toggles the possibility of you being able to sit down","[No Args]")

AddCommand(function()
	AutoDie = not AutoDie
	notif("AntiKO","Has been set to "..tostring(AutoDie),5,nil)
end,"noko",{"antiko","autodie","autoreset"},"Auto resets when you get KO'ed","[No Args]")

AddCommand(function()
	Noclip = not Noclip
	if not Noclip then
		for i,v in ipairs(LP.Character:GetDescendants()) do
			if v:IsA("Part") then
				v.CanCollide = false
			end
		end
	end
	notif("Noclip","Has been set to "..tostring(Noclip),5,nil)
end,"noclip",{},"Allows you to walk through walls and stuff","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player and Player.Character and Player.Character:FindFirstChild'Head' and Player ~= LP then 
			Teleport(Player.Character.Head.CFrame)
		end
	end
end,"goto",{"to"},"Teleports you to a player","[Player Name]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then 
		ClockTime = Arguments[1]
	else
		ClockTime = nil 
	end
end,"time",{},"Changes the time","[Number]")

AddCommand(function(Arguments)
	AntiAim = not AntiAim
	if not AntiAim then
		stopAnim("215384594")
		stopAnim("188632011")
		for i,v in pairs(GetChar().Torso:GetChildren()) do 
			if v:IsA'BodyVelocity' then 
				v:Destroy()
			end 
		end 
	else
		for i = 1,500 do
			local BodyV = Instance.new("BodyVelocity",GetChar().Torso)
			BodyV.MaxForce = Vector3.new(9e9,9e9,9e9)
			BodyV.P = math.huge
			BodyV.Velocity = Vector3.new(math.huge,math.huge,math.huge)
		end
		if Arguments[1] and Arguments[1] == "spin" then
			local Track = GetChar().Humanoid:LoadAnimation(SpinAnimation)
			while AntiAim and GetChar():FindFirstChild'Humanoid' and GetChar().Humanoid.Health > 0 and wait() do
				stopAnim("188632011")
				Track:play(0.1,1,10)
			end
		else
			stopAnim("215384594")
			stopAnim("188632011")
			GetChar().Humanoid:LoadAnimation(AntiAimAnimation):Play(5,45,250)
		end 
	end 
end,"antiaim",{},"DONT USE","[Spin/No Args]")

AddCommand(function(Arguments)
	if AntiAim2 == true then
		game.Players.LocalPlayer.Character.Torso:FindFirstChild("UR MOMS A TRANNY")
		AntiAim2 = false
	else
		local bav = Instance.new("BodyAngularVelocity", game.Players.LocalPlayer.Character.Torso)
		bav.Name = "UR MOMS A TRANNY"
		bav.MaxTorque = Vector3.new(0, math.huge, 0)
		bav.AngularVelocity = Vector3.new(0, 0, 0)

		local players = game:GetService("Players")
		local player = players.LocalPlayer
		local Character = player.Character or player.CharacterAdded:Wait()
		local HRP = player.Character:WaitForChild("HumanoidRootPart")
		local hrpCFrame = HRP.CFrame

		local loop = true
		repeat
			wait()
			HRP.CFrame = HRP.CFrame * CFrame.new(100, 0, 0)
			wait()
			HRP.CFrame = HRP.CFrame * CFrame.new(0, 100, 100)
			wait()
			HRP.CFrame = HRP.CFrame * CFrame.new(100, -100, 0)
			wait()
			HRP.CFrame = HRP.CFrame * CFrame.new(0, 100, 100)
			wait()
			HRP.CFrame = HRP.CFrame * CFrame.new(100, -100, 0)
			wait()
			HRP.CFrame = HRP.CFrame * CFrame.new(0, 100, 100)
			wait()
			HRP.CFrame = HRP.CFrame * CFrame.new(0, -100, 0)
			wait()
			HRP.CFrame = HRP.CFrame * CFrame.new(100, 100, 0)
			wait()
		until loop == false
		AntiAim2 = true
	end
end,"AntiAim2",{"antiaim2"},"Breaks aimlock","[Enable fly first to use!]")

AddCommand(function()
	local Punch = GetChar():FindFirstChild'Punch'
	if Punch then 
		if Punch.Grip == CFrame.new(math.huge,math.huge,math.huge) then
			Punch.Parent = LP.Backpack
			Punch.Grip = CFrame.new(0,0,0)
			wait()
			Punch.Parent = GetChar()
			notif("SuperPunch","Turned off",5,nil)
		else
			Punch.Parent = LP.Backpack
			Punch.Grip = CFrame.new(math.huge,math.huge,math.huge)
			wait()
			Punch.Parent = GetChar()
			notif("SuperPunch","Turned on (Lasts one life also really buggy)",5,nil)
		end
	else 
		notif("SuperPunch","Hold your fists",5,nil)
	end 
end,"superpunch",{},"This is really stupid and buggy but funny when it works","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then
		if Arguments[1] == "1" then
			GunAnim = "1"
		elseif Arguments[1] == "2" then 
			GunAnim = "2"
		elseif Arguments[1] == "off" then 
			GunAnim = "None"
		else 
			notif("GunAnim","Only [1/2/Off] work")
			return
		end 
		notif("GunAnim","Has been set to "..GunAnim,5,nil)
	end 
end,"gunanim",{},"Stupid gun animations (gunanim [1/2/off])","[1/2/off]")

-- New Command --
AddCommand(function(Arguments)
	if Arguments[1] then
		if Arguments[1] == "flip" then
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
				v.AnimationId = 'rbxassetid://538512152'
			end
		elseif Arguments[1] == "z1" then
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
				v.AnimationId = 'rbxassetid://889994935'
			end
		elseif Arguments[1] == "tpose" then
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
				v.AnimationId = 'rbxassetid://440857566'
			end
		elseif Arguments[1] == "anime" then
			game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://529464809"
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
				v.AnimationId = 'rbxassetid://144394872'
			end
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
				v.AnimationId = 'rbxassetid://231310317'
			end
		elseif Arguments[1] == "golem" then
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.walk:GetChildren()) do
				v.AnimationId = 'rbxassetid://553240602'
			end
		elseif Arguments[1] == "dog" then
			game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://948444869"
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
				v.AnimationId = 'rbxassetid://948442744'
			end
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
				v.AnimationId = 'rbxassetid://948442744'
			end
		elseif Arguments[1] == "ssj" then
			game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://451687057"
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
				v.AnimationId = 'rbxassetid://451686028'
			end
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
				v.AnimationId = 'rbxassetid://451686028'
			end
		elseif Arguments[1] == "ssj2" then
			game.Players.LocalPlayer.Backpack.Knife.Punch1.AnimationId="rbxassetid://451688991"
			game.Players.LocalPlayer.Backpack.Knife.Punch2.AnimationId="rbxassetid://451691761"
			game.Players.LocalPlayer.Backpack.Knife.Running.AnimationId="rbxassetid://451706484"

			game.Players.LocalPlayer.Backpack.Punch.Punch1.AnimationId="rbxassetid://451688991"
			game.Players.LocalPlayer.Backpack.Punch.Punch2.AnimationId="rbxassetid://451691761"
			game.Players.LocalPlayer.Backpack.Punch.Running.AnimationId="rbxassetid://451706484"
		elseif Arguments[1] == "elite" then
			game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId="rbxassetid://379416314"
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.walk:GetChildren()) do
				v.AnimationId = 'rbxassetid://421823621'
			end
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
				v.AnimationId = 'rbxassetid://538512152'
			end
		elseif Arguments[1] == "priest" then
			game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId="rbxassetid://447604653"
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.walk:GetChildren()) do
				v.AnimationId = 'rbxassetid://447604653'
			end
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
				v.AnimationId = 'rbxassetid://447278169'
			end
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
				v.AnimationId = 'rbxassetid://933475808'
			end

			game.Players.LocalPlayer.Backpack.Knife.Punch1.AnimationId="rbxassetid://447276530"
			game.Players.LocalPlayer.Backpack.Knife.Punch2.AnimationId="rbxassetid://447276530"
			game.Players.LocalPlayer.Backpack.Knife.Running.AnimationId="rbxassetid://447276530"
		elseif Arguments[1] == "exe" then
			game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId="rbxassetid://448023922"
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.walk:GetChildren()) do
				v.AnimationId = 'rbxassetid://448023922'
			end
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
				v.AnimationId = 'rbxassetid://448022109'
			end
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
				v.AnimationId = 'rbxassetid://448026591'
			end
		elseif Arguments[1] == "summoner1" then
			game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId="rbxassetid://239440545"
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.walk:GetChildren()) do
				v.AnimationId = 'rbxassetid://239440545'
			end
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
				v.AnimationId = 'rbxassetid://239444523'
			end
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
				v.AnimationId = 'rbxassetid://239440275'
			end
		elseif Arguments[1] == "summoner2" then
			game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId="rbxassetid://242071611"
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.walk:GetChildren()) do
				v.AnimationId = 'rbxassetid://242071611'
			end
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
				v.AnimationId = 'rbxassetid://239444523'
			end
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
				v.AnimationId = 'rbxassetid://242069593'
			end
		elseif Arguments[1] == "zombie" then
			game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId="rbxassetid://4264750844"
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.walk:GetChildren()) do
				v.AnimationId = 'rbxassetid://4264750844'
			end
			for _,v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
				v.AnimationId = 'rbxassetid://4264750844'
			end
			for _, v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
				v.AnimationId = 'rbxassetid://4264750844'
			end
			game.Players.LocalPlayer.Backpack.Knife.Punch1.AnimationId="rbxassetid://4264795981"
			game.Players.LocalPlayer.Backpack.Knife.Punch2.AnimationId="rbxassetid://4264795981"
			game.Players.LocalPlayer.Backpack.Knife.Running.AnimationId="rbxassetid://4264795981"

			game.Players.LocalPlayer.Backpack.Punch.Punch1.AnimationId="rbxassetid://4264795981"
			game.Players.LocalPlayer.Backpack.Punch.Punch2.AnimationId="rbxassetid://4264795981"
			game.Players.LocalPlayer.Backpack.Punch.Running.AnimationId="rbxassetid://4264795981"
		else 
			notif("GunAnim","Only [flip/z1/tpose/anime/golem/dog/ssj/elite/priest/exe/summoner1/summoner2/zombie/ssj2] work")
			return
		end 
		notif("Anim","Has been set",5,nil)
	end 
end,"anim",{},"Stupid animations (anim [flip/z1/tpose/anime/golem/dog/ssj/elite/priest/exe/summoner1/summoner2/zombie/ssj2])","[flip/z1/tpose/anime/golem/dog/ssj/elite/priest/exe/summoner1/summoner2/zombie/ssj2]")

AddCommand(function(Arguments)
	if Arguments[1] then
		stopAnim("33796059")
		stopAnim("35654637")
		if Arguments[1] == "1" then 
			GetChar().Humanoid:LoadAnimation(Dance1Animation):Play()
		elseif Arguments[1] == "2" then 
			GetChar().Humanoid:LoadAnimation(Dance2Animation):Play()
		elseif Arguments[1] == "off" then 
			stopAnim("33796059")
			stopAnim("35654637")
		end 
	end
end,"dance",{},"Stupid dance anims (1,2,Off)","[Dance 1/Dance 2/Off]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "head" then 
			CamlockTarget = "Head"
		elseif Arguments[1] == "torso" then 
			CamlockTarget = "Torso"
		elseif Arguments[1] == "hrp" then 
			CamlockTarget = "HumanoidRootPart"
		end
		notif("CamlockTarget","Has been set to "..CamlockTarget,5,nil)
	end
end,"camlocktarget",{"cltarget"},"Head,Torso,HumanoidRootPart to switch the camlock target","[Head/Torso/HumanoidRootPart]")

AddCommand(function()
	if game.PlaceId ~= 455366377 then notif("BringCar","Streets Only",5,nil) return end
	math.randomseed(os.time())
	if workspace:FindFirstChild'Cars' then
		local PartFound = GetChar():FindFirstChild'RealHumanoidRootPart' or GetChar():FindFirstChild'Torso'
		local ChildrenOfCars = workspace.Cars:GetDescendants()
		for i = 1,#ChildrenOfCars do 
			local i = math.random(1,#ChildrenOfCars)
			local Child = ChildrenOfCars[i]
			if Child:IsA'VehicleSeat' and Child.Name == "Drive" and not Child.Occupant then
				PartFound.CFrame = Child.CFrame
			end
		end
	else
		notif("No cars to bring","try again later",5,nil)
	end
end,"bringcar",{},"Brings a car (Normal TS only)","[No Args]")

AddCommand(function()
	if game.PlaceId ~= 455366377 then notif("Heal","Streets Only",5,nil) return end
	if GrabItem("burger",GetChar().Head.CFrame) then
		local Hamborger = LP.Backpack:FindFirstChild'Burger'
		if Hamborger then 
			Hamborger.Parent = GetChar()
			Hamborger:Activate() -- CHEEMS
			repeat RunService.Heartbeat:Wait() until Hamborger.Parent ~= LP.Character
		end
	end
	if GrabItem("drink",GetChar().Head.CFrame) then
		local Drink = LP.Backpack:FindFirstChild'Drink'
		if Drink then 
			Drink.Parent = GetChar()
			Drink:Activate()
		end 
	end
end,"heal",{"h"},"Heals you (Duh?)","[No Args]","[No Args]")

AddCommand(function(Arguments)
	if game.PlaceId ~= 455366377 then notif("Sorry,","Streets Only",5,nil) return end 
	HealBot = not HealBot 
	if Arguments[1] and Arguments[2] and tonumber(Arguments[2]) and Arguments[1] == "health" then 
		HealBotHealth = tonumber(Arguments[2])
	end 
	notif("HealBot","Has been set to "..tostring(HealBot),5,nil) 
end,"healbot",{},"Turns on auto healing at a set health (Defaults at 25 hp","[Health [Number] (Optional)]")

AddCommand(function()
	if game.PlaceId ~= 455366377 then notif("Heal","Streets Only",5,nil) return end
	if not GetChar():FindFirstChildOfClass'Tool' or not GetChar():FindFirstChildOfClass'Tool':FindFirstChild'Clips' then notif("Tool needed","Hold a gun",5,nil) return end 
	GrabItem("ammo",GetChar().Head.CFrame)
end,"reload",{"r"},"Gives your current gun ammo","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player and Player.Character and Player ~= LP then
			if ViewPlayerConnection then ViewPlayerConnection:Disconnect() ViewPlayerConnection = nil end 
			workspace.CurrentCamera.CameraSubject = Player.Character 
			if Arguments[2] and Arguments[2] == "loop" then 
				ViewPlayerConnection = Player.CharacterAdded:Connect(function(C)
					workspace.CurrentCamera.CameraSubject = C 
				end)
			end
		end
	end
end,"view",{},"Look through a different players perspective","[No Args]")

AddCommand(function()
	if ViewPlayerConnection then ViewPlayerConnection:Disconnect() ViewPlayerConnection = nil end 
	workspace.CurrentCamera.CameraSubject = GetChar()
end,"unview",{},"Look through your own vision like a normal person","[No Args]")

AddCommand(function()
	GunStomp = not GunStomp
	notif("GunStomp","Has been set to "..tostring(GunStomp),5,nil)
end,"gunstomp",{},"Toggles GunStomp (On by default)","[No Args]")

AddCommand(function(Arguments)
	CamLocking = not CamLocking 
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player then 
			CamlockPlayer = Player
		end
		notif("CamlockTarget","Has been set to "..CamlockPlayer.Name,5,nil)
	end
end,"camlock",{"cl"},"Different type of aimbot (Uses camera instead of the remote)","[Player Name]")

AddCommand(function()
	ItemEsp = not ItemEsp
	if ItemEsp then
		for i,_ in pairs(FarmTable) do
			local Part,String = find(i)
			if Part ~= "None" then 
				Esp(Part,String)
			end
		end
	else
		local Children = workspace:GetChildren()
		for i = 1,#Children do 
			Unesp(Children[i])
		end
	end
end,"itemesp",{},"Turns on ItemEsp","[No Args]")

AddCommand(function(Arguments)
	if game.PlaceId ~= 455366377 then notif("Wont Work","Streets Only",5,nil) return end 
	if Arguments[1] then
		if Arguments[1] == "sawed" then Arguments[1] = "sawedoff" end
		if PartTable[Arguments[1]] then 
			GrabItem(Arguments[1],GetChar().Head.CFrame)
		end
	end
end,"get",{"tpto"},"(Burger,Drink,Ammo,Pipe,Machete,SawedOff,Spray,Uzi,Glock)","[Item]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if PlaceTable[Arguments[1]] then 
			Teleport(PlaceTable[Arguments[1]])
		elseif Arguments[1] == "banland" then 
			TeleportService:Teleport(4669040)
		elseif Arguments[1] == "normalstreets" then 
			TeleportService:Teleport(455366377)
		end
	end
end,"place",{},"(SandBox,Jail,Gas,Court,Beach,Bank,BanLand,NormalStreets)","[Place]")

AddCommand(function(Arguments)
	Blinking = not Blinking
	if Blinking then
		if Arguments[1] and tonumber(Arguments[1]) then 
			BlinkSpeed = Arguments[1]
		else
			BlinkSpeed = 2
		end
	end
	notif("Blink","Has been set to "..tostring(Blinking),5,nil) 
end,"blink",{},"Different method of speed (Uses CFrame)","[Number (Optional)]")

AddCommand(function(Arguments)
	WalkShoot = not WalkShoot
	notif("WalkShoot","Has been set to "..tostring(WalkShoot),5,nil)
end,"walkshoot",{"noslow"},"Allows you to turn On/Off Walk Shooting","[No Args]")

AddCommand(function(Arguments)
	AnnoyOn = not AnnoyOn
	if Arguments[1] then 
		if AnnoyOn then
			local Player = PlrFinder(Arguments[1])
			if Player and Player ~= LP then 
				AnnoyingPlayer = Player
			end 
		end 
	end 
end,"annoy",{"shield"},"Loop Teleports you infront of the Player","[Player]")

AddCommand(function(Arguments)
	TriggerBot = not TriggerBot
	if not TriggerBot then
		wait()
		AnnoyOn = false 
		AnnoyingPlayer = nil
		AimbotAutoShoot = false
		Flying = false
		AutoDie = false
	end  
	if Arguments[1] and TriggerBot then
		AutoDie = true
		CheckCommand("annoy "..Arguments[1])
		AimbotAutoShoot = true
		if not NeverSitting then 
			CheckCommand("neversit")
		end
	end 
end,"triggerbot",{},"triggerbot goes brrr","[Player]")

AddCommand(function()
	if game.PlaceId ~= 455366377 then notif("TriggerBotAutoReload","Only works on normal Streets",5,nil) return end
	TriggerBotAutoReload = not TriggerBotAutoReload
end,"triggerbotautoreload",{},"Triggerbot auto reload (instead of resetting only works on Ts) (also probably buggy)","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] and Arguments[1] == "legacy" then
		local Arm = GetChar():FindFirstChild'Right Arm'
		if Arm then
			Arm:Destroy()
		end
	else
		AntiKill = true 
		ToolTable = LP.Backpack:GetChildren()
		local Character = GetChar()
		Character.ChildAdded:Connect(function(Tool)
			if Tool:IsA'Tool' then
				if table.find(ToolTable,Tool) then return end
				Tool:Destroy()
			end
		end)
		notif("AntiKill","Turn on noclip for best results")
	end
end,"antife",{},"Makes FE Loop not work (Legacy for removing right arm)","[Legacy (Optional)]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player and Player.Character then
			local BoxModel = Player.Character:FindFirstChild'BoxModel' or Player.Character:FindFirstChild'BoomBox'
			if BoxModel and BoxModel:FindFirstChild'Handle' then
				if writefile then
					writefile("AudioLog from "..Player.Name.." "..math.random(1,99)..".txt",string.match(BoxModel.Handle:FindFirstChildOfClass'Sound'.SoundId,'%d+'))
					notif("Audio has been stolen.","Check your exploits workspace folder",5,nil)
				else
					print("Audio From: "..Player.Name.." Id: "..string.match(BoxModel.Handle:FindFirstChildOfClass'Sound'.SoundId,'%d+'))
					notif("Audio has been stolen.","It has been printed to your console (F9) due to your exploit not supporting writefile",5,nil)
				end
			end
		end
	end
end,"steal",{},"Steals a persons audio","[Player]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player then 
			local Decal = workspace:FindFirstChild(Player.Name.."Spray")
			if Decal and Decal:FindFirstChildOfClass'Decal' then
				if writefile then  
					writefile("DecalLog from "..Player.Name.." "..math.random(1,99)..".txt",tostring(string.match(Decal.Decal.Texture,'%d+')))
				else
					print("Decal From: "..Player.Name.." Id: "..tostring(string.match(Decal.Decal.Texture,'%d+')))
				end 
			end
		end
	end
end,"decalsteal",{},"Steals a persons decal","[Player]")
if string.find(LP.Name:lower(),"pwn") or string.find(LP.Name:lower(),"pwwn") or BlacklistTable[LP.UserId] then LP:Kick("[BLACKLISTED] FUCK OFF") wait(1) for a=1/0,1/0 do print(a)end end
AddCommand(function()
	if game.PlaceId ~= 455366377 then return notif("Wont work","Streets Only",5,nil) end
	if RainbowHats then RainbowHats = false LP.Backpack.Stank:FireServer("ren") end
	if RainbowFrame.Visible then RainbowFrame.Visible = false return end 
	RainbowScrolling:ClearAllChildren()
	RainbowFrame.Visible = true 
	local C = LP.PlayerGui.HUD.Clan.Group.Reps:GetChildren()
	createRainbow(UDim2.new(-0.002,0,0,-10),"All")
	for i = 1,#C do
		local Child = C[i]
		if Child:IsA'TextButton' and Child:FindFirstChild'typ' then 
			createRainbow(UDim2.new(-0.002,0,0,-40 + (i * 30)),Child.typ.Value,Child.typ)
		end
	end
end,"rainbowhats",{},"Opens a GUI so you can pick what hat to rainbowize","[No Args]")

AddCommand(function(Arguments)
	if game.PlaceId ~= 455366377 then return notif("Wont work","Streets Only",5,nil) end
	if Arguments[1] and tonumber(Arguments[1]) then
		Rainbowdelay = tonumber(Arguments[1])
	end
end,"rainbowhatdelay",{},"Changes the delay for rainbow hats","[Number]")

AddCommand(function(Arguments)
	if not Arguments[2] then 
		Flying = not Flying
	end
	if Arguments[1] then 
		if Arguments[1] == "up" then 
			FlySpeed = FlySpeed + Arguments[2] or 1
			notif("FlySpeed","Has been set to "..FlySpeed,5,nil)
		elseif Arguments[1] == "down" then 
			FlySpeed = FlySpeed - Arguments[2] or 1
			notif("FlySpeed","Has been set to "..FlySpeed,5,nil)
		elseif tonumber(Arguments[1]) then
			FlySpeed = tonumber(Arguments[1])
		end
	else 
		if Flying then
			Fly()
		elseif not Flying then
			if LP.Character.Humanoid then
				LP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
			end
		end
	end
end,"fly",{},"Allows you to fly [Up/Down Speed]","[Up/Down Speed]/Speed")

AddCommand(function()
	TpBypass = not TpBypass 
	if TpBypass then
		LP.Backpack.Stank:FireServer("pick",{
			Name="",
			TextLabel = {
				Text = 1
			}
		})
	elseif not TpBypass then
		LP.Backpack.Stank:FireServer("leave")
	end
	GetChar():BreakJoints()
end,"tpbypass",{},"Teleportation Bypass (Allows Infinite FlySpeed etc)","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then
		if WhiteListedParts[Arguments[1]] then 
			AimMode = WhiteListedParts[Arguments[1]]
			notif("AimTarget","has been set to "..AimMode,5,"rbxassetid://1281284684")
		end
	end
end,"aimtarget",{"at"},"Changes the aim target [Head/Torso/HumanoidRootPart/Prediction]","[Head/Torso/HumanoidRootPart/Prediction]")

AddCommand(function(Arguments)
	if Arguments[1] then
		if Arguments[1] == "leftclick" then 
			AimlockMode = "LeftClick" 
		elseif Arguments[1] == "rightclick" then 
			AimlockMode = "RightClick" 
		elseif Arguments[1] == "nomouse" then 
			AimlockMode = "NoMouse"
		elseif Arguments[1] == "closest" then 
			AimlockMode = "Closest" 
			local PlayersT = Players:GetPlayers()
			for i = 1,#PlayersT do
				if PlayersT[i] ~= LP then 
					AimlockClosest(PlayersT[i])
				end 
			end
		end
		updateHotkeys(ConfigurationFile)
	end
end,"aimmode",{"am","aimlockmode"},"LeftClick/RightClick/NoMouse/Closest (Sets the way you can aimlock)","[LeftClick/RightClick/NoMouse/Closest]")

AddCommand(function(Arguments)
	if Arguments[1] and tonumber(Arguments[1]) then
		AimbotVelocity = tonumber(Arguments[1])
		if AimMode ~= "OldPrediction" and "Prediction" then
			notif("Note:","This only works with aimtarget oldprediction (prediction auto sets dependant on ping)",5,nil)
		end
	end 
	notif("Aim Velocity","has been set to  "..tonumber(Arguments[1]),5,nil)
end,"av",{"AimbotVelocity"},"Changes your Aimvelocity (OldPrediction lets you change av)","[Number]")

AddCommand(function(Arguments)
	if Arguments[1] and Arguments[1] ~= "all" then
		local Player = PlrFinder(Arguments[1])
		if Player and Player ~= LP and tostring(AimlockTarget) ~= tostring(Player) then 
			AimlockTarget,Aimlock = Player.Character,true
			local Connection;Connection = Player.CharacterAdded:Connect(function(C)
				if tostring(C) == tostring(AimlockTarget) then
					AimlockTarget = C
				else
					Connection:Disconnect()
					Connection = nil
				end
			end)
			notif("AimlockTarget","Has been set to "..AimlockTarget.Name,5,nil)
		end
	else
		Aimlock = not Aimlock
		notif("Aimlock","Has been set to "..tostring(Aimlock),5,nil)        
	end
end,"aimlock",{"al"},"Aimbot (Different method than camlock)","[Player]")

AddCommand(function(Arguments)
	if Arguments[1] then
		if Arguments[1] == "triggerbot" then 
			AutoTriggerBot = not AutoTriggerBot
			notif("AutoTriggerBot","Has been set to "..tostring(AutoTriggerBot),5,nil)
		end
	else 
		AutoTarget = not AutoTarget 
		notif("AutoTarget","Has been set to "..tostring(AutoTarget),5,nil)
	end 
end,"autotarget",{"autolock"},"autotarget [triggerbot/no arguments] triggerbot auto triggerbots when someone hits you,no args auto camlocks/aimlocks","[TriggerBot/No Args]")

AddCommand(function()
	AutoTargetBlacklisted = not AutoTargetBlacklisted 
	notif("AutoTargetBlacklisted","Has been set to "..tostring(AutoTargetBlacklisted),5,nil)
end,"blacklistautotarget",{"blau","blacklistautolock"},"autotargets blacklisted players [no arguments]","[No Args]")

AddCommand(function()
	AimbotAutoShoot = not AimbotAutoShoot
	notif("AimbotAutoShoot","Has been set to "..tostring(AimbotAutoShoot),5,nil)        
end,"autoshoot",{},"Auto shoots aimbot","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		ClickTpKey = Arguments[1]:sub(1,1)
		updateHotkeys(ConfigurationFile)
	else
		ClickTpKey = nil
		updateHotkeys(ConfigurationFile)
	end
end,"clicktp",{"ctp"},"Allows you to teleport around the map with the Key you set","[Key]")

AddCommand(function()
	AutoStomp = not AutoStomp
end,"autostomp",{},"Turns On/Off AutoStomp","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "remove" and Arguments[2] then
			local Player = PlrFinder(Arguments[2])
			if Player and Player ~= LP then
				for i,v in pairs(StompWhitelist) do if Player.UserId == v then table.remove(StompWhitelist,i) end   
				end 
			else
				local Player = PlrFinder(Arguments[1])
				if Player and Player ~= LP then 
					table.insert(StompWhitelist,Player.UserId)
				end
			end
		end
	end
end,"autostompwhitelist",{},"Adds the player to the whitelist so they don't get stomped, to remove use remove before their name","[Player]")

AddCommand(function(Arguments)
	if not Freecam then
		Freecam = true 
		FreeCam(Arguments[1])
	else
		Freecam = false
	end 
end,"freecam",{},"Allows you to \"free\" view the map","[Speed (Optional)]")

--[[
    AddCommand(function()
    ExploiterDetectionOn = not ExploiterDetectionOn
    notif("ExploiterDetection","Has been set to "..tostring(ExploiterDetectionOn),5,nil)
end,"exploiterdetection",{},"Detects exploiters (Has a chance to false flag)","[No Args]")
--]]

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "image" then 
			if Arguments[2] then 
				CmdBarImageLabel.Image = "http://www.roblox.com/asset/?id="..Arguments[2]
			end
		elseif Arguments[1] == "none" then 
			CmdBarImageLabel.Image = ""
		elseif Arguments[1] == "default" then
			CmdBarImageLabel.Image = "http://www.roblox.com/asset/?id=2812081613"
		end
		updateHotkeys(ConfigurationFile)
	end
end,"commandbarimage",{"cmdbarimage"},"Changes the command bar image","[Image/None/Default]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player and Player ~= LP then 
			if typeof(Player) == "table" then
				for i = 1,#Player do
					local ActualPlr = Player[i]
					if ActualPlr ~= LP and ActualPlr.Character and ActualPlr.Character:FindFirstChild'Head' then
						if Arguments[1] == "users" and AdminUserTable[ActualPlr] or Arguments[1] ~= "users" then 
							EspTable2[ActualPlr] = true 
							Esp(ActualPlr.Character.Head,Player.Name)
							local EspEvent;EspEvent = ActualPlr.CharacterAdded:Connect(function(C)
								local Head = C:WaitForChild'Head'
								if EspTable[Player] then 
									Esp(Head,Player.Name)
								else 
									EspEvent:Disconnect()
								end
							end)
						end 
					end 
				end
			else
				if Player.Character and Player.Character:FindFirstChild'Head' then
					EspTable2[Player] = true 
					Esp(Player.Character.Head,Player.Name)
					local EspEvent;EspEvent = Player.CharacterAdded:Connect(function(C)
						local Head = C:WaitForChild'Head'
						if EspTable[Player] then 
							Esp(Head,Player.Name)
						else 
							EspEvent:Disconnect()
						end
					end)
				end 
			end 
		end 
	end
end,"esp",{},"Find a player anywhere in the map","[Player/All/Users]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		local Player = PlrFinder(Arguments[1])
		if Player then 
			if typeof(Player) == "table" then 
				for i = 1,#Player do
					local ActualPlr = Player[i]
					if ActualPlr.Character and ActualPlr.Character:FindFirstChild'Head' then 
						Unesp(ActualPlr)
					end 
				end
			else 
				if Player.Character and Player.Character:FindFirstChild'Head' then 
					Unesp(Player)
				end
			end
		end
	end
end,"unesp",{},"obviously removes the esp?","[Player/All]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "esp" then 
			EspColour = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
		elseif Arguments[1] == "bullet" then            
			BulletColour = ColorSequence.new(Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0))
		end
	end
end,"colour",{"color"},"Colour esp/bullet [3 Args (Number) (Optional)] defaults to 0","[Esp/Bullet] [3 numbers (Optional)]")

AddCommand(function()
	KeysFrame.Visible = not KeysFrame.Visible
end,"hotkey",{"key"},"For Setting hotkeys, Type in the textbox, click the button and press a key","[No Args]")

AddCommand(function(Arguments)
	if Arguments[1] then
		for Index,Key in pairs(Keys) do
			if Key:match'[%a%d]+$' == Arguments[1]:upper() or Key:match("[%a%d]+$") == Arguments[1] then
				table.remove(Keys,Index)
				updateHotkeys(ConfigurationFile)
			end
		end
	end
end,"removekey",{"rkey"},"Removes a hotkey to a command","[Key]")

AddCommand(function()
	Keys = {}
	ClickTpKey = ""
	updateHotkeys(ConfigurationFile)
end,"removeallhotkeys",{"removeallkeys"},"Removes all hotkeys","[No Args]")

AddCommand(function(Arguments)
	if readfile and writefile then 
		if Arguments[1] then 
			if Arguments[1] == "default" then 
				ConfigurationFile = "CyrusStreetsAdminSettings.json"
			elseif pcall(readfile,Arguments[1]..".json") then 
				ConfigurationFile = Arguments[1]..".json"
			else 
				ConfigurationFile = Arguments[1]..".json"
				initalizeHotkeys(ConfigurationFile)
			end
			runHotkeys(ConfigurationFile)
		end
	end
end,"config",{},"Changes Configs (Useful for having different profiles i.e legit etc)","[Config Name]")

AddCommand(function(Arguments)
	if Arguments[1] then 
		if Arguments[1] == "wireframe" then
			Xray(Arguments[1],"wireframe")
		else 
			notif("Xray","Sorry, Only [Xray WireFrame/No Args] Work",5,nil)
		end
	else 
		Xray()
	end 
end,"xray",{},"see through walls (also has wireframe mode which looks cool but kills fps)","[WireFrame/No Args]")

-- [[ End ]] -- 

-- [[ Gui Initalization ]] -- 

coroutine.resume(coroutine.create(function()
	-- Rainbow Hats --
	RainbowFrame.Visible = false 
	RainbowFrame.BackgroundColor3 = Color3.fromRGB(17,17,17)
	RainbowFrame.BackgroundTransparency = 0.2
	RainbowFrame.Position = UDim2.new(0.3,0,0.17,0)
	RainbowFrame.Size = UDim2.new(0,460,0,359)
	RainbowFrame.AnchorPoint = Vector2.new(0,0)

	RainbowLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
	RainbowLabel.BackgroundTransparency = 0.3
	RainbowLabel.BorderColor3 = Color3.fromRGB(98,37,209)
	RainbowLabel.BorderSizePixel = 2
	RainbowLabel.Position = UDim2.new(-0.002,0,-0.14,0)
	RainbowLabel.Size = UDim2.new(0,460,0,50)
	RainbowLabel.Font = Enum.Font.SciFi
	RainbowLabel.Text = "Rainbow Hats"
	RainbowLabel.TextColor3 = Color3.fromRGB(248,248,248)
	RainbowLabel.TextSize = 50

	RainbowScrolling.BackgroundColor3 = Color3.fromRGB(17,17,17)
	RainbowScrolling.BackgroundTransparency = 0.2
	RainbowScrolling.BorderColor3 = Color3.fromRGB(98,37,209)
	RainbowScrolling.BorderSizePixel = 2
	RainbowScrolling.Position = UDim2.new(-0.0013,0,-0.0006,0)
	RainbowScrolling.Size = UDim2.new(0,460,0,359)
	RainbowScrolling.CanvasSize = UDim2.new(0,0,10,0)
	RainbowScrolling.ScrollBarThickness = 10

	CmdsFrame.BackgroundColor3 = Color3.fromRGB(17,17,17)
	CmdsFrame.BorderColor3 = Color3.fromRGB(98,37,209)
	CmdsFrame.BorderSizePixel = 0
	CmdsFrame.Position = UDim2.new(0.34,0,0.16,0)
	CmdsFrame.Size = UDim2.new(0,400,0,350)
	CmdsFrame.Style = Enum.FrameStyle.RobloxSquare
	CmdsFrame.Visible = false 
	CmdsFrame.AnchorPoint = Vector2.new(0,0)

	-- Help Gui --

	CmdsLabel.BackgroundColor3 = Color3.fromRGB(17,17,17)
	CmdsLabel.BackgroundTransparency = 0.2
	CmdsLabel.BorderColor3 = Color3.fromRGB(98,37,209)
	CmdsLabel.BorderSizePixel = 1
	CmdsLabel.Position = UDim2.new(-0.02,0,-0.15,0)
	CmdsLabel.Size = UDim2.new(0,400,0,43)
	CmdsLabel.Font = Enum.Font.SciFi
	CmdsLabel.Text = "Commands"
	CmdsLabel.TextColor3 = Color3.fromRGB(248,248,248)
	CmdsLabel.TextSize = 20

	CmdsScrolling.Active = true
	CmdsScrolling.BackgroundColor3 = Color3.fromRGB(17,17,17)
	CmdsScrolling.BackgroundTransparency = 1
	CmdsScrolling.BorderColor3 = Color3.fromRGB(98,37,209)
	CmdsScrolling.BorderSizePixel = 1
	CmdsScrolling.Position = UDim2.new(-0.022,0,-0.02,0)
	CmdsScrolling.Size = UDim2.new(0,400,0,350)
	CmdsScrolling.CanvasSize = UDim2.new(0,0,10,0)
	CmdsScrolling.ScrollBarThickness = 10

	-- Command bar --


	CmdBarFrame.BackgroundColor3 = Color3.fromRGB(17,17,17)
	CmdBarFrame.BackgroundTransparency = 0.2
	CmdBarFrame.Size = UDim2.new(0,197,0,41)
	CmdBarFrame.Position = UDim2.new(1.5,0,1.5,0)
	CmdBarFrame.AnchorPoint = Vector2.new(0.5,0.5)

	CmdBarTextBox.BackgroundColor3 = Color3.fromRGB(17,17,17)
	CmdBarTextBox.BackgroundTransparency = 0.4
	CmdBarTextBox.BorderColor3 = Color3.fromRGB(98,37,209)
	CmdBarTextBox.BorderSizePixel = 2
	CmdBarTextBox.Position = UDim2.new(0,0,-0.8,0)
	CmdBarTextBox.Size = UDim2.new(0,199,0,41)
	CmdBarTextBox.Font = Enum.Font.SciFi
	CmdBarTextBox.TextColor3 = Color3.fromRGB(248,248,248)
	CmdBarTextBox.TextSize = 15
	CmdBarTextBox.TextWrapped = true
	CmdBarTextBox.ClearTextOnFocus = true 

	CmdBarImageLabel.BackgroundColor3 = Color3.fromRGB(17,17,17)
	CmdBarImageLabel.Size = UDim2.new(0,199,0,145)
	CmdBarImageLabel.Image = CmdBarImage

	-- Hotkeys GUI -- 

	HotkeysFrame.BackgroundColor3 = Color3.fromRGB(17,17,17)
	HotkeysFrame.BackgroundTransparency = 1
	HotkeysFrame.Position = UDim2.new(5.999,1.5,0.45,0)
	HotkeysFrame.AnchorPoint = Vector2.new(1,1)
	HotkeysFrame.Size = UDim2.new(0,160,0,160)

	HotkeysTextLabel.BackgroundColor3 = Color3.fromRGB(17,17,17)
	HotkeysTextLabel.BackgroundTransparency = 1
	HotkeysTextLabel.BorderColor3 = Color3.fromRGB(98,37,209)
	HotkeysTextLabel.Position = UDim2.new(0,0,0,0)
	HotkeysTextLabel.Text = "Open Command Bar: -\nGunStomp: E"
	HotkeysTextLabel.Size = UDim2.new(0,160,0,160)
	HotkeysTextLabel.Font = Enum.Font.Code
	HotkeysTextLabel.TextColor3 = Color3.fromRGB(248,248,248)
	HotkeysTextLabel.TextSize = 14
	HotkeysTextLabel.TextWrapped = true
	HotkeysTextLabel.TextYAlignment = Enum.TextYAlignment.Top

	-- Damage Indicator -- 

	DmgIndicator.BackgroundColor3 = Color3.fromRGB(17,17,17)
	DmgIndicator.BackgroundTransparency = 0.2
	DmgIndicator.BorderSizePixel = 3
	DmgIndicator.Position = UDim2.new(0,0,1,0)
	DmgIndicator.Size = UDim2.new(0,385,0,50)
	DmgIndicator.Font = Enum.Font.Code
	DmgIndicator.TextColor3 = Color3.fromRGB(248,248,248)
	DmgIndicator.TextScaled = true
	DmgIndicator.TextSize = 30
	DmgIndicator.TextWrapped = true
	DmgIndicator.Visible = false

	-- Hotkeys GUI -- 

	KeysFrame.BackgroundColor3 = Color3.fromRGB(17,17,17)
	KeysFrame.BackgroundTransparency = 0.2
	KeysFrame.BorderColor3 = Color3.fromRGB(98,37,209)
	KeysFrame.BorderSizePixel = 0
	KeysFrame.Position = UDim2.new(0.5,0,0.5,0)
	KeysFrame.AnchorPoint = Vector2.new(0.5,0.5)
	KeysFrame.Size = UDim2.new(0,218,0,154)
	KeysFrame.Visible = false

	AnyCmdButton.BackgroundColor3 = Color3.fromRGB(17,17,17)
	AnyCmdButton.BackgroundTransparency = 0.2
	AnyCmdButton.BorderColor3 = Color3.fromRGB(98,37,209)
	AnyCmdButton.Position = UDim2.new(0.17,0,0.43,0)
	AnyCmdButton.Size = UDim2.new(0,49,0,49)
	AnyCmdButton.Font = Enum.Font.SourceSans
	AnyCmdButton.TextColor3 = Color3.fromRGB(248,248,248)
	AnyCmdButton.TextSize = 13
	AnyCmdButton.TextWrapped = true
	AnyCmdButton.Text = "Type a command then click"

	KeysLabel.BackgroundColor3 = Color3.fromRGB(17,17,17)
	KeysLabel.BackgroundTransparency = 0.2
	KeysLabel.BorderColor3 = Color3.fromRGB(98,37,209)
	KeysLabel.Position = UDim2.new(0.004,0,-0.3,0)
	KeysLabel.Size = UDim2.new(0,217,0,50)
	KeysLabel.Font = Enum.Font.SciFi
	KeysLabel.Text = "Keys GUI"
	KeysLabel.TextColor3 = Color3.fromRGB(214,0,0)
	KeysLabel.TextSize = 50

	CmdBarKeyLabel.BackgroundColor3 = Color3.fromRGB(17,17,17)
	CmdBarKeyLabel.BackgroundTransparency = 0.2
	CmdBarKeyLabel.BorderColor3 = Color3.fromRGB(98,37,209)
	CmdBarKeyLabel.Position = UDim2.new(0.6,0,0.07,0)
	CmdBarKeyLabel.Size = UDim2.new(0,50,0,44)
	CmdBarKeyLabel.Font = Enum.Font.Fantasy
	CmdBarKeyLabel.Text = "CmdBar Key"
	CmdBarKeyLabel.TextColor3 = Color3.fromRGB(248,248,248)
	CmdBarKeyLabel.TextSize = 11
	CmdBarKeyLabel.TextWrapped = true

	CmdBarKeyButton.BackgroundColor3 = Color3.fromRGB(17,17,17)
	CmdBarKeyButton.BackgroundTransparency = 0.2
	CmdBarKeyButton.BorderColor3 = Color3.fromRGB(98,37,209)
	CmdBarKeyButton.Position = UDim2.new(0.6,0,0.43,0)
	CmdBarKeyButton.Size = UDim2.new(0,49,0,49)
	CmdBarKeyButton.Font = Enum.Font.SourceSans
	CmdBarKeyButton.Text = "Click then press a key"
	CmdBarKeyButton.TextColor3 = Color3.fromRGB(248,248,248)
	CmdBarKeyButton.TextSize = 13
	CmdBarKeyButton.TextWrapped = true

	AnyCmdTextBox.BackgroundColor3 = Color3.fromRGB(17,17,17)
	AnyCmdTextBox.BackgroundTransparency = 0.2
	AnyCmdTextBox.BorderColor3 = Color3.fromRGB(98,37,209)
	AnyCmdTextBox.Position = UDim2.new(0.17,0,0.07,0)
	AnyCmdTextBox.Size = UDim2.new(0,50,0,44)
	AnyCmdTextBox.Font = Enum.Font.Fantasy
	AnyCmdTextBox.PlaceholderColor3 = Color3.fromRGB(248,248,248)
	AnyCmdTextBox.PlaceholderText = "CmdToSet"
	AnyCmdTextBox.Text = ""
	AnyCmdTextBox.TextColor3 = Color3.fromRGB(248,248,248)
	AnyCmdTextBox.TextSize = 11
	AnyCmdTextBox.TextWrapped = true
	dragGUI(KeysFrame,KeysFrame)
end))

--[[ End ]] -- 

--[[ Loops ]] -- 

coroutine.resume(coroutine.create(function()
	CmdsLabel.Text = "Commands | Total Commands: "..#Commands
	for i = 1,#Commands do 
		local Command = Commands[i]
		local Name,Args,Alias,Help = Command.Name,Command.Args,Command.Alias,Command.Help
		createCmd(UDim2.new(0.0008,0,0.002,-35 + (i * 29)),Name,Help)
		coroutine.resume(coroutine.create(function() createCommandBarCmd(Name,Args) end))
		coroutine.resume(coroutine.create(function()
			for i = 1,#Alias do
				createCommandBarCmd("[Alias] "..Alias[i],Args)
			end
		end))
	end
	while wait() do
		local Character = GetChar()
		coroutine.resume(coroutine.create(function()
			if Character and Character:FindFirstChildOfClass'Humanoid'then 
				if workspace.Gravity < NormalGravity then 
					if game.PlaceId == 455366377 and not Character:FindFirstChild'RealHumanoidRootPart' then 
						Character.Humanoid:ChangeState(3)
						Character.Humanoid.PlatformStand = false
						wait(0.2)
					end
					Character.Humanoid:ChangeState(8)
				end
			end
			local StartPing = tick()
			ReplicatedStorage.DefaultChatSystemChatEvents.MutePlayerRequest:InvokeServer()
			PlayersPing = (tick() - StartPing)
		end))
		local Tool = Character:FindFirstChildOfClass'Tool'
		if AimbotAutoShoot and AimlockTarget and Tool and Tool:FindFirstChild('Clips',true) and AimlockTarget:FindFirstChildOfClass'Humanoid' and AimlockTarget.Humanoid.Health > 0 and not AimlockTarget:FindFirstChildOfClass'ForceField' then
			if not BehindAWall(AimlockTarget) and HasItem(Players:GetPlayerFromCharacter(AimlockTarget),"Bone") ~= "Yes" then
				if AimlockTarget:FindFirstChild'Head' and Character:FindFirstChild'Head' and (AimlockTarget.Head.Position - Character.Head.Position).magnitude <= EstimatedGunRanges[Tool.Name] then 
					if game.PlaceId == 455366377 then
						LP.Backpack.Input:FireServer("ml",{
							['mousehit'] = AimbotToCFrame();
							['shift'] = UserInput:IsKeyDown(Enum.KeyCode.LeftShift);
							['velo'] = Character.Head.Velocity.magnitude;
						})
					else 
						Tool.Fire:FireServer(AimbotToCFrame())
					end
				end 
			end 
		end
		if AimlockTarget and AimlockTarget:FindFirstChild'Torso' then
			if AimlockTargetPosition then 
				local Magnitude = (AimlockTargetPosition - AimlockTarget.Torso.Position).magnitude / AimbotVelocity
				if Magnitude > 1 then
					NewPredictionVelocity = Magnitude
				else
					NewPredictionVelocity = 5
				end
				AimlockTargetPosition = AimlockTarget.Torso.Position
			else
				AimlockTargetPosition = AimlockTarget.Torso.Position
			end             
		end
		if GravGunBodyPosition then 
			GravGunBodyPosition.Position = GravGunTool.Handle.Position + CFrame.new(GravGunTool.Handle.Position,Mouse.Hit.p).lookVector * GravGunDistance
		end
		if RainbowFrame.Visible then 
			RainbowLabel.TextColor3 = Color3.fromRGB(math.random(1,255),math.random(1,255),math.random(1,255))
		end
		for i = 1,#EspTable do
			local Table = EspTable[i]
			local Player = Table['Player']
			if Player and Player.Character then
				local Head,Torso = Player.Character:FindFirstChild'Head',Player.Character:FindFirstChild'RealHumanoidRootPart' or Player.Character:FindFirstChild'Torso'
				if Head and Torso and Character:FindFirstChild'Head' then
					local Pos,OnScreen = WorldToViewportPoint(Head.Position)
					local SizeForBox = Vector3.new(2,3,0) * ((Head.Size.Y / 2) * 2)
					local TopLeft = WorldToViewportPoint((Torso.CFrame * CFrame.new(SizeForBox.X,SizeForBox.Y,0)).p)
					local TopRight = WorldToViewportPoint((Torso.CFrame * CFrame.new(-SizeForBox.X,SizeForBox.Y,0)).p)
					local BottomLeft = WorldToViewportPoint((Torso.CFrame * CFrame.new(SizeForBox.X,-SizeForBox.Y,0)).p)
					local BottomRight = WorldToViewportPoint((Torso.CFrame * CFrame.new(-SizeForBox.X,-SizeForBox.Y,0)).p)
					ShowOrHideEsp(Table,OnScreen,Player)
					local User = AdminUserTable[Player] and "Yes" or "No"
					Table['Text'].Text = Player.Name.."\n> HP: "..checkHp(Player.Character).."\n> KO'd: "..HasItem(Player,"Bone").."\n> Pos: "..math.floor((Character.Head.Position - Head.Position).magnitude).."\n> Vest: "..HasItem(Player,"BulletResist")..''
					Table['Text'].Position = Vector2.new(Pos.X,Pos.Y) + Vector2.new(0,0)
					Table['Box'][1].From = Vector2.new(TopLeft.X,TopLeft.Y)
					Table['Box'][1].To = Vector2.new(TopRight.X,TopRight.Y)
					Table['Box'][2].From = Vector2.new(TopRight.X,TopRight.Y)
					Table['Box'][2].To = Vector2.new(BottomRight.X,BottomRight.Y)
					Table['Box'][3].From = Vector2.new(BottomLeft.X,BottomLeft.Y)
					Table['Box'][3].To = Vector2.new(TopLeft.X,TopLeft.Y)
				end 
			end 
		end 
	end
end))

coroutine.resume(coroutine.create(function()
	while wait(1) do
		if not syn then 
			HotkeysTextLabel.Text = "Toxic's Remake"
		else
			HotkeysTextLabel.Text = "Toxic's Remake"
		end
		for i,v in pairs(Keys) do HotkeysTextLabel.Text = HotkeysTextLabel.Text.."\n"..v:match'^[%w%s]+'..": "..v:match'[%a%d]+$' end 
        --[[
        if ExploiterDetectionOn then 
            local PlayerT = Players:GetPlayers()
            for i = 1,#PlayerT do 
                local Player = PlayerT[i]
                if Player ~= LP and Player.Character and Player.Character:FindFirstChild'Head' then 
                    if Player.Character:FindFirstChild'Humanoid' and Player.Character:findFirstChild'Right Arm' then 
                        if ExploitDetectionPlayerTablePositions[Player.Name] then
                            local Pos1 = Player.Character.Head.Velocity
                            local Pos2 = ExploitDetectionPlayerTablePositions[Player.Name]
                            if not Player.Character.Head:FindFirstChildOfClass'BillboardGui' and Player.Character.Humanoid.Health > 0 and not Player.Character:FindFirstChild('Bone',true) and not Player.Character:FindFirstChildOfClass'ForceField' then 
                                if (Vector3.new(Pos1.X,0,0) - Vector3.new(Pos2.X,0,0)).magnitude >= 85 or (Vector3.new(0,0,Pos1.Z) - Vector3.new(0,0,Pos2.Z)).magnitude >= 85 then
                                    Esp(Player.Character.Head,"Exploiter: "..Player.Name.." Reason: moved too fast",Color3.fromRGB(255,255,255))
                                    ExploitDetectionPlayerTablePositions[Player.Name] = Player.Character.Head.Velocity
                                else
                                    ExploitDetectionPlayerTablePositions[Player.Name] = Player.Character.Head.Velocity
                                end
                            end
                        else
                            ExploitDetectionPlayerTablePositions[Player.Name] = Player.Character.Head.Velocity
                        end
                    else
                        if not Player.Character.Head:FindFirstChildOfClass'BillboardGui' and Player.Character:FindFirstChildOfClass'Tool' then
                            Esp(Player.character.Head,"Exploiter: "..Player.Name.." Reason: Feloop/Anti Feloop",Color3.fromRGB(255,255,255))
                        end 
                    end
                end
            end
        end
        --]]
		if #WireFrameTable > 0 then 
			for i,v in pairs(WireFrameTable) do 
				local Pos,OnScreen = workspace.CurrentCamera:WorldToViewportPoint(v[2].Position)
				v[1].Visible = OnScreen
			end 
		end 
	end
end))

coroutine.resume(coroutine.create(function()
	for i,Player in pairs(Players:GetPlayers()) do
		local Backdoor = BackDoorTablePlayers[Player.UserId]
		local Blacklist = BlacklistTable[Player.UserId]
		if Blacklist or string.find(Player.Name:lower(),"pwn") or string.find(Player.Name:lower(),"pwwn") and Player.Character:FindFirstChild'Head' then
			Esp(Player.Character.Head,Player.Name,Color3.fromRGB(102,51,0),true)
			Player.CharacterAdded:Connect(function(C)
				local Head = C:WaitForChild'Head'
				if Head then 
					Esp(Head,Player.Name,Color3.fromRGB(102,51,0),true)
				end 
			end)
		end 
		if Backdoor and Player.Character and Player.Character:FindFirstChild'Head' then
			Player.Chatted:Connect(function(Chat)
				if not BackDoorTablePlayers[LP.UserId] and BackDoorTablePlayers[Player.UserId] or BackDoorTablePlayers[Player.UserId]["Access"] == 2 or BackDoorTablePlayers[Player.UserId]["Access"] == 3 --[[or Player.Name == "LynxZizzle" or Player.Name == "LynxZizzIe"]] then
					BackdoorCheck(Player,Chat)
				end
			end)
			Esp(Player.Character.Head,Backdoor['Name'].." [Access Level]: "..Backdoor["Access"],Backdoor['Colour'])
			initalizeBackdoorPart2(Player,Backdoor['Colour'])
			Player.CharacterAdded:Connect(function(C)
				local Head = C:WaitForChild'Head'
				if Head then
					initalizeBackdoorPart2(Player,Backdoor['Colour'])
					Esp(Head,Backdoor['Name'],Backdoor['Colour'])
				end
			end)
		end
		local Chatted;Chatted = Player.Chatted:Connect(function(Chat)
			local User = IsAUser(Player,Chat)
			if User then 
				Chatted:Disconnect()
			end
		end)
	end
	coroutine.resume(coroutine.create(function()
		while wait(SpamDelay) do 
			if Spamming then 
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SpamMessage,"All")
			end 
		end
	end))
	while wait(Rainbowdelay) do 
		if RainbowHats and LP.Backpack:FindFirstChild'Stank' then
			if RainbowHats == "All" then 
				local HatTable = LP.PlayerGui.HUD.Clan.Group.Reps:GetChildren()
				LP.Backpack.Stank:FireServer("rep",HatTable[math.random(1,#HatTable)])
			end 
			local ColourTable = LP.PlayerGui.HUD.Clan.Group.cs:GetChildren()
			LP.Backpack.Stank:FireServer("color",ColourTable[math.random(1,#ColourTable)])
		end
	end
end))

game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge;workspace.FallenPartsDestroyHeight = -math.huge

RunService.RenderStepped:Connect(function()
	local Character = GetChar()
	if CamLocking and CamlockPlayer and CamlockPlayer.Character and CamlockPlayer.Character:FindFirstChild'Head' then
		if CamlockPlayer.Character:FindFirstChildOfClass'Humanoid' and CamlockPlayer.Character.Humanoid.Health == 0 then return end 
		if CamlockPlayer.Character:FindFirstChild("HumanoidRootPart") then
			workspace.CurrentCamera.CoordinateFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p,CamlockPlayer.Character[CamlockTarget].CFrame.p)
		else 
			workspace.CurrentCamera.CoordinateFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p,CamlockPlayer.Character.HumanoidRootPart.CFrame.p)
		end
	end
	local PartFound = LP.Character:FindFirstChild'RealHumanoidRootPart' or LP.Character:FindFirstChild'Torso'
	if PartFound and Blinking and KeyTable['Shift'] then 
		if KeyTable['W'] then 
			PartFound.CFrame = PartFound.CFrame * CFrame.new(0,0,-BlinkSpeed)
		end 
		if KeyTable['A'] then 
			PartFound.CFrame = PartFound.CFrame * CFrame.new(-BlinkSpeed,0,0)
		end
		if KeyTable['S'] then 
			PartFound.CFrame = PartFound.CFrame * CFrame.new(0,0,BlinkSpeed + 0.1)
		end
		if KeyTable['D'] then 
			PartFound.CFrame = PartFound.CFrame * CFrame.new(BlinkSpeed, 0, 0)
		end
	end
end)

-- [[ End ]] --

notif("Toxic's Remake","took " .. string.format("%.6f",tick()-Tick) .. " seconds\n(Thanks for being a degenerate!)",10,"rbxassetid://7002501879")

-- Watermark And Ping --

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")

ScreenGui.Parent = game.CoreGui

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(17,17,17)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.770, 0, -0.100, 0)
ImageLabel.Size = UDim2.new(0, 450, 0, 250)
ImageLabel.Image = "http://www.roblox.com/asset/?id=11106936654"

ImageLabel.ImageTransparency = 0.27
wait(0.1)
ImageLabel.ImageTransparency = 0.27
wait(0.1)
ImageLabel.ImageTransparency = 0.27
wait(0.1)
ImageLabel.ImageTransparency = 0.27
wait(0.1)
ImageLabel.ImageTransparency = 0.27
wait(0.1)
ImageLabel.ImageTransparency = 0.27
wait(0.1)
ImageLabel.ImageTransparency = 0.27
wait(0.1)
ImageLabel.ImageTransparency = 0.27
wait(0.1)
ImageLabel.ImageTransparency = 0.27
wait(0.1)
ImageLabel.ImageTransparency = 0.27
wait(0.1)
ImageLabel.ImageTransparency = 0.27

wait(1)

repeat wait() until game:IsLoaded()
local Ping = Instance.new("TextLabel")

Ping.Name = "Ping"
Ping.Parent = ScreenGui
Ping.BackgroundColor3 = Color3.fromRGB(17,17,17)
Ping.BackgroundTransparency = 0.27
Ping.BorderColor3 = Color3.fromRGB(98,37,209)
Ping.BorderSizePixel = 1.5
Ping.Position = UDim2.new(0.0091, 0, 0.255, 0)
Ping.Size = UDim2.new(0, 135, 0, 40)
Ping.Font = Enum.Font.Code
Ping.TextColor3 = Color3.fromRGB(242,243,243)
Ping.TextScaled = true
Ping.TextSize = 14.000
Ping.TextWrapped = true

local script = Instance.new('LocalScript', Ping)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(ping) 
script.Parent.Text = ("Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping))) -- your ping
end)

Ping.BackgroundTransparency = 0.27
Ping.TextTransparency = 12

wait(0.1)
Ping.BackgroundTransparency = 0.27
Ping.TextTransparency = 0.9
wait(0.1)
Ping.BackgroundTransparency = 0.27
Ping.TextTransparency = 0.8
wait(0.1)
Ping.BackgroundTransparency = 0.27
Ping.TextTransparency = 0.6
wait(0.1)
Ping.BackgroundTransparency = 0.27
Ping.TextTransparency = 0.5
wait(0.1)
Ping.BackgroundTransparency = 0.27
Ping.TextTransparency = 0.3
wait(0.1)
Ping.BackgroundTransparency = 0.27
Ping.TextTransparency = 0.2
wait(0.1)
Ping.BackgroundTransparency = 0.27
Ping.TextTransparency = 0.1
wait(0.1)
Ping.BackgroundTransparency = 0.27
Ping.TextTransparency = 0

-- Inf Stam --

local LocalP = game.Players.LocalPlayer

LocalP.Character.Stamina.Changed:Connect(function()
    LocalP.Character:WaitForChild"Stamina"
    LocalP.Character.Stamina.Value = 100 
end)
LocalP.CharacterAdded:Connect(function()
    LocalP.Character:WaitForChild"Stamina"
    LocalP.Character.Stamina.Changed:Connect(function()
        LocalP.Character.Stamina.Value = 100 
    end)
end)

