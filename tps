-- PremiumOnly

local success, err = pcall(function()
    local function safeDestroy(obj)
        if obj and obj.Destroy then
        obj:Destroy()
    end
end
for _, BN in pairs(game:GetService("Workspace").FE.Settings:GetChildren()) do
        if BN.Name == "BName" then
        safeDestroy(BN)
    end
end
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        wait(0.5)
        for _, char in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if char.Name == " " then
        safeDestroy(char)
        end
    end
end)
    for _, obj in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if obj.Name == " " or (obj:IsA("LocalScript") and (string.match(obj.Name, "%d") or string.match(obj.Name, " "))) then
        safeDestroy(obj)
    end
end
    for _, obj in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
        if obj.Name == "CheckPlayerW" or obj.Name == "Gradient" then
        safeDestroy(obj)
    end
end
    for _, obj in pairs(game.StarterGui.Start:GetChildren()) do
        if obj.Name == "CheckPlayerW" or obj.Name == "Gradient" then
        safeDestroy(obj)
    end
end
    for _, obj in pairs(game.StarterPlayer.StarterCharacterScripts:GetDescendants()) do
        if obj.Name == " " then
        safeDestroy(obj)
        end
    end
end)

for i,b in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if b.Name == " " then
    b:Destroy()
end
end

for i,lc2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if lc2:IsA("LocalScript") and string.match(lc2.Name, "1") or string.match(lc2.Name, "2") or string.match(lc2.Name, "3") or string.match(lc2.Name, "4") or string.match(lc2.Name, "5") or string.match(lc2.Name, "6") or string.match(lc2.Name, "7") or string.match(lc2.Name, "8") or string.match(lc2.Name, "9") then
       lc2:Destroy()
    end
end

for i,lc in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
    if lc:IsA("LocalScript") and string.match(lc.Name, "1") or string.match(lc.Name, "2") or string.match(lc.Name, "3") or string.match(lc.Name, "4") or string.match(lc.Name, "5") or string.match(lc.Name, "6") or string.match(lc.Name, "7") or string.match(lc.Name, "8") or string.match(lc.Name, "9") then
       lc:Destroy()
    end
end

for i,c in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
    if c.Name == "CheckPlayerW" then
    c:Destroy()
end
end

for i,z in pairs(game.StarterGui.Start:GetChildren()) do
    if z.Name == "CheckPlayerW" then
    z:Destroy()
end
end

for _, v in pairs(game.StarterPlayer.StarterCharacterScripts:GetDescendants()) do
if v.Name == " " then
v:Destroy()
end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
wait(0.5)
for i,char in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if char.Name == " " then
       char:Destroy()
    end
    end
end)


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "RealScript", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "Full Premium"})

local Tab = Window:MakeTab({
	Name = "Info",
	Icon = "",
	Premium = false
})

local Section = Tab:AddSection({
	Name = "by Kelvin"
})

Tab:AddParagraph("RealScript","Its an Explo!t Script For the Popular Soccer Game TPS STREET SOCCER With Many Fully Functional Functions That Count As The First Script To have Side Client Level and Touch Intrest to be Working On Low Level Executors (PC and Mobile)!")
Tab:AddParagraph("Recommendation","I Recommend , Myself As The Creator Of The Script NOT To Use It In Case Of BanWaves Or Reports , If Theres any Bug Try Contacting Support")
Tab:AddParagraph("ChangeLogs","**Rewrited**")

