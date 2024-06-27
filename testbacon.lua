
local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
  LastIteration = tick()
  for Index = #FrameUpdateTable, 1, -1 do
FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
  end
  FrameUpdateTable[1] = LastIteration
  local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
CurrentFPS = CurrentFPS - CurrentFPS % 1
  FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/v9Pdp6kx"))()
local Window = OrionLib:MakeWindow({Name = "培根脚本", HidePremium = false, SaveConfig = true,IntroText = "欢迎使用培根脚本", ConfigFolder = "欢迎使用培根脚本"})
local about = Window:MakeTab({
    Name = "培根脚本",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

CoreGui:SetCore("SendNotification", {
    Title = "培根脚本",
    Text = "加载成动，祝您游戏愉快",
    Duration = 10, 
})

about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("您当前服务器的ID"," "..game.GameId.."")

local Tab = Window:MakeTab({
	Name = "公告",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("永久免费缝合脚本（群:923615138 b站:爱玩Roblox的小培根头呀）")

Tab:AddParagraph("持续更新，如果发现不可用脚本请向作者反馈")

Tab:AddParagraph("更新时间无:，更新内容：无")

local Tab =Window:MakeTab({

	Name = "快捷复制",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "复制QQ群",

	Callback = function()

     setclipboard("923615138")

  	end

})

Tab:AddButton({

	Name = "复制b站",

	Callback = function()

     setclipboard("爱玩Roblox的小培根头呀")

  	end

})
local Tab = Window:MakeTab({
  Name = "通用脚本",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })

 Tab:AddButton({
	Name = "飞行",
	Callback = function()
loadstring(game:HttpGet('https://rentry.co/shadiao_yazifly/raw'))()
end
})

Tab:AddButton({
	Name = "飞行装备（可控制物体）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/zaochuan2"))()		
  	end
})

Tab:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	 
})

 Tab:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	 
})

Tab:AddTextbox({
	Name = "最大血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
	end	 
})

Tab:AddTextbox({
	Name = "墓前血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
	end	 
})

Tab:AddButton({
	Name = "回满血",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth 
end
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddButton({
	Name = "Acrylix（通用）",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/3dsonsuce/acrylix/main/Acrylix'))()
end
})

Tab:AddButton({
	Name = "修改玩家碰撞箱",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/JYFXjEVh'))()
end
})

Tab:AddButton({
	Name = "跑墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddButton({
	Name = "通用ESP",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
	end
})

Tab:AddButton({
	Name = "癫(电)脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
	Name = "甩飞",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})

Tab:AddButton({
	Name = "转圈",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end
})

Tab:AddButton({
  Name = "回血加速",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()
  end
})

Tab:AddButton({
    Name="重置人物",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
HumanDied = true
    end
})

Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})

Tab:AddButton({
	Name = "伪名说话",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})

Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})

Tab:AddButton({
	Name = "无敌",
	Callback = function()
local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
end
})

Tab:AddButton({
	Name = "无限跳",
    Default = false,
	Callback = function(Value)
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
	end
})

Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

Tab:AddButton({
	Name = "飞车",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})
Tab:AddButton({
	Name = "FPS(变流畅)",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()
  	end    
})

Tab:AddButton({
  Name = "光影1",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/arzRCgwS"))()
  end
})

Tab:AddButton({
  Name = "光影2",
  Default = false,
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  end
})

Tab:AddButton({
	Name = "超高画质",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end
})    

Tab:AddButton({
  Name = "旋转",
  Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  end
})

Tab:AddButton({
	Name = "转起来",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  	end
})

Tab:AddButton({
	Name = "玩家进入提示",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "doors",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "mshub(未汉化)",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()
end
})    

Tab:AddButton({
	Name = "圣光手雷(可以炸图)",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/u5B1UjGv"))()
end
})

Tab:AddButton({
	Name = "DXuwu(里面有模式道具,国人制作)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/DXuwu/test-lol/main/YO.lua"))()
end
})

Tab:AddButton({
	Name = "blackking And BobHub汉化",
	Callback = function()
--[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
end
})
Tab:AddButton({
	Name = "最强(未汉化)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()
end
})

Tab:AddButton({
	Name = "地板二(改地图)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod"))()
end
})

Tab:AddButton({
	Name = "变身怪物(对手机可能有点不友好)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
end
})

Tab:AddButton({
	Name = "紫色手电筒(请在开局的时候购买)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight%20Script.lua"))()
end
})