local Tab1 = Window:MakeTab({
	Name = "Reach",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab1:AddSection({
	Name = "Reach R15 + R6"
})

Tab1:AddTextbox({
	Name = "Reach",
	Default = "",
	TextDisappear = true,
	Callback = function(Studs)


local player = game.Players.LocalPlayer

local function modifyLegs(character)
    if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
        local rightLeg = character:FindFirstChild("Right Leg")
        if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
            rightLeg.Massless = true
            rightLeg.Size = Vector3.new(Studs, 2, Studs)
            rightLeg.Transparency = 1
            local newRightLeg = Instance.new("Part")
            newRightLeg.Name = "Right Leg"
            newRightLeg.CanCollide = false
            newRightLeg.Color = rightLeg.Color
            newRightLeg.Size = Vector3.new(1, 2, 1)
            newRightLeg.Locked = true
            newRightLeg.Position = rightLeg.Position
            newRightLeg.Parent = character
            local attachment = Instance.new("Attachment")
            attachment.Name = "RightFootAttachment"
            attachment.Position = Vector3.new(0, -1, 0)
            attachment.Parent = newRightLeg
            local motorHip = Instance.new("Motor6D")
            motorHip.Name = "Fake Right Hip"
            motorHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.CurrentAngle = 0
            motorHip.DesiredAngle = 0
            motorHip.MaxVelocity = 0.1
            motorHip.Part0 = character.Torso
            motorHip.Part1 = newRightLeg
            motorHip.Parent = character.Torso
        else
            local leftLeg = character:FindFirstChild("Left Leg")
            leftLeg.Massless = true
            leftLeg.Size = Vector3.new(Studs, 2, Studs)
            leftLeg.Transparency = 1
            local newLeftLeg = Instance.new("Part")
            newLeftLeg.Name = "Left Leg"
            newLeftLeg.CanCollide = false
            newLeftLeg.Color = leftLeg.Color
            newLeftLeg.Size = Vector3.new(1, 2, 1)
            newLeftLeg.Locked = true
            newLeftLeg.Position = leftLeg.Position
            newLeftLeg.Parent = character
            local attachment = Instance.new("Attachment")
            attachment.Name = "LeftFootAttachment"
            attachment.Position = Vector3.new(0, -1, 0)
            attachment.Parent = newLeftLeg
            local motorHip = Instance.new("Motor6D")
            motorHip.Name = "Fake Left Hip"
            motorHip.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            motorHip.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            motorHip.CurrentAngle = 0.18690308928489685
            motorHip.DesiredAngle = 0.00016103983216453344
            motorHip.MaxVelocity = 0.1
            motorHip.Part0 = character.Torso
            motorHip.Part1 = newLeftLeg
            motorHip.Parent = character.Torso
        end
    else
        local rightLowerLeg = character:FindFirstChild("RightLowerLeg")
        local leftLowerLeg = character:FindFirstChild("LeftLowerLeg")
        
        if game.Lighting[player.Name].PreferredFoot.Value == 1 then
            rightLowerLeg.Massless = true
            rightLowerLeg.Size = Vector3.new(Studs, 2, Studs)
            rightLowerLeg.Transparency = 1
            local newRightLowerLeg = Instance.new("Part")
            newRightLowerLeg.Name = "RightLowerLeg"
            newRightLowerLeg.CanCollide = false
            newRightLowerLeg.Color = rightLowerLeg.Color
            newRightLowerLeg.Size = Vector3.new(1, 2, 1)
            newRightLowerLeg.Locked = true
            newRightLowerLeg.Position = rightLowerLeg.Position
            newRightLowerLeg.Parent = character
            local attachment = Instance.new("Attachment")
            attachment.Name = "RightFootAttachment"
            attachment.Position = Vector3.new(0, -1, 0)
            attachment.Parent = newRightLowerLeg
            local motorHip = Instance.new("Motor6D")
            motorHip.Name = "Fake Right Hip"
            motorHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.CurrentAngle = 0
            motorHip.DesiredAngle = 0
            motorHip.MaxVelocity = 0.1
            motorHip.Part0 = character.Torso
            motorHip.Part1 = newRightLowerLeg
            motorHip.Parent = character.Torso
        else
            leftLowerLeg.Massless = true
            leftLowerLeg.Size = Vector3.new(Studs, 2, Studs)
            leftLowerLeg.Transparency = 1
            local newLeftLowerLeg = Instance.new("Part")
            newLeftLowerLeg.Name = "LeftLowerLeg"
            newLeftLowerLeg.CanCollide = false
            newLeftLowerLeg.Color = leftLowerLeg.Color
            newLeftLowerLeg.Size = Vector3.new(1, 2, 1)
            newLeftLowerLeg.Locked = true
            newLeftLowerLeg.Position = leftLowerLeg.Position
            newLeftLowerLeg.Parent = character
            local attachment = Instance.new("Attachment")
            attachment.Name = "LeftFootAttachment"
            attachment.Position = Vector3.new(0, -1, 0)
            attachment.Parent = newLeftLowerLeg
            local motorHip = Instance.new("Motor6D")
            motorHip.Name = "Fake Left Hip"
            motorHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.CurrentAngle = 0
            motorHip.DesiredAngle = 0
            motorHip.MaxVelocity = 0.1
            motorHip.Part0 = character.Torso
            motorHip.Part1 = newLeftLowerLeg
            motorHip.Parent = character.Torso
        end
    end
end

player.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid")
    modifyLegs(character)
end)

if player.Character then
    modifyLegs(player.Character)
end

	end	  
})


Tab1:AddButton({
	Name = "Remove Leg",
	Callback = function()
        local player = game.Players.LocalPlayer

local fakeRightLeg = game.Workspace[player.Name].Torso:FindFirstChild("Fake Right Hip")
    if fakeRightLeg then
        fakeRightLeg:Destroy()
    end
  	end    
})

local Tab2 = Window:MakeTab({
	Name = "React",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab2:AddSection({
	Name = "6 React Methoods"
})

Tab2:AddButton({
	Name = "Tunaz React[Left Leg]",
	Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local mouse = player:GetMouse()
        local leftLeg = player.Character["Left Leg"]
        
        mouse.KeyDown:Connect(function(key)
            key = key:lower()
            
            local function processWorkspace()
                for _, descendant in pairs(game.Workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") or descendant:IsA("Part") then
                        local size = Vector3.new(
                            math.floor(descendant.Size.X - 2.5),
                            math.floor(descendant.Size.Y - 2.5),
                            math.floor(descendant.Size.Z - 2.5)
                        )
                        if size == Vector3.new(0, 0, 0) then
                        end
                    end
                end
            end
        
            local arguments = {
                nil,
                Vector3.new(math.huge, math.huge, math.huge),
                CFrame.new(Vector3.new(0, 0, 0))
            }
        
            if key == "k" then
                processWorkspace()
            end
        
            game:GetService("RunService").ChildAdded:Connect(function()
                while task.wait(0.001) do
                    for _, descendant in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                        if descendant:IsA("RemoteEvent") and string.find(descendant.Name, "React") then
                            descendant:FireServer(unpack(arguments))
                        end
                    end
                end
            end)
        
            local function createHoverEffect(textLabel)
                local tweenService = game:GetService("TweenService")
                local hoverInTweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
                local hoverOutTweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
        
                textLabel.MouseEnter:Connect(function()
                    local tween = tweenService:Create(textLabel, hoverInTweenInfo, {TextTransparency = 0})
                    tween:Play()
                end)
        
                textLabel.MouseLeave:Connect(function()
                    local tween = tweenService:Create(textLabel, hoverOutTweenInfo, {TextTransparency = 0.5})
                    tween:Play()
                end)
            end
        
            local function handleTextLabel()
                local textLabel = Instance.new("TextLabel", game.StarterGui)
                wait(8999999488)
                local tweenService = game:GetService("TweenService")
                local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                local targetPosition = {Position = UDim2.new(0.819, 0, 0.815, 0)}
                local tween = tweenService:Create(textLabel, tweenInfo, targetPosition)
                tween:Play()
                createHoverEffect(textLabel)
            end
        
            coroutine.wrap(handleTextLabel)()
        end)        
  	end    
})

Tab2:AddButton({
	Name = "Tunaz React[Right Leg]",
	Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local mouse = player:GetMouse()
        local rightLeg = player.Character["Right Leg"]
        
        mouse.KeyDown:Connect(function(key)
            key = key:lower()
        
            local function processWorkspace()
                for _, descendant in pairs(game.Workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") or descendant:IsA("Part") then
                        local size = Vector3.new(
                            math.floor(descendant.Size.X - 2.5),
                            math.floor(descendant.Size.Y - 2.5),
                            math.floor(descendant.Size.Z - 2.5)
                        )
                        if size == Vector3.new(0, 0, 0) then
                        end
                    end
                end
            end
        
            local arguments = {
                nil,
                Vector3.new(math.huge, math.huge, math.huge),
                CFrame.new(Vector3.new(0, 0, 0))
            }
        
            game:GetService("RunService").ChildAdded:Connect(function()
                while task.wait(0.001) do
                    for _, descendant in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                        if descendant:IsA("RemoteEvent") and string.find(descendant.Name, "React") then
                            descendant:FireServer(unpack(arguments))
                        end
                    end
                end
            end)
        
            if key == "k" then
                processWorkspace()
            end
        
            local function createHoverEffect(textLabel)
                local tweenService = game:GetService("TweenService")
                local hoverInTweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
                local hoverOutTweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
        
                textLabel.MouseEnter:Connect(function()
                    local tween = tweenService:Create(textLabel, hoverInTweenInfo, {TextTransparency = 0})
                    tween:Play()
                end)
        
                textLabel.MouseLeave:Connect(function()
                    local tween = tweenService:Create(textLabel, hoverOutTweenInfo, {TextTransparency = 0.5})
                    tween:Play()
                end)
            end
        
            local function handleTextLabel()
                local textLabel = Instance.new("TextLabel", game.StarterGui)
                wait(8999999488) 
                local tweenService = game:GetService("TweenService")
                local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                local targetPosition = {Position = UDim2.new(0.819, 0, 0.815, 0)}
                local tween = tweenService:Create(textLabel, tweenInfo, targetPosition)
                tween:Play()
                createHoverEffect(textLabel)
            end
        
            coroutine.wrap(handleTextLabel)()
        end)
  	end    
})

Tab2:AddButton({
	Name = "Goalkeeper React",
	Callback = function()
        _G.Vector = Vector3.new(math.huge, math.huge, math.huge)

        local hookmetamethod = hookmetamethod or function(v320, v321, v322)
            return v322
        end
        
        local getnamecallmethod = getnamecallmethod or function()
            return ""
        end
        
        local checkcaller = checkcaller or function()
            return false
        end
        
        if not hookmetamethod then
            return
        end
        
        local originalNameCall
        originalNameCall = hookmetamethod(game, "__namecall", function(instance, ...)
            local args = {...}
            local methodName = getnamecallmethod()
        
            if not checkcaller() and (methodName == "FireServer") and (instance.Name == "Kick") then
                args[6] = _G.Vector
                return originalNameCall(instance, unpack(args))
            end
        
            return originalNameCall(instance, ...)
        end)    
  	end    
})

Tab2:AddButton({
	Name = "Midfielder React",
	Callback = function()
        local player = game:GetService("Players").LocalPlayer

        local hookmetamethod = hookmetamethod or function(v332, v333, v334)
            return v334
        end
        
        local getnamecallmethod = getnamecallmethod or function()
            return ""
        end
        
        local checkcaller = checkcaller or function()
            return false
        end
        
        if not hookmetamethod then
            return
        end
        
        local originalNameCall
        originalNameCall = hookmetamethod(game, "__namecall", function(instance, ...)
            local args = {...}
            local methodName = getnamecallmethod()
        
            if not checkcaller() and (methodName == "FireServer") and (tostring(instance) == "Dribble") then
                args[2] = player.Character.Humanoid.LLCL
                return originalNameCall(instance, unpack(args))
            end
        
            return originalNameCall(instance, ...)
        end)   
  	end    
})

Tab2:AddButton({
	Name = "Attacker React",
	Callback = function()
        _G.Vector = Vector3.new(math.huge, math.huge, math.huge)

        local hookmetamethod = hookmetamethod or function(v326, v327, v328)
            return v328
        end
        
        local getnamecallmethod = getnamecallmethod or function()
            return ""
        end
        
        local checkcaller = checkcaller or function()
            return false
        end
        
        if not hookmetamethod then
            return
        end
        
        local originalNameCall
        originalNameCall = hookmetamethod(game, "__namecall", function(instance, ...)
            local args = {...}
            local methodName = getnamecallmethod()
        
            if not checkcaller() and (methodName == "FireServer") and (tostring(instance) == "Shoot") then
                args[6] = _G.Vector
                return originalNameCall(instance, unpack(args))
            end
        
            return originalNameCall(instance, ...)
        end)
        
  	end    
})

Tab2:AddButton({
	Name = "Alz React",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/GrePU9TQ"))()  
  	end    
})

local Tab3 = Window:MakeTab({
	Name = "Helpers",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab3:AddSection({
	Name = "Air Dribble Helper"
})

Tab3:AddToggle({
	Name = "Enable Air Dribble Helper",
	Default = false,
	Callback = function(v148)
		if v148 then
            getgenv().boxsettings = {
                box = {
        
                    boxsize = Vector3.new(v32 or 1, v32 or 1, v32 or 1),
                    markerOffset = Vector3.new(0, -1, 0),
                    boxtransparency = 1
                }
            }
            
          
            local tpsPart = game.Workspace.TPSSystem.TPS
        
            local function createTPSPart(parent, referencePart)
                local newTPS = Instance.new("Part")
                newTPS.Name = "TPS"
                newTPS.Size = getgenv().boxsettings.box.boxsize 
                newTPS.Anchored = true
                newTPS.Transparency = getgenv().boxsettings.box.boxtransparency 
                newTPS.Parent = parent 
                return newTPS
            end
            
            local newTPSPart = createTPSPart(tpsPart.Parent, tpsPart)
        
            v30 = game:GetService("RunService").Heartbeat:Connect(function()
                newTPSPart.Size = Vector3.new(v32 or 1, 0, v32 or 1)
            end)
        
            v31 = game:GetService("RunService").Heartbeat:Connect(function()
                newTPSPart.CFrame = CFrame.new(tpsPart.Position + getgenv().boxsettings.box.markerOffset)
            end)
        end
	end    
})

Tab3:AddTextbox({
	Name = "Air Dribble Helper Size",
	Default = "",
	TextDisappear = true,
	Callback = function(v149)
        v32 = tonumber(v149) or 1
        if getgenv().boxsettings then
            getgenv().boxsettings.box.boxsize = Vector3.new(v32, v32, v32)
        end
	end	  
})


local Section = Tab3:AddSection({
	Name = "ZZZ & ZZZZ Helper V1"
})

Tab3:AddButton({
	Name = "Enable ZZZ & ZZZZ Helper V1",
	Callback = function()
        local tps = game.Workspace.TPSSystem.TPS
        tps.Size = Vector3.new(2.89, 2.89, 2.89)
        
        getgenv().boxsettings = {
            box = {
                boxsize = Vector3.new(9, 0, 9),
                markerOffset = Vector3.new(0, -1, 0),
                boxtransparency = 1
            }
        }
        
        local function createTPSBox(parent)
            local box = Instance.new("Part")
            box.Name = "TPS"
            box.Size = getgenv().boxsettings.box.boxsize
            box.Anchored = true
            box.Transparency = getgenv().boxsettings.box.boxtransparency
            box.Parent = parent
            return box
        end
        
        local tpsBox = createTPSBox(tps.Parent)
        
        game:GetService("RunService").Stepped:Connect(function()
            tpsBox.CFrame = CFrame.new(tps.Position + getgenv().boxsettings.box.markerOffset)
        end)
  	end    
})

local Section = Tab3:AddSection({
	Name = "ZZZ & ZZZZ Helper V2"
})


Tab3:AddButton({
	Name = "Enable ZZZ & ZZZZ Helper V2",
	Callback = function()
        game.Workspace.TPSSystem.TPS.Size = Vector3.new(3, 3, 3)
        game.Workspace.TPSSystem.TPS.Velocity = Vector3.new(200, 200, 200)
  	end    
})

local Section = Tab3:AddSection({
	Name = "Infinitie Dribble Helper"
})

Tab3:AddToggle({
	Name = "Infinitie Dribble Helper",
	Default = false,
	Callback = function(v155)
        v14 = v155
        if v14 then
            while v14 do
                wait()
                game.Players.LocalPlayer.Backpack.Ground.Value = true
            end
        else
            wait(1)
            game.Players.LocalPlayer.Backpack.Ground.Value = false
        end
	end    
})

local Tab4 = Window:MakeTab({
	Name = "Gamepasses",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab4:AddSection({
	Name = "GamePasses"
})

Tab4:AddToggle({
	Name = "Blue Flame",
	Default = false,
	Callback = function(v106)
        if v106 then
            game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.Tick.Visible = true
            game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.BlueFlame.Style =
                "RobloxRoundButton"
            game:GetService("Players").LocalPlayer.PlayerGui.Start.PowerShot.Image = "rbxassetid://0"
            game:GetService("Players").LocalPlayer.Backpack.FValue.Value = 2
        else
            game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.Tick.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.BlueFlame.Style =
                "RobloxRoundDefaultButton"
            game:GetService("Players").LocalPlayer.PlayerGui.Start.PowerShot.Image = "rbxassetid://0"
            game:GetService("Players").LocalPlayer.Backpack.FValue.Value = 1
        end
	end    
})

Tab4:AddToggle({
	Name = "Blue Flame",
	Default = false,
	Callback = function(v106)
        if v106 then
            game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.Tick.Visible = true
            game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.BlueFlame.Style =
                "RobloxRoundButton"
            game:GetService("Players").LocalPlayer.PlayerGui.Start.PowerShot.Image = "rbxassetid://0"
            game:GetService("Players").LocalPlayer.Backpack.FValue.Value = 2
        else
            game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.Tick.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.BlueFlame.Style =
                "RobloxRoundDefaultButton"
            game:GetService("Players").LocalPlayer.PlayerGui.Start.PowerShot.Image = "rbxassetid://0"
            game:GetService("Players").LocalPlayer.Backpack.FValue.Value = 1
        end
	end    
})

Tab4:AddToggle({
	Name = "More Curve (Buggy)",
	Default = false,
	Callback = function(v107)
        if v107 then
            local player = game:GetService("Players").LocalPlayer
            local playerGui = player.PlayerGui.Start.GamePassMenu.Items.WoodenFloor
            local character = player.Character
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")

            playerGui.Tick.Visible = true
            playerGui.WoodenFloor.Style = "RobloxRoundButton"
        
            if humanoid then
                v12 = humanoid.AnimationPlayed:Connect(function(animationTrack)
                    local validAnimations = {
                        "OldMKickL", "OldMKick", "OldLKickL", "OldLKick",
                        "MKickL", "MKick", "LKickL", "LKick",
                        "OldDribbleL", "OldDribble", "DribbleL", "Dribble"
                    }
                    
                    if table.find(validAnimations, animationTrack.Name) then
                        local tpsPart = game.Workspace.TPSSystem.TPS
                        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                        
                        if humanoidRootPart and (humanoidRootPart.Position - tpsPart.Position).Magnitude < 155.45 then
                            local curvingValue = player.Backpack:FindFirstChild("Curving") and player.Backpack.Curving.Value
                            
                            if curvingValue == 155.45 or curvingValue == 154.45 then
                                wait(0.1)
                                
                                local kickAction
                                if curvingValue == 155.45 then
                                    kickAction = game:GetService("Workspace").FE.Actions.KickC1
                                elseif curvingValue == 154.45 then
                                    kickAction = game:GetService("Workspace").FE.Actions.KickC2
                                end
                                
                                if kickAction then
                                    kickAction:FireServer(tpsPart, humanoidRootPart)
                                    wait(0.2)
                                    kickAction:FireServer(tpsPart, humanoidRootPart)
                                end
                            end
                        end
                    end
                end)
            end
        else
            if v12 then
                v12:Disconnect()
            end
            
            local playerGui = game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.WoodenFloor
            playerGui.Tick.Visible = false
            playerGui.WoodenFloor.Style = "RobloxRoundDefaultButton"
        end
	end    
})

Tab4:AddToggle({
	Name = "Powerfull Tackle",
	Default = false,
	Callback = function(v106)
        local player = game:GetService("Players").LocalPlayer
        local playerGui = player:WaitForChild("PlayerGui")
        local startGui = playerGui:WaitForChild("Start")
        local gamePassMenu = startGui:WaitForChild("GamePassMenu")
        local randomWeatherItem = gamePassMenu:WaitForChild("Items"):WaitForChild("RandomWeather")
        
        local tackleGamePass = startGui:FindFirstChild("TackleGamePass") or Instance.new("BoolValue", startGui)
        tackleGamePass.Name = "TackleGamePass"
        tackleGamePass.Value = false
        
        if v108 then
            randomWeatherItem.Tick.Visible = true
            randomWeatherItem.RandomWeather.Style = "RobloxRoundButton"
            tackleGamePass.Value = true
        
            local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                v13 = humanoid.AnimationPlayed:Connect(function(animationTrack)
                    if table.find({"TackleL", "Tackle", "OldTackleL", "OldTackle"}, animationTrack.Name) then
                        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                        local tpsPart = game.Workspace.TPSSystem.TPS
        
                        if humanoidRootPart and (humanoidRootPart.Position - tpsPart.Position).Magnitude < 4.87 then
                            wait(0.8)
                            local kickAction = game:GetService("Workspace").FE.Actions.KickG1
                            if kickAction then
                                kickAction:FireServer(tpsPart, humanoidRootPart, 30, Vector3.new(4000000, 700, 4000000))
                            end
                        end
                    end
                end)
            end
        else
            randomWeatherItem.Tick.Visible = false
            randomWeatherItem.RandomWeather.Style = "RobloxRoundDefaultButton"
            tackleGamePass.Value = false
        
            if v13 then
                v13:Disconnect()
            end
        end
	end    
})

local Tab5 = Window:MakeTab({
	Name = "Ball Configurations",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab5:AddSection({
	Name = "Ball Size"
})

Tab5:AddTextbox({
	Name = "Ball Size",
	Default = "",
	TextDisappear = true,
	Callback = function(v166)
		game.Workspace.TPSSystem.TPS.Size = Vector3.new(v166, v166, v166)
	end	  
})
Tab5:AddParagraph("Anti Fling","Gives You An Exact React Of ABZ")

Tab5:AddButton({
	Name = "Anti-Fling",
	Callback = function()
        local player = game.Players.LocalPlayer
        local runService = game:GetService("RunService")
        local Clip = false
        wait(0.1)
        
        local function noclipFunction()
            if not Clip and player.Character then
                for _, part in pairs(player.Character:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide and (part.Name == "Right Leg" or part.Name == "Right Arm" or part.Name == "Left Arm" or part.Name == "Torso") then
                        part.CanCollide = false
                    end
                end
            end
        end
        
        local noclipConnection = runService.Stepped:Connect(noclipFunction)        
  	end    
})


local Section = Tab5:AddSection({
	Name = "Ball Collision"
})

Tab5:AddToggle({
	Name = "Ball Collision",
	Default = false,
	Callback = function(v174)
        if v174 then
            game.Workspace.TPSSystem.TPS.CanCollide = false
        else
            game.Workspace.TPSSystem.TPS.CanCollide = true
        end
	end    
})


local Tab6 = Window:MakeTab({
	Name = "Miscellaneous",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab6:AddSection({
	Name = "Visual Level Spoofer"
})

Tab6:AddTextbox({
	Name = "Visual Level Spoofer",
	Default = "",
	TextDisappear = true,
	Callback = function(v190)
		while wait() do
            game.Players.LocalPlayer.PlayerGui.Start.Scores.Level.Text = "Level " .. tonumber(v190)
        end
	end	  
})

local Section = Tab6:AddSection({
	Name = "F.E Level Spoofer"
})

Tab6:AddButton({
	Name = "Level 100",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 242000
  	end    
})

Tab6:AddButton({
	Name = "Level 500",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 1210000
  	end    
})


Tab6:AddButton({
	Name = "Level 1000",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 2420000
  	end    
})


Tab6:AddButton({
	Name = "Level 1500",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 3630000
  	end    
})


Tab6:AddButton({
	Name = "Level 2000",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 4840000
  	end    
})


Tab6:AddButton({
	Name = "Level 2500",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 6050000
  	end    
})


Tab6:AddButton({
	Name = "Level 3000",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 7260000
  	end    
})


Tab6:AddButton({
	Name = "Level 3500",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 8470000
  	end    
})


Tab6:AddButton({
	Name = "Level 4000",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 9680000
  	end    
})


Tab6:AddButton({
	Name = "Level 4500",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 10890000
  	end    
})


Tab6:AddButton({
	Name = "Level 5000",
	Callback = function()
        local Lighting = game:GetService("Lighting")
        game.Lighting[game.Players.LocalPlayer.Name].XP.Value = 12100000
  	end    
})

Tab6:AddTextbox({
	Name = "Walkspeed",
	Default = "",
	TextDisappear = true,
	Callback = function(v192)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v192
	end	  
})

Tab6:AddTextbox({
	Name = "JumpPower",
	Default = "",
	TextDisappear = true,
	Callback = function(v194)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v194
	end	  
})

Tab6:AddTextbox({
	Name = "Clumsy",
	Default = "",
	TextDisappear = true,
	Callback = function(v209)
        settings():GetService("NetworkSettings").IncomingReplicationLag = tonumber(v209)
	end	  
})


Tab6:AddTextbox({
	Name = "Fake Bombs",
	Default = "",
	TextDisappear = true,
	Callback = function(holy)
        local lg = game:GetService("Lighting")

        lg[game.Players.LocalPlayer.Name].Bomb.Value = holy
	end	  
})


Tab6:AddTextbox({
	Name = "Fake Burns",
	Default = "",
	TextDisappear = true,
	Callback = function(holy)
        local lg = game:GetService("Lighting")

        lg[game.Players.LocalPlayer.Name].Burn.Value = holy
	end	  
})

Tab6:AddTextbox({
	Name = "Fake Spikes",
	Default = "",
	TextDisappear = true,
	Callback = function(holy)
        local lg = game:GetService("Lighting")

        lg[game.Players.LocalPlayer.Name].Spike.Value = holy
	end	  
})

Tab6:AddTextbox({
	Name = "Fake Walls",
	Default = "",
	TextDisappear = true,
	Callback = function(holy)
        local lg = game:GetService("Lighting")

        lg[game.Players.LocalPlayer.Name].Wall.Value = holy
	end	  
})

Tab6:AddButton({
	Name = "Old Dirt",
	Callback = function()
        spawn(
            function()
                while true do
                    local v593 = workspace.SoccerFieldParts.SoccerField:FindFirstChild("Dirt")
                    if v593 then
                        v593:Destroy()
                    end
                    workspace.SoccerFieldParts.SoccerField.Material = Enum.Material.Granite
                    workspace.SoccerFieldParts.SoccerField.Color = Color3.new(41 / 255, 99 / 255, 27 / 255)
                    wait(60)
                end
            end
        )
  	end    
})

Tab6:AddButton({
	Name = "Secret Badge",
	Callback = function()
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v.Name == "BadgeAwarder" then
                    v.Platform.CanCollide = false
                    v.Platform.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    v.Platform.Transparency = 1
                    v.Platform.Decal.Transparency = 1
                    wait(2)
                    v.Platform.CanCollide = true
                    v.Platform.Transparency = 0
                    v.Platform.Decal.Transparency = 0
                    v.Platform.CFrame = CFrame.new(-2, -0, 363, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            end
        end
  	end    
})

Tab6:AddButton({
	Name = "Rejoin Server",
	Callback = function()
        local plr = game.Players.LocalPlayer

        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
  	end    
})

Tab6:AddToggle({
	Name = "Infinitie Fire",
	Default = false,
	Callback = function(v191)
		if v191 then
            _G.Fire = true
            spawn(function()
                while _G.Fire do
                    wait()
                    for _, v714 in pairs(game.Players.LocalPlayer:GetDescendants()) do
                        if v714:IsA("BoolValue") and v714.Name == "PowerReady" then
                            v714.Value = true
                        end
                    end
                end
            end)
        else
            _G.Fire = false
        end
	end    
})



local Tab7 = Window:MakeTab({
	Name = "Drag / Macro",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab7:AddSection({
	Name = "Drag / Macro"
})

Tab7:AddToggle({
	Name = "Drag Right Side",
	Default = false,
	Callback = function(v213)
		if v213 then
            _G.DragClickRight = true
            
            while _G.DragClickRight do
                wait(0.1) 
                for v717 = 1, 25 do
                    local v718 = game:GetService("Workspace").TPSSystem.TPS
                    local v719 = game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        
                    if v719 then
                        local v720 = game:GetService("Workspace").FE.Actions.KickC1
                        v720:FireServer(v718, v719)
                    end
                end
            end
        else
            _G.DragClickRight = false
        end
	end    
})

Tab7:AddToggle({
	Name = "Drag Left Side",
	Default = false,
	Callback = function(v214)
		if v214 then
            _G.DragClickLeft = true
            
            while _G.DragClickLeft do
                wait(0.1) 
                for v721 = 1, 25 do
                    local v722 = game:GetService("Workspace").TPSSystem.TPS
                    local v723 = game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    
                    if v723 then
                        local v724 = game:GetService("Workspace").FE.Actions.KickC2
                        v724:FireServer(v722, v723)
                    end
                end
            end
        else
            _G.DragClickLeft = false
        end        
	end    
})

local Tab8 = Window:MakeTab({
	Name = "Other",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab8:AddSection({
	Name = "More Functions"
})

Tab8:AddToggle({
	Name = "Fly On Ball",
	Default = false,
	Callback = function(v215)
        if v215 then
            v17 =
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        if _G.FlyOnBall then
                            game.Players.LocalPlayer.Character:MoveTo(game.Workspace.TPSSystem.TPS.Position)
                        end
                    end
                )
            _G.FlyOnBall = true
        else
            if v17 then
                v17:Disconnect()
                v17 = nil
            end
            _G.FlyOnBall = false
        end
	end    
})

Tab8:AddButton({
	Name = "Auto Farm",
	Callback = function()
        _G.AUTOFARM = true
while _G.AUTOFARM do
wait()
local HRPRotation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Rotation
local GoalPST = game.Workspace.TPSSystem.TPS.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = HRPRotation + GoalPST.Position
    local A_1 = game:GetService("Workspace").TPSSystem.TPS
local A_2 = game:GetService("Players").LocalPlayer.Character.Head
local Event = game:GetService("Workspace").FE.Actions.Tackle
Event:FireServer(A_1, A_2)

local Events2 = game:GetService("Workspace").FE.Kick.RemoteEvent2
Events2:FireServer()
if game.Players.LocalPlayer.TeamColor == BrickColor.new("Bright red") then
game.Players.LocalPlayer.PlayerGui.LockScript.SetLock.Value = true
game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 45, 0),game.Workspace.BlueGoal.Part.Position)
end
if game.Players.LocalPlayer.TeamColor == BrickColor.new("Bright blue") then
game.Players.LocalPlayer.PlayerGui.LockScript.SetLock.Value = true
game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 45, 0),game.Workspace.RedGoal.Part.Position)
end
end
  	end    
})

Tab8:AddButton({
	Name = "Dex Explorer",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/VxSYe8fz"))()
  	end    
})

Tab8:AddButton({
	Name = "Infinitie Yeild",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/H1iTRjqU"))()
  	end    
})

Tab8:AddButton({
	Name = "Fake Ping 50-40 ms",
	Callback = function()
        local function v39()

            local statsGui = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats")
            local pingLabel

            for _, stat in ipairs(statsGui:GetChildren()) do
                if stat.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
                    pingLabel = stat.StatsMiniTextPanelClass.ValueLabel
                    break
                end
            end

            local pingValues = {50, 58}
            local currentIndex = 1

            local function fakePing()
                while true do
                    pingLabel.Text = string.format("%.2f ms", pingValues[currentIndex])
        
                    currentIndex = currentIndex + 1
                    if currentIndex > #pingValues then
                        currentIndex = 1
                    end
       
                    wait(0.5)
                end
            end

            coroutine.wrap(fakePing)()
        end

        v39()
  	end    
})

Tab8:AddButton({
	Name = "Fake Ping 0ms",
	Callback = function()
        local function v39()
            local statsGui = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats")
            local pingLabel
        
            for _, stat in ipairs(statsGui:GetChildren()) do
                if stat.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
                    pingLabel = stat.StatsMiniTextPanelClass.ValueLabel
                    break
                end
            end
        
            local function fakePing()
                while true do
                    pingLabel.Text = "0 ms"
        
                    wait(0.1)
                end
            end
        
            coroutine.wrap(fakePing)()
        end
        
        v39()
  	end    
})