Tab:AddButton({
	Name = "生成Rebound(硬核)",
	Callback = function()
--该脚本生成的Rebound仅为硬核模式对于此实体的第1次模型整改（Rebound的第2个模型）所遗留的产物

local Reboundcolor = Instance.new("ColorCorrectionEffect",game.Lighting) game.Debris:AddItem(Reboundcolor,24)
                Reboundcolor.Name = "Warn"
                Reboundcolor.TintColor = Color3.fromRGB(65, 138, 255) Reboundcolor.Saturation = -0.7 Reboundcolor.Contrast = 0.2
                game.TweenService:Create(Reboundcolor,TweenInfo.new(15),{TintColor = Color3.fromRGB(255, 255, 255),Saturation = 0, Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()
local cue1 = Instance.new("Sound")
cue1.Parent = game.Workspace
cue1.Name = "Scream"
cue1.SoundId = "rbxassetid://9114397505"
local distort = Instance.new("DistortionSoundEffect")
distort.Parent = cue1
distort.Level = 1
local distort2 = Instance.new("DistortionSoundEffect")
distort2.Parent = cue1
distort2.Level = 1
local pitch = Instance.new("PitchShiftSoundEffect")
pitch.Parent = cue1
pitch.Octave = 0.5
local pitch2 = Instance.new("PitchShiftSoundEffect")
pitch2.Parent = cue1
pitch2.Octave = 0.5
local pitch3 = Instance.new("PitchShiftSoundEffect")
pitch3.Parent = cue1
pitch3.Octave = 0.5
cue1.Volume = 0.1
cue1:Play()
local cue2 = Instance.new("Sound")
cue2.Parent = game.Workspace
cue2.Name = "Spawn"
cue2.SoundId = "rbxassetid://9114221327"
cue2.Volume = 3
cue2:Play()
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
end)
end
})

Tab:AddButton({
	Name = "rooms自动过关两倍速",
	Callback = function()
-- 夜，我帮你翻译的
-- 谢谢我

if game.PlaceId ~= 6839171747 or game.ReplicatedStorage.GameData.Floor.Value ~= "Rooms" then
	game.StarterGui:SetCore("SendNotification", { Title = "无效位置"; Text = "检测到的游戏似乎不是房间" })
	
	local Sound = Instance.new("Sound")
	Sound.Parent = game.SoundService
	Sound.SoundId = "rbxassetid://550209561"
	Sound.Volume = 5
	Sound.PlayOnRemove = true
	Sound:Destroy()
	
	return
elseif workspace:FindFirstChild("PathFindPartsFolder") then
	game.StarterGui:SetCore("SendNotification", { Title = "Warning"; Text = "检查是QQ用户1289603470（凉）" })
	
	local Sound = Instance.new("Sound")
	Sound.Parent = game.SoundService
	Sound.SoundId = "rbxassetid://550209561"
	Sound.Volume = 5
	Sound.PlayOnRemove = true
	Sound:Destroy()

	return
end

local PathfindingService = game:GetService("PathfindingService")
local VirtualInputManager = game:GetService('VirtualInputManager')
local LocalPlayer = game.Players.LocalPlayer
local LatestRoom = game.ReplicatedStorage.GameData.LatestRoom

local Cooldown = false

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = ScreenGui

TextLabel.Size = UDim2.new(0,350,0,100)
TextLabel.TextSize = 48
TextLabel.TextStrokeColor3 = Color3.new(1,1,1)
TextLabel.TextStrokeTransparency = 0
TextLabel.BackgroundTransparency = 1

local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
end

local Folder = Instance.new("Folder")
Folder.Parent = workspace
Folder.Name = "PathFindPartsFolder"

if LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules:FindFirstChild("A90") then
    LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.A90.Name = "lol" -- Fuck you A90
end

function getLocker()
    local Closest

    for i,v in pairs(workspace.CurrentRooms:GetDescendants()) do
        if v.Name == "Rooms_Locker" then
            if v:FindFirstChild("Door") and v:FindFirstChild("HiddenPlayer") then
                if v.HiddenPlayer.Value == nil then
                    if v.Door.Position.Y > -3 then -- Prevents going to the lower lockers in the room with the bridge 
                        if Closest == nil then
                            Closest = v.Door
                        else
                            if (LocalPlayer.Character.HumanoidRootPart.Position - v.Door.Position).Magnitude < (Closest.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                                Closest = v.Door
                            end
                        end
                    end
                end
            end
        end
    end
    return Closest
end

function getPath()
    local Part
	
    local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
    if Entity and Entity.Main.Position.Y > -4 then
        Part = getLocker()
    else
        Part = workspace.CurrentRooms[LatestRoom.Value].Door.Door
    end
    return Part
end

LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
    TextLabel.Text = "你的房间号为: A-00 "..math.clamp(LatestRoom.Value, 1,1000)

    if LatestRoom.Value ~= 210 then
        LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.Scriptable
    else
        LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.KeyboardMouse
	
        Folder:ClearAllChildren()
    
        local Sound = Instance.new("Sound")
        Sound.Parent = game.SoundService
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Volume = 3
        Sound.PlayOnRemove = true
        Sound:Destroy()
        
        game.StarterGui:SetCore("SendNotification", { Title = "youtube.com/geoduude"; Text = "老子（114514xhxh)帮你翻译的" })
        return
    end
end)

game:GetService("RunService").RenderStepped:connect(function()
    LocalPlayer.Character.HumanoidRootPart.CanCollide = false
    LocalPlayer.Character.Collision.CanCollide = false
    LocalPlayer.Character.Collision.Size = Vector3.new(8,LocalPlayer.Character.Collision.Size.Y,8)

    LocalPlayer.Character.Humanoid.WalkSpeed = 21

    local Path = getPath()
    
    local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
    if Entity then
        if Path then
            if Path.Parent.Name == "Rooms_Locker" then
                if Entity.Main.Position.Y > -4 then
                    if (LocalPlayer.Character.HumanoidRootPart.Position - Path.Position).Magnitude < 2 then
                        if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                            fireproximityprompt(Path.Parent.HidePrompt)
                        end
                    end
                end
            end
        end
        if Entity.Main.Position.Y < -4 then
            if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
                LocalPlayer.Character:SetAttribute("Hiding", false)
            end
        end
    else
        if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
            LocalPlayer.Character:SetAttribute("Hiding", false)
        end
    end
end)

while true do

    local Destination = getPath()

    local path = PathfindingService:CreatePath({ WaypointSpacing = 1, AgentRadius = 0.1, AgentCanJump = false })
    path:ComputeAsync(LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,3,0), Destination.Position)
    local Waypoints = path:GetWaypoints()

    if path.Status ~= Enum.PathStatus.NoPath then

        Folder:ClearAllChildren()

        for _, Waypoint in pairs(Waypoints) do
            local part = Instance.new("Part")
            part.Size = Vector3.new(1,1,1)
            part.Position = Waypoint.Position
            part.Shape = "Cylinder"
            part.Rotation = Vector3.new(0,0,90)
            part.Material = "SmoothPlastic"
            part.Anchored = true
            part.CanCollide = false
            part.Parent = Folder
        end

        for _, Waypoint in pairs(Waypoints) do
            if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                LocalPlayer.Character.Humanoid:MoveTo(Waypoint.Position)
                LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
            end
        end
    end
end
end
})

Tab:AddButton({
	Name = "极端",
	Callback = function()
loadstring(game:HttpGet('https://github.com/HollowedOutMods/MayhemMode/blob/main/loader.lua?raw=true'))()
end
})

Tab:AddButton({
	Name = "巨魔",
	Callback = function()
loadstring(game:HttpGet("https://glot.io/snippe


local Tab = Window:MakeTab({
    Name = "各大脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "鸭脚本",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
    end
})

Tab:AddButton({
Name = "刺客",
	Callback = function()
CK_V2 = "作者_神罚"SheFa = "刺客群637340150"loadstring(game:HttpGet(('https://raw.githubusercontent.com/WDQi/SF/main/%E7%9C%8B%E4%BD%A0M.txt')))()
    end
})

Tab:AddButton({
  Name = "导管中心",
  Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
  end
})

Tab:AddButton({
    Name = "北约中心",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/USA868/114514-55-646-114514-88-61518-618-840-1018-634-10-4949-3457578401-615/main/Protected-36.lua"))()
    end
})

Tab:AddButton({
    Name = "脚本中心",
    Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
    end
})

Tab:AddButton({
    Name = "XCS，卡密a",
    Callback = function()
    getgenv().XC="作者XC"loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
    end
})

Tab:AddButton({
	Name = "小魔脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaomoNB666/xiaomoNB666/main/666.txt"))()
  	end
})

Tab:AddButton({
	Name = "皇脚本",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
  	end    
})
                                          
Tab:AddButton({
	Name = "青脚本",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/kkaaccnnbb/money/main/fix'))()
  	end    
})

Tab:AddButton({
    Name = "林脚本",
    Callback = function()
lin = "作者林"lin ="林QQ群 747623342"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
    end
})

Tab:AddButton({
	Name = "陈脚(要卡密)",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\81\120\68\68\57\83\112\87\34\41\41\40\41")()
  	end    
})

Tab:AddButton({
Name = "绿脚本",
  Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/Esw6YQKR"))()
   end
})

Tab:AddButton({
  Name = "霖溺脚本(要付费)",
  Callback = function()
LINNI__Script = "作者LinNiQQ号1802952013" Roblox= "作者LinNiQ群932613422" loadstring(game:HttpGet(('https://shz.al/~LINNI_ROBLOX'),true))()
  end
})

Tab:AddButton({
	Name = "情云脚本",
	Callback = function()
，loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()
  	end
})

Tab:AddButton({
	Name = "NN中心",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\100\104\100\98\120\117\98\47\110\110\115\105\101\106\119\47\109\97\105\110\47\71\85\73\89\68\83\83\46\108\117\97\34\41\41\40\41\10")()
  	end
})Tab:AddButton({
	Name = "k1s脚本",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/DCGzQ6iY"))()
  	end
})Tab:AddButton({
	Name = "浮萍中心",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\84\72\68\90\69\80\47\100\117\99\107\119\101\101\100\45\99\101\110\116\101\114\86\50\47\109\97\105\110\47\37\69\53\37\56\57\37\56\68\37\69\56\37\65\56\37\56\48\34\41\40\41\10")()
end
})    

Tab:AddButton({
	Name = "秋月合集",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\65\50\107\80\80\113\118\98\34\41\41\40\41\10")()
end
})  

local Tab = Window:MakeTab({
    Name = "监狱人生",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "脚本"
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/De4aYHDY"))()
  	end
})

Tab:AddButton({
	Name = "手里剑秒杀",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
  	end
})

local Section = Tab:AddSection({
	Name = "传送"
})
local Section = Tab:AddSection({
	Name = "传送的位置"
})

Tab:AddButton({
	Name = "到警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})

Tab:AddButton({
	Name = "到监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})

Tab:AddButton({
	Name = "到罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})

Tab:AddButton({
	Name = "到监狱室外",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})  

local Tab = Window:MakeTab({
    Name = "伐木大亨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "白脚本",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A822.lua", true))()
    end
})

local Section = Tab:AddSection({
	Name = "传送地点"})
	                                      
Tab:AddButton({
    Name = "火木",      
    Callback = function()              
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1615.8934326171875, 622.9998779296875, 1086.1234130859375)                end
}) 
                                                                             Tab:AddButton({
      Name = "画室",                 
      Callback = function()                
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5241.55810546875, -166.00003051757812, 709.5656127929688)                    end                                    
})                                                                

Tab:AddButton({                  
    Name = "幻影木",              
    Callback = function()             
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.28166198730469, -213.13137817382812, -1357.8018798828125)               end                                   
})                                                                

Tab:AddButton({                 
    Name = "木材反斗城",            
    Callback = function()             
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252.31906127929688, 2.9999992847442627, 56.9854850769043)                    end                                   
})                                                                               

Tab:AddButton({                 
    Name = "冰木",                  
    Callback = function()              
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522.8817138671875, 412.3657531738281, 3277.71826171875)                     end                                    
})                                                                

Tab:AddButton({                  
    Name = "椰子木",                
    Callback = function()              
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2615.709228515625, -5.899986743927002, -21.30138397216797)                   end                                     
}) 

local Tab = Window:MakeTab({
    Name = "evase",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XenonLUA/Xenon/main/Evade.lua"))()
end
}) 

local Tab = Window:MakeTab({
    Name = "内脏与黑火药",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}) 

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet(("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\65\81\84\70\69\72\54\84"),true))()
end
})

Tab:AddButton({
	Name = "2",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\34\104\116\116\112\115\58\47\47\102\114\101\101\110\111\116\101\46\98\105\122\47\114\97\119\47\109\117\122\110\104\101\114\104\114\117\34\41\44\116\114\117\101\41\41\40\41\10")()
  	end
})

    local Tab = Window:MakeTab({
	Name = "最强战场",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
loadstring(game:HttpGet("https://pastefy.app/REPoaFWC/raw",true))();
  end
})

Tab:AddButton({
  Name = "2(需要卡密)",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua"))()
  end
})
    
    Tab:AddButton({
  Name = "3",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sandwichk/RobloxScripts/main/Scripts/BadWare/Hub/Load.lua", true))()
  end
})

Tab:AddButton({
  Name = "4，↓有卡密↓",
  Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Strongest/main/Battlegrounds77"))()
  end
})

Tab:AddButton({
	Name = "↑点击复制卡密↑",
	Callback = function()
     setclipboard("BestTheStrongest5412Roblox")
  end
})      

local Tab = Window:MakeTab({
    Name = "速度传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "脚本"
})

Tab:AddButton({
	Name = "开启卡宠",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/uR6azdQQ"))()
	end
})

Tab:AddButton({
	Name = "自动重生和刷级",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/T9wTL150"))()        
  	end    
})

local Section = Tab:AddSection({
	Name = "传送岛屿"
})

Tab:AddButton({
	Name = "返还出生岛",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828125, 58.87917709350586, 3099.033935546875)      
  	end    
})

Tab:AddButton({
	Name = "白雪城",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.138671875, 58.87917709350586, 3782.69384765625)   
  	end    
})

Tab:AddButton({
	Name = "熔岩城",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.96875, 216.83917236328125, 4898.62841796875)       
  	end    
})

Tab:AddButton({
	Name = "传奇公路",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.87109375, 216.83917236328125, 5907.6279296875)    
  	end    
})

local Tab = Window:MakeTab({
    Name = "俄亥俄州",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "剑客工作室",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/ehaiezhou"))()
    end
})   

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\99\114\105\112\116\115\46\118\105\115\117\114\117\115\46\100\101\118\47\111\104\105\111\47\115\111\117\114\99\101"))()
    end
}) 

Tab:AddButton({
	Name = "自动工作和传送",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()
    end
}) 

local Tab = Window:MakeTab({
    Name = "死亡球",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua",true))()
    end
})      

local Tab = Window:MakeTab({
    Name = "巴掌模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}) 

Tab:AddButton({
	Name = "自动杀人",
	Callback = function()
function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end

while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
               game:GetService("ReplicatedStorage").b:FireServer(v.Character["Right Arm"])
               wait(0.1)
           end
       end
   end
end
    end
})   

Tab:AddButton({
	Name = "最强",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
end
})

local Tab = Window:MakeTab({
    Name = "彩虹朋友",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}) 

Tab:AddButton({
  Name = "1",
  Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
  end
})

local Tab = Window:MakeTab({
    Name = "手臂摔跤模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({

  Name = "1",
  Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KrzysztofHub/script/main/loader.lua"))()
  end
})

local Tab = Window:MakeTab({
    Name = "一路向西",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "快速抢劫",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://10041726588")[1].Source)()
end
})    

Tab:AddButton({
	Name = "刷钱",
	Callback = function()
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:wait()
local MaxLimit = game.Players.LocalPlayer.Stats.BagSizeLevel.CurrentAmount.Value

while wait() do
for i,v in pairs(game.Players.LocalPlayer.PlayerGui.InfoGui:GetDescendants()) do
if v.Name == "Bag" and v.Visible == false then
    Character.HumanoidRootPart.CFrame = game.Workspace.CashRegister.Open.CFrame
    wait(1)
repeat wait()
game.Workspace.CashRegister.Active.Value = true
game:GetService("ReplicatedStorage").GeneralEvents.Rob:FireServer("Register", { ["Part"]= workspace.CashRegister.Union, ["OpenPart"]= workspace.CashRegister.Open, ["ActiveValue"]= workspace.CashRegister.Active, ["Active"]= true })
until game.Players.LocalPlayer.States.Bag.Value == MaxLimit
    Character.HumanoidRootPart.CFrame = game.Workspace.Shops["OutlawGeneralStore1"].Head.ShopPart.CFrame
end
end
end
end
}) 

local Tab = Window:MakeTab({
    Name = "河北唐县",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})  

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Tang%20Country.lua"))()
end
})

Tab:AddButton({
	Name = "林",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
end
}) 

local Tab = Window:MakeTab({
    Name = "鲨口求生",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}) 

Tab:AddDropdown({
	Name = "免费船只",
	Default = "1",
	Options = {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"},
	Callback = function(Value)
local ohString1 = (Value)
game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
	end
})

Tab:AddButton({
	Name = "杀鲨鱼",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  	end
})

local Tab = Window:MakeTab({
	Name = "索尔的RNG",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Looser3itx/Hmmmmmmmmmmmmmmmmmmmmmmmmmmmm/main/loader.lua"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "兵工厂",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
    end
})

Tab:AddButton({
    Name = "2",
    Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init'), true))()
    end
})

local Tab = Window:MakeTab({
    Name = "造船寻宝",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua'),true))()
end
})    

Tab:AddButton({
	Name = "刷钱",
	Callback = function()
--[[
BABFT AUTO FARM MADE BY Lemon Juice#5058
]]
return(function(BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_lIllIlIllIllIlllIIlIll)local BuildaboatafkautofarmUPDATED_llIIlllllIIIIlIIIllllI=string.char;local BuildaboatafkautofarmUPDATED_IIIIlIlIlIl=string.sub;local BuildaboatafkautofarmUPDATED_lIIllIlIIlIllll=table.concat;local BuildaboatafkautofarmUPDATED_lIIlIIllIlIlIlIIlIllIIl=math.ldexp;local BuildaboatafkautofarmUPDATED_IlIIIlIIllIIlIIl=getfenv or function()return _ENV end;local BuildaboatafkautofarmUPDATED_IllIIIlllIIIIllIIlIIlI=select;local BuildaboatafkautofarmUPDATED_llIIllIIIIllIIlllIIl=unpack or table.unpack;local BuildaboatafkautofarmUPDATED_IIlIllIIIllIIllIllI=tonumber;local function BuildaboatafkautofarmUPDATED_llllIlllllIIlIIIlllllIIll(BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl)local BuildaboatafkautofarmUPDATED_IlIlIllIlIlll,BuildaboatafkautofarmUPDATED_llllIllI,BuildaboatafkautofarmUPDATED_llIIllIIIIllIIlllIIl="","",{}local BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI=256;local BuildaboatafkautofarmUPDATED_IlIlllIIIIl={}for BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=0,BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI-1 do BuildaboatafkautofarmUPDATED_IlIlllIIIIl[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII]=BuildaboatafkautofarmUPDATED_llIIlllllIIIIlIIIllllI(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII)end;local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=1;local function BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI()local BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_IIlIllIIIllIIllIllI(BuildaboatafkautofarmUPDATED_IIIIlIlIlIl(BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII),36)BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+1;local BuildaboatafkautofarmUPDATED_llllIllI=BuildaboatafkautofarmUPDATED_IIlIllIIIllIIllIllI(BuildaboatafkautofarmUPDATED_IIIIlIlIlIl(BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+BuildaboatafkautofarmUPDATED_IlIlIllIlIlll-1),36)BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+BuildaboatafkautofarmUPDATED_IlIlIllIlIlll;return BuildaboatafkautofarmUPDATED_llllIllI end;BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_llIIlllllIIIIlIIIllllI(BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI())BuildaboatafkautofarmUPDATED_llIIllIIIIllIIlllIIl[1]=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll;while BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII<#BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl do local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI()if BuildaboatafkautofarmUPDATED_IlIlllIIIIl[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII]then BuildaboatafkautofarmUPDATED_llllIllI=BuildaboatafkautofarmUPDATED_IlIlllIIIIl[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII]else BuildaboatafkautofarmUPDATED_llllIllI=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll..BuildaboatafkautofarmUPDATED_IIIIlIlIlIl(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll,1,1)end;BuildaboatafkautofarmUPDATED_IlIlllIIIIl[BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI]=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll..BuildaboatafkautofarmUPDATED_IIIIlIlIlIl(BuildaboatafkautofarmUPDATED_llllIllI,1,1)BuildaboatafkautofarmUPDATED_llIIllIIIIllIIlllIIl[#BuildaboatafkautofarmUPDATED_llIIllIIIIllIIlllIIl+1],BuildaboatafkautofarmUPDATED_IlIlIllIlIlll,BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI=BuildaboatafkautofarmUPDATED_llllIllI,BuildaboatafkautofarmUPDATED_llllIllI,BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI+1 end;return table.concat(BuildaboatafkautofarmUPDATED_llIIllIIIIllIIlllIIl)end;local BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI=BuildaboatafkautofarmUPDATED_llllIlllllIIlIIIlllllIIll('22F14275171C2751422522Y23B23422T22Y22V22P171727922Y22P237171D27922F22V23A22P22P22Y21V235231171127921U23A22T22X27I1E27922822P23G23421Y23523423422Z22Y27P28A28C23422022T22U22P22W171027922228627I1G27928F23122W22O21022T21022U22Z22T23421022R22Z294210234238171227922C22T27U22Y23428U27922R28Y171327921Z22Z27U27Y2801A27922M27B22O28C21Y22P23022T2362312A029S27521T22Y23522X29W27R23122U22W23122Y22R171K29122T22V23322R23A22Z23522Y22O29Z22W2A021J29K29Y29F2B92AN27522Q2B222X22E21V21Y2792BN2BO27921W22921W2BP26C22Z21W27729M22Z23B2312342AF28K28227522921S23122X21I1424X24M25J26Z27221X24621N1421B26O22T25G1D25A26121N2AH1422F23123I22P2BP23O22V2BT2BO21W2312BX29X27522A2312C12AQ22P15142BB27521X22V2C32362DF1528L27521S28522R29U2DE172DG27522K2BP1421S2D42BO21N2BX28V27521U28J29R28927522F2B323A27H22F27F23B2CV28B28D172ED142EN2342B72BE2EQ2ES27S22T22W22P22O2BY2752EX2CY2D02BP2142BX1F28M28D22B2852382382F12AV2792212B323B22P28F28H28J21H21S22Z23728K2D91429Z22Y27M2DL2812792C32342F01423O22W1N24K1223125W2CL2BP22H2D827921V22322021S21022822C2G327527D29O2342BP21W22P2BT25G23A26024B2GD2502CL1J1R21Z21025F23925K2GG2BN24K22T2E42BN21V2BX2C62CW27E23A29R2E81427D22Z2381425A25626L21N22Q24H26D2HF27923O21T2E727R28I29J29L27527T2F12C21421421S1221W23C21326M2I527523O21Y2BX1S2FK22T2A829823H21022022P22X28J21022627Z27H21321D21G21D21O2CV2HV27W171I2AX2AZ2B12B32B522828527C23829O27W22V23H2E126C2CL23722421H21W24M22526G2IQ1422S22U2HJ2IR2242I927522322C21T2222BF1422V28J2G12HR27923722T2IH23J1G24Q21V26D23I23K2CU2EQ22F2HP23422P23A2A22KK22F22P2ET2A027I2AW2EE27W22O22222Z2C322Q23122V29B2C42GS2ER2C22F01729027529229G29721Y29A29C21V29F2952GQ2CV2252KM28K2BN2F32E22352852C328J2E11O21W2252DY1M2DY142MP2102BP16141M2752DG27K2E12MU2MU2MW2MQ2N42752MS2N42DG2N22752MU2HS2792N9142NA2NG2N5142N72N12NI2N327K2HN2792NM2NH27K2MR2762DH2NN27528V2ID2MC2NI2NH28V2NV1428V28V2NH2822NQ2NZ2O32MV2752822O62OB2NY1429L2OC142822NM2N329L2O629L29L2NH29X2O12792OV2OK29X2O629X29X2NH2782ON2P52NI21G2BN29X2782N32782EQ2N72782782FB2LF27527Q2PE275278192792PI14278182NK2PQ2PV142A42PM142PX2782LF2DG27Q2752PF142PM2PU2781L2OF1427Q2N32QH2891N2792N32FB2LW2BN2PK2NI2Q7141B2Q02QB2JJ2N62PZ2782NH27Q1J2QO2752892QK2QP142IV2QA2752PX2QK2792PW2QU2MX141H2QY2PZ2R02PY2Q02R32QH2QJ2R7142891U2RW2FB2RA2RF141V2BP2RJ2MU2QV1T2Q02PB2N41O141P142SC2DG1Q141R2SH2RL2MS2SM2SC2MU29X2112QC2NB2QI2N42QB2QD2R2142QG2N327Q2QR2N32R92S02QH2QS142FB2S82SW2QX2PP2Q02RQ2QE2OK2RV2RE2RX142122QO2A42S12RW2PX2132S62Q42RK2NI2SA2TH2PR2PT2T11W2RR2PJ141X2SV2NI2U62782SR141Y142SU2SZ2PT2202RS2T22MV2262SX2S22TO2US2TT2BO2QT2TE2NI1Z2SB2SW2182SL2SN2NI2191421A2V52MU21B2V42PU2MU2142U72Q02152OL2222TO2RL2MU142PS2RL2792VQ142FX142QN2PG2N42SC27K29X2162UB27K27Q2DG2UK2R12UN2T32PN142T62R82WD2T92RH2PZ2TD2W42QW2RO2TI2U42UN2R4142172RW2T82TN2UV2QH2RG2TX2PX2UY27K2RN2U2142TJ2T12WR2US2892SC2QH2WX2N32TV2X02TZ27K2U12QH2U32W92U82U62TK2UA2LF27K2UD2V527K2UH21H2XL2UB2VH2QF2RU2TA2T72Y42752WX2RI2TC2XI142V02UE2NW2V32SQ2NW2V72V92W02CM2V42SC28V29X2CC2LF28V2W62XZ2T02WA2Y32QN2TN28921J2WH2TX2WK2YS2WM2X52X72WQ2Y321C2WU2Y62YA21D2TU2TA2Y92X12UB28V2X42XZ2Z92U82X92ZD21E2Z32TN2PX21F2XH2UY28V2XK2QB2VT2TK2XP2T12XR2OD2XU2YO2UG1421O2YV2WP2U82WB2UR2ZD2UU2ZI2WJ2TZ28V2YD2V528V2YG310Q142YJ2SH2SA28V2VC2SQ2V728229X21P2UB2822YU2W82Y12UO2T42WG2Z02ZE2Y8310M2UY2822TG2ZO310F2Q02WR2ZC311D310K21Q2ZH2WI2Q02ZK2LF2822ZN2QZ311L2RT311B2XA142ZT2WW2ZE2PX21R2ZY31151431012PZ31032U5311931072OO1431092OG310B21K310E2XN2Q0310H2TM2QL311E310L2Q02Z5312M310P2SC282310S3131310U2V82V5282310Z2V529L29X21L2UB29L31172PZ2YW310G2YY2ZD2Z231262QR2Y9312Y2OL2Z7311K312Q31212WC3123310K21M311S312A2LF29L311Y2RP31202TL2ZE2RY2ZU2WY142K72S7313E312C2WN2XM311931052UN312I29L312L313R2UH2BT31182TK312S3148312V311T2UX314F313027529L310V2SC2P41421X2UB29X2Q92MV313Z2Q63146314U2YZ312U2WE2YA313O311G3158313S3154142BM21Z313T31192N22ZT312T1M2V32WV2XD2E231402UW2TY2UY29X31442WO313U3147312321T314A1M2ZT2PX21U2BN311J311V27529X312D2Q0312F2UN314K2U8312I29X314O29X2UH21V312P3119314U2RA2ZT315Z1M2272YA314X2YA31652YC2V12VU143133316L31352YK317G31392PU29X2VG2TK2242VK2TO2DG2NF2VP2792VV2VT2MP14317P2VY2W72PZ2252RW27Q2UQ31632MU31822Q02PH2T131762TK2UM2Y52212BP2FB2OD2SC2FB2VL223310W2YA314Q2SH2VC2FB22C1422D2V52FB22E2CW2TB2FB2DG2PU28V317N2T12VJ122VL28931892N52VT2NQ318431812752XC317Y2MZ2NX2762FX2DB2DD2F0317S152NQ2W32BP2XC2N42VO2BN2MP319Z2MY2BP317Y2O2319P279319R2AP319T2MQ319V2BN319X2BO31A42NI2BO31A331A2319O31AN2E131572762HS2KR2KT2KV2KX2KZ2CU2HS29U2872EP2IA2GV2L62L82FX2LA2LC27U2FJ2LG2B52LJ2LL2LN2LP28J2LR2282LT27I2FX22122P23B23B22T22R27I2HS2ES2JI2GK2M529628G22Z21022Q29O22X2102GU2HQ2FI2HS2M931BJ2MC2782DR2MF31BI22Y2E11G2BX2PM2FL2352FN2FP28I22Y2FS2FU2FW2BC2G022P2DL1424E24D31D431D425921N152DP2EQ21V2LB2LA23A2AE27H2KK22C22W22T23H2L62EL318K1422022Z2LO22W31DJ31DL2L62DQ2FY2AC2852DL31DX2PM2242AL27F22Z23122O22E22Z2LK29N2HQ2E121C2BX31CG2ER28S22P2382A029R2O121Z28429V319N27M2371425N26R22F26F24H25B21Z25G1425L25K31F825K2202HL1424K1U2172611W24R23K2BT23P24121Z23Z22W21F22C31F522Q31FU31FU1Y22D2BT2242KY1G21624K24K2BT1621B23N1I26522Y21T31F531F731F922022331FZ31G121624G24I31FL31FN31FP24Z22D31FT31FV22Q24I22C31GJ23I31G224S24O31GO31FO22W26R31GS1424G23821L1E1J22A25131G631G831GA26I22231GT31FV26A22K2BT31H931HB1J22K24W31HG31G931GB22631F531D331D524D31EH31H831HA31HC22M24Z31HV31HI22031GE31F931FA22731HP31I51J22G25A31H331FP21F22K31IC31GG21W31IG31HR22I25531I931GB22731HL31FU24I31HO1422E2581Q23L1F21G25G2BT31EY31F031F231HK31F631ID1822A31F524U26T25Y22123A24125I2BX2O12FL2DN22822Z2KK22A31D028I23A2Z21X1231FM21Z21R31IB1422O21R26322323T21L23631F525F22721F23X23923S31JR2E11W21W25H2BN2V92VR2QH317S2RW2NM31AL2NI318A31A52W931KY28V2N731KY2822NO313R2BO2HS28V310A2PD310T27Q2XB2OD2FB2PX310A2PS2A42NE2O72NJ31LT2RR31KY2QX31L82N42AW319B31AO31KY317U2E1318431A52W7311R31M32MV2ZT2MU2QG2792SE2NF2DG1Y312O27529031821031ME2WG31M82N4319N2102WT31KY2QN31LB315K31MS2NI31LY2DG2RN2NL2N42JJ2N727K2MU2R62N328V2RD317Q2OH31A02752VT319N31M431LS2QA29X2822SA2TN2822RZ2W92OJ2S52OR142SE2TN29X2SG2TN2782SK2BO282313V313R31NT2RR2OU2S42QH29X2SM31O32RR2Y32SU2BO313F2P11431OA2N7315531NW2PZ2TQ2TN27Q2TW311D2U62BO29X319D2XZ31OP2T131OS2SX2UA311D2UH31262V031632WK311B31P42SX27Q31P62892V331262N7314B2V72BO27Q2ZK2Y531PG28928931P62FB31KV314B2VC2TN2PS2VG2BO2892PS2NH2FB31PG2FB2FB31P62PX2VJ31Q21431AH2N32A42WT2BO2FB2A42NH2PX31PG2PX2PX31P62PS2XC31QJ142XY2TN2QX2CC2BO2PX2QX2NH2PS31PG2PS2PS31P62A4313M2QH2QX311O2QH2AW2ZG2BO2PS2AW2NH2A431PG2A42A431P62QX312531RH142ZX2TN2QG310D2BO2A42QG2NH2QX31PG2QX2QX31P62AW311431RY14311R2TN2MW31292BO2QX2MW2NH2AW31NQ2BN2QG2ON31RM2SY2752AW2MP2N331S32BP31SR318A31SM2BP2QG2OY31ST31L231RV31SV2752QG31MP27931SZ31RV31SN2II2UO2VV2MW31TD2N331SU2RW31TA31SY31T631TL314G2BO2QG31EJ31TC31TQ31T531T82UO31TB31T5319E31TR31TF31T92SX2BO31TK31TY31TN2UO31U831TX2SV31U52UO315A31TW31U331UA31SC31U12SV31UK31UF31T22VM2BN31U92SV31TZ31TO31UD31UP31T131TT2YA31UY31SS31UV31UB31UN31UU31V031SO2TY31V331T02NJ31SW31UC31UT31UE31V92792QG2VT31UJ31V431TM31UM31TP31UZ31TS31VA31LQ31VH31VS31UW31VG31VN31VD31UG2QG2QX31VC31T731V631VR31VO31AO2N72AW2AW29031WB2SV31N431T52AW31N731WI14312O2N32MW313D2W92MW2MW31P62QN313Z2TN2902HF2N32RN2KB2OF2RN31UD2RL31TR31VY31AR31VW31LT31A72ND31MM319K31LR2NR27931VV2CV31AU2GW2KU2KW2KY2L02CV31B128831B431CA2L727Z2L92LB29Z31BB2PM2LA31BE2LK2312LM2LO2MH2C528A31BM2KK31BP31BR31BT31BV2FC29R2RQ2M42LZ31C231C431C631C82IB2FH2F231CC2MA31NK2MD21S31CI31Y931CL21W2Q331SH2E12E12RH31TZ317T2MT31V42NW2W92BN31L72BP31LA2SW31T431AO31LF2NW31LH2YL31LJ2XV2YA31LN2NW31LP2BP2NU31A631Z531XJ2MP29J31EJ22C2C02C22LQ315A2372A023323B2JS31DH2FX21V2852AE2342JW31Z531DY22X31BT22Y2C22352A831XK2KS31EP29Y31ES31B22HS229320O29R31EJ31JZ2B822V2C223H1731DP31EB234321331DS321631JY31K02BE31EU27N1431GU22Q23M23021W31OZ2NK316Y2MP317Y321T2BN31A12W92NS31AN2NF31N531KW31AO2W927K31N9321W2NI27K31LB319N2YL28V31ZH2NX2HN2N72O931LC312M2MP2E827K2SU31MR31552792IV2P231LT2VV2VH2MU31UI2U82OY2782DG315D317D2U8317V31Z531TV2Y32PX2W927Q27Q31VM2YU2NH289323B2RR31PV31NL317R2TZ2QT2892LF31P12SX102ZC27K2QX31MR322627921G2SA27K28V31LQ319L31XG275');local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=(bit or bit32);local BuildaboatafkautofarmUPDATED_IlIlllIIIIl=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII and BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII.bxor or function(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_llllIllI)local BuildaboatafkautofarmUPDATED_IlIlIllIlIlll,BuildaboatafkautofarmUPDATED_IlIlllIIIIl,BuildaboatafkautofarmUPDATED_IIIIlIlIlIl=1,0,10 while BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII>0 and BuildaboatafkautofarmUPDATED_llllIllI>0 do local BuildaboatafkautofarmUPDATED_IIIIlIlIlIl,BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII%2,BuildaboatafkautofarmUPDATED_llllIllI%2 if BuildaboatafkautofarmUPDATED_IIIIlIlIlIl~=BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI then BuildaboatafkautofarmUPDATED_IlIlllIIIIl=BuildaboatafkautofarmUPDATED_IlIlllIIIIl+BuildaboatafkautofarmUPDATED_IlIlIllIlIlll end BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_llllIllI,BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII-BuildaboatafkautofarmUPDATED_IIIIlIlIlIl)/2,(BuildaboatafkautofarmUPDATED_llllIllI-BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI)/2,BuildaboatafkautofarmUPDATED_IlIlIllIlIlll*2 end if BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII<BuildaboatafkautofarmUPDATED_llllIllI then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_llllIllI end while BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII>0 do local BuildaboatafkautofarmUPDATED_llllIllI=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII%2 if BuildaboatafkautofarmUPDATED_llllIllI>0 then BuildaboatafkautofarmUPDATED_IlIlllIIIIl=BuildaboatafkautofarmUPDATED_IlIlllIIIIl+BuildaboatafkautofarmUPDATED_IlIlIllIlIlll end BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII-BuildaboatafkautofarmUPDATED_llllIllI)/2,BuildaboatafkautofarmUPDATED_IlIlIllIlIlll*2 end return BuildaboatafkautofarmUPDATED_IlIlllIIIIl end local function BuildaboatafkautofarmUPDATED_llllIllI(BuildaboatafkautofarmUPDATED_llllIllI,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_IlIlIllIlIlll)if BuildaboatafkautofarmUPDATED_IlIlIllIlIlll then local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=(BuildaboatafkautofarmUPDATED_llllIllI/2^(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII-1))%2^((BuildaboatafkautofarmUPDATED_IlIlIllIlIlll-1)-(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII-1)+1);return BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII-BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII%1;else local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=2^(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII-1);return(BuildaboatafkautofarmUPDATED_llllIllI%(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII)>=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII)and 1 or 0;end;end;local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=1;local function BuildaboatafkautofarmUPDATED_IlIlIllIlIlll()local BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI,BuildaboatafkautofarmUPDATED_IIIIlIlIlIl,BuildaboatafkautofarmUPDATED_llllIllI,BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl(BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+3);BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI=BuildaboatafkautofarmUPDATED_IlIlllIIIIl(BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI,4)BuildaboatafkautofarmUPDATED_IIIIlIlIlIl=BuildaboatafkautofarmUPDATED_IlIlllIIIIl(BuildaboatafkautofarmUPDATED_IIIIlIlIlIl,4)BuildaboatafkautofarmUPDATED_llllIllI=BuildaboatafkautofarmUPDATED_IlIlllIIIIl(BuildaboatafkautofarmUPDATED_llllIllI,4)BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_IlIlllIIIIl(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll,4)BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+4;return(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll*16777216)+(BuildaboatafkautofarmUPDATED_llllIllI*65536)+(BuildaboatafkautofarmUPDATED_IIIIlIlIlIl*256)+BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI;end;local function BuildaboatafkautofarmUPDATED_IIlIllIIIllIIllIllI()local BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_IlIlllIIIIl(BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl(BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII),4);BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+1;return BuildaboatafkautofarmUPDATED_IlIlIllIlIlll;end;local function BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI()local BuildaboatafkautofarmUPDATED_llllIllI,BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl(BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+2);BuildaboatafkautofarmUPDATED_llllIllI=BuildaboatafkautofarmUPDATED_IlIlllIIIIl(BuildaboatafkautofarmUPDATED_llllIllI,4)BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_IlIlllIIIIl(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll,4)BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+2;return(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll*256)+BuildaboatafkautofarmUPDATED_llllIllI;end;local function BuildaboatafkautofarmUPDATED_lIIllllIlIlllIIlIIllI()local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll();local BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll();local BuildaboatafkautofarmUPDATED_IIIIlIlIlIl=1;local BuildaboatafkautofarmUPDATED_IlIlllIIIIl=(BuildaboatafkautofarmUPDATED_llllIllI(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll,1,20)*(2^32))+BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII;local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_llllIllI(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll,21,31);local BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=((-1)^BuildaboatafkautofarmUPDATED_llllIllI(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll,32));if(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII==0)then if(BuildaboatafkautofarmUPDATED_IlIlllIIIIl==0)then return BuildaboatafkautofarmUPDATED_IlIlIllIlIlll*0;else BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=1;BuildaboatafkautofarmUPDATED_IIIIlIlIlIl=0;end;elseif(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII==2047)then return(BuildaboatafkautofarmUPDATED_IlIlllIIIIl==0)and(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll*(1/0))or(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll*(0/0));end;return BuildaboatafkautofarmUPDATED_lIIlIIllIlIlIlIIlIllIIl(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII-1023)*(BuildaboatafkautofarmUPDATED_IIIIlIlIlIl+(BuildaboatafkautofarmUPDATED_IlIlllIIIIl/(2^52)));end;local BuildaboatafkautofarmUPDATED_llllIlllllIIlIIIlllllIIll=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll;local function BuildaboatafkautofarmUPDATED_lIIlIIllIlIlIlIIlIllIIl(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll)local BuildaboatafkautofarmUPDATED_llllIllI;if(not BuildaboatafkautofarmUPDATED_IlIlIllIlIlll)then BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_llllIlllllIIlIIIlllllIIll();if(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll==0)then return'';end;end;BuildaboatafkautofarmUPDATED_llllIllI=BuildaboatafkautofarmUPDATED_IIIIlIlIlIl(BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+BuildaboatafkautofarmUPDATED_IlIlIllIlIlll-1);BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+BuildaboatafkautofarmUPDATED_IlIlIllIlIlll;local BuildaboatafkautofarmUPDATED_IlIlIllIlIlll={}for BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=1,#BuildaboatafkautofarmUPDATED_llllIllI do BuildaboatafkautofarmUPDATED_IlIlIllIlIlll[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII]=BuildaboatafkautofarmUPDATED_llIIlllllIIIIlIIIllllI(BuildaboatafkautofarmUPDATED_IlIlllIIIIl(BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl(BuildaboatafkautofarmUPDATED_IIIIlIlIlIl(BuildaboatafkautofarmUPDATED_llllIllI,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII)),4))end return BuildaboatafkautofarmUPDATED_lIIllIlIIlIllll(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll);end;local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll;local function BuildaboatafkautofarmUPDATED_llllIlllllIIlIIIlllllIIll(...)return{...},BuildaboatafkautofarmUPDATED_IllIIIlllIIIIllIIlIIlI('#',...)end local function BuildaboatafkautofarmUPDATED_llIIlllllIIIIlIIIllllI()local BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI={};local BuildaboatafkautofarmUPDATED_IllIIIlllIIIIllIIlIIlI={};local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII={};local BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl={[#{"1 + 1 = 111";"1 + 1 = 111";}]=BuildaboatafkautofarmUPDATED_IllIIIlllIIIIllIIlIIlI,[#{"1 + 1 = 111";{992;792;804;13};"1 + 1 = 111";}]=nil,[#{{735;301;869;678};"1 + 1 = 111";{157;319;424;633};"1 + 1 = 111";}]=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,[#{"1 + 1 = 111";}]=BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI,};local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll()local BuildaboatafkautofarmUPDATED_IIIIlIlIlIl={}for BuildaboatafkautofarmUPDATED_llllIllI=1,BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII do local BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_IIlIllIIIllIIllIllI();local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII;if(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll==1)then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=(BuildaboatafkautofarmUPDATED_IIlIllIIIllIIllIllI()~=0);elseif(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll==0)then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_lIIllllIlIlllIIlIIllI();elseif(BuildaboatafkautofarmUPDATED_IlIlIllIlIlll==3)then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_lIIlIIllIlIlIlIIlIllIIl();end;BuildaboatafkautofarmUPDATED_IIIIlIlIlIl[BuildaboatafkautofarmUPDATED_llllIllI]=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII;end;for BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl=1,BuildaboatafkautofarmUPDATED_IlIlIllIlIlll()do local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IIlIllIIIllIIllIllI();if(BuildaboatafkautofarmUPDATED_llllIllI(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,1,1)==0)then local BuildaboatafkautofarmUPDATED_IlIlllIIIIl=BuildaboatafkautofarmUPDATED_llllIllI(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,2,3);local BuildaboatafkautofarmUPDATED_llIIllIIIIllIIlllIIl=BuildaboatafkautofarmUPDATED_llllIllI(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,4,6);local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII={BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI(),BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI(),nil,nil};if(BuildaboatafkautofarmUPDATED_IlIlllIIIIl==0)then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("VLE")]=BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI();BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("uThy")]=BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI();elseif(BuildaboatafkautofarmUPDATED_IlIlllIIIIl==1)then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("pLD")]=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll();elseif(BuildaboatafkautofarmUPDATED_IlIlllIIIIl==2)then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("zJ1")]=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll()-(2^16)elseif(BuildaboatafkautofarmUPDATED_IlIlllIIIIl==3)then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("vp4")]=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll()-(2^16)BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("l2hh")]=BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI();end;if(BuildaboatafkautofarmUPDATED_llllIllI(BuildaboatafkautofarmUPDATED_llIIllIIIIllIIlllIIl,1,1)==1)then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("3d")]=BuildaboatafkautofarmUPDATED_IIIIlIlIlIl[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("m2")]]end if(BuildaboatafkautofarmUPDATED_llllIllI(BuildaboatafkautofarmUPDATED_llIIllIIIIllIIlllIIl,2,2)==1)then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("jdC")]=BuildaboatafkautofarmUPDATED_IIIIlIlIlIl[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("cxu")]]end if(BuildaboatafkautofarmUPDATED_llllIllI(BuildaboatafkautofarmUPDATED_llIIllIIIIllIIlllIIl,3,3)==1)then BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#{{129;369;363;443};{976;399;571;193};{295;2;728;141};"1 + 1 = 111";}]=BuildaboatafkautofarmUPDATED_IIIIlIlIlIl[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#{{794;226;119;702};"1 + 1 = 111";"1 + 1 = 111";{716;439;355;870};}]]end BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI[BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl]=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII;end end;BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl[3]=BuildaboatafkautofarmUPDATED_IIlIllIIIllIIllIllI();for BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=1,BuildaboatafkautofarmUPDATED_IlIlIllIlIlll()do BuildaboatafkautofarmUPDATED_IllIIIlllIIIIllIIlIIlI[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII-1]=BuildaboatafkautofarmUPDATED_llIIlllllIIIIlIIIllllI();end;return BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl;end;local function BuildaboatafkautofarmUPDATED_IlIIIIIIlIIIIIlIIIlIllII(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII,BuildaboatafkautofarmUPDATED_IIIllllllIlllllIl,BuildaboatafkautofarmUPDATED_IIIIlIlIlIl)BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII==true and BuildaboatafkautofarmUPDATED_llIIlllllIIIIlIIIllllI())or BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII;return(function(...)local BuildaboatafkautofarmUPDATED_IlIlllIIIIl=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[1];local BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[3];local BuildaboatafkautofarmUPDATED_lllllIlll=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[2];local BuildaboatafkautofarmUPDATED_IIlIlllllllIlllIIIIIIl=BuildaboatafkautofarmUPDATED_llllIlllllIIlIIIlllllIIll local BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=1;local BuildaboatafkautofarmUPDATED_lIIIlIIIllIIlllIlllI=-1;local BuildaboatafkautofarmUPDATED_llllIlllllIIlIIIlllllIIll={};local BuildaboatafkautofarmUPDATED_llIIlllllIIIIlIIIllllI={...};local BuildaboatafkautofarmUPDATED_IllIIIlllIIIIllIIlIIlI=BuildaboatafkautofarmUPDATED_IllIIIlllIIIIllIIlIIlI('#',...)-1;local BuildaboatafkautofarmUPDATED_IIlIllIIIllIIllIllI={};local BuildaboatafkautofarmUPDATED_llllIllI={};for BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=0,BuildaboatafkautofarmUPDATED_IllIIIlllIIIIllIIlIIlI do if(BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII>=BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI)then BuildaboatafkautofarmUPDATED_llllIlllllIIlIIIlllllIIll[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII-BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI]=BuildaboatafkautofarmUPDATED_llIIlllllIIIIlIIIllllI[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+1];else BuildaboatafkautofarmUPDATED_llllIllI[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII]=BuildaboatafkautofarmUPDATED_llIIlllllIIIIlIIIllllI[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII+#{"1 + 1 = 111";}];end;end;local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IllIIIlllIIIIllIIlIIlI-BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI+1 local BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII;local BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI;while true do BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IlIlllIIIIl[BuildaboatafkautofarmUPDATED_IlIlIllIlIlll];BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI=BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("K")];if BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI<=#("N9FN2qPYrvJ0Uxq4roDgs1zgaQZHeHNTNZeOOpo")then if BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI<=#("acXm4Vj51ptRQK5VLzN")then if BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI<=#("CiUVS0n4s")then if BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI<=#("pb9l")then if BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI<=#("p")then if BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI==#{}then BuildaboatafkautofarmUPDATED_llllIllI[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("cI")]]=BuildaboatafkautofarmUPDATED_llllIllI[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("mx1")]]+BuildaboatafkautofarmUPDATED_llllIllI[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("sQhc")]];else local BuildaboatafkautofarmUPDATED_lllIllllIlIlIIlIIlIIlI;BuildaboatafkautofarmUPDATED_llllIllI[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("hb")]]=BuildaboatafkautofarmUPDATED_IIIIlIlIlIl[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("cKg")]];BuildaboatafkautofarmUPDATED_IlIlIllIlIlll=BuildaboatafkautofarmUPDATED_IlIlIllIlIlll+1;BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII=BuildaboatafkautofarmUPDATED_IlIlllIIIIl[BuildaboatafkautofarmUPDATED_IlIlIllIlIlll];BuildaboatafkautofarmUPDATED_llllIllI[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("Sa")]]=BuildaboatafkautofarmUPDATED_llllIllI[BuildaboatafkautofarmUPDATED_IIllIIlIIIIIIIlIlIlII[#("AEG")]][BuildaboatafkautofarmUP
end
})    

local Tab = Window:MakeTab({
    Name = "感动星期五",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function ()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ShowerHead-FluxTeam/scripts/main/funky-friday-autoplay'))()
  end
})

local Tab = Window:MakeTab({
    Name = "背上只因剑",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "巨型战士",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
end
})  

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet(('https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua'),true))()
end
})

Tab:AddButton({
	Name = "2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
end
})   

local Tab = Window:MakeTab({
    Name = "法宝模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})  

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/Bd6R0GaC"))()
end
})         

Tab:AddButton({
	Name = "2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FreeRobloxScripts/anime-fighting/main/simulator"))()
end
})

Tab:AddButton({  
    Name = "3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()
	end
})

local Tab = Window:MakeTab({
    Name = "蜂群模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/BSS%20FREE"))()
end
})  

Tab:AddButton({
	Name = "2",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/KSpGSvQg", true))()
end
})  

Tab:AddButton({
	Name = "3",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/max0mind/lua/main/loader.lua'))()
end
}) 

Tab:AddButton({
	Name = "刷金币",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()
end
})   

local Tab = Window:MakeTab({
	Name = "忍者传奇(内置)",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

autoswing = false
function swinging()
    spawn(
        function()
            while autoswing == true do
                task.wait()
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                if not autoswing then
                    break
                end
            end
        end
    )
end
autosell = false
function selling()
    spawn(
        function()
            while autosell == true do
                task.wait(.01)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                    wait(.1)
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Workspace.Part.CFrame
                    if not autosell then
                        break
                    end
                end
            end
        end
    )
end
autosellmax = false
function maxsell()
    spawn(
        function()
            while autosellmax == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                        task.wait()
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Workspace.Part.CFrame
                    end
                end
                if not autosellmax then
                    break
                end
            end
        end
    )
end
autobuyswords = false
function buyswords()
    spawn(
        function()
            while autobuyswords == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSwords"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyswords then
                    break
                end
            end
        end
    )
end
autobuybelts = false
function buybelts()
    spawn(
        function()
            while autobuybelts == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllBelts"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuybelts then
                    break
                end
            end
        end
    )
end
autobuyranks = false
function buyranks()
    spawn(
        function()
            while autobuyranks == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyRank"
                    local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
                    end
                end
                if not autobuyranks then
                    break
                end
            end
        end
    )
end
autobuyskill = false
function buyskill()
    spawn(
        function()
            while autobuyskill == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSkills"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyskill then
                    break
                end
            end
        end
    )
end
autobuyshurikens = false
function buyshurikens()
    spawn(
        function()
            while autobuyshurikens == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllShurikens"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyshurikens then
                    break
                end
            end
        end
    )
end

Tab:AddToggle(
    {
        Name = "自动挥舞",
        Default = false,
        Callback = function(x)
            autoswing = x
            if autoswing then
                swinging()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动售卖",
        Default = false,
        Callback = function(x)
            autosell = x
            if autosell then
                selling()
            end
        end
    }
)
    
Tab:AddToggle(
    {
        Name = "存满了自动售卖",
        Default = false,
        Callback = function(x)
            autosellmax = x
            if autosellmax then
                maxsell()
            end
        end
    }
)

local Section = Tab:AddSection({
	Name = "自动购买功能"
})

Tab:AddToggle(
    {
        Name = "自动购买剑",
        Default = false,
        Callback = function(x)
            autobuyswords = x
            if autobuyswords then
                buyswords()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买腰带",
        Default = false,
        Callback = function(x)
            autobuybelts = x
            if autobuybelts then
                buybelts()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买称号（等级）",
        Default = false,
        Callback = function(x)
            autobuyranks = x
            if autobuyranks then
                buyranks()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买忍术",
        Default = false,
        Callback = function(x)
            autobuyskill = x
            if autobuyskill then
                buyskill()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买（全部打开）",
        Default = false,
        Callback = function(x)
            autobuyshurikens = x
            if autobuyshurikens then
                buyshurikens()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "解锁所有岛",
        Callback = function()
            for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
                if v then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
                    wait(.5)
                end
            end
        end
    }
)

local player = Window:MakeTab({
	Name = "忍者传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "超强",
	Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/XRoLLu/Rolly_Hub/main/open-source-trash-loader.exe.yeah"))()
  	end
})

player:AddButton({
	Name = "2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AliCode14/scripts/main/ScriptHub.lua"))()
  	end
})        
