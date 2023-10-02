-- MUST BE NEAR ARMORY ATMS THEN SAY "bingcool" ALSO BE IN SMALL SERVERS UNDER 10 AT DEFAULT

getgenv().work = true

local player = game.Players.LocalPlayer
local user = game.Players.LocalPlayer.Name
local atm1 = Vector3.new(-4790, 9, -381)
local atm2 = Vector3.new(-4790, 10, -374)
local wall = Vector3.new(-4783, 42, -392)
local StaffID = 32406137
local RCUID = 5622098
local BlackoutID = 10911475
local LockpickID = 12140671
local reshapefanID = 8024440
local TabootvcatID = 15997064
local BoldID = 4358068
local FooFight = 5890763
local ContentCID = 15329610
local offrampID = 32399219
local thraxID = 32007915
local DogeID = 3008068
local DangerID = 13175493
local DorkID = 10066928
local WarID = 14927228
local Tabootfans = 15997064
local bb = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
end)
print("antiafk on")

local Admins = {
    [64489098] = true, -- hisupermario9 MOD
    [9066859] = true, -- tabootvcat MOD
    [438805620] = true, -- Revenantic MOD
    [378069113] = true, -- ZNO187 MOD
    [111250044] = true, -- Saabor MOD a retarded faggot that ban autofarmers only
    [198610386] = true, -- Bobert_Molitor MOD
    [1517131734] = true, -- IAmUnderAMask MOD
    [67180844] = true, -- SheriffGorji MOD
    [87189764] = true, -- xXFireyScorpionXx MOD
    [153835477] = true, -- Lo_Chips MOD
    [14855669] = true, -- Malpheasance Senior MOD
    [47352513] = true, -- Dalvanuis Senior MOD
    [955294] = true, -- SIEGFRlED Senior MOD
    [295331237] = true, -- ARRYvvv Senior MOD
    [9212846] = true, -- GDILIVES ADMIN
    [31365111] = true, -- TZZV ADMIN
    [48058122] = true, -- wardogyears ADMIN
    [166406495] = true, -- r3shape Manager
    [1461575181] = true, -- MadamDity Tester idk if she still admin
    [38578487] = true, -- ViktorrVaughn Tester idk if he admin
    [50801509] = true, -- ulzig Tester idk if he admin
    [10497435] = true, -- Profine Tester he knows RVVZ well could have staff perms ingame
    [31967243] = true, -- zateopp Tester idk if he admin
    [244844600] = true, -- Nex5us Tester he is the owner of Hood Modded i doubt he is gonna join u lolz
    [92504899] = true, -- z_papermoon DEV DEF GOT PERMS INGAME
    [151691292] = true, -- tehls DEV DEF GOT PERMS INGAME
    [50585425] = true, -- RlFLEM4N DEV DEF GOT PERMS INGAME
    [42066711] = true, -- DeliverCreations DEV DEF GOT PERMS INGAME
    [29761878] = true, -- RVVZ Owner IRL name Roman Trotman
    [123456] = true -- TEST ID
}

game.Players.PlayerAdded:Connect(function(Player)
    print(Player.Name.. "joined your server.")
    if Admins[Player.UserId] or (Player:IsInGroup(StaffID) or Player:IsInGroup(RCUID)) or Player:IsInGroup(BlackoutID) or Player:IsInGroup(LockpickID) or Player:IsInGroup(reshapefanID) or Player:IsInGroup(TabootvcatID) or Player:IsInGroup(BoldID) or Player:IsInGroup(FooFight) or Player:IsInGroup(ContentCID) or Player:IsInGroup(offrampID) or Player:IsInGroup(thraxID) or Player:IsInGroup(DogeID) or Player:IsInGroup(DangerID) or Player:IsInGroup(DorkID) or Player:IsInGroup(WarID) or Player:IsInGroup(Tabootfans) then
        print(Player.Name.. " was detected as risk.")
        getgenv().work = false
        player.Character.HumanoidRootPart.Position = atm1
        wait(math.random(300, 600))
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name == Player then
                game.Players.LocalPlayer:Kick(Player.Name.. " Was in your server!")
            else
                local playerCountKick = #game.Players:GetPlayers()
                if i == playerCountKick then
                    if player.Character.Humanoid.Health > 0 then
                        player.Character.HumanoidRootPart.Position = wall
                        getgenv().work = true
                    end
                end
            end
        end
    end
end)
print("ANTI STAFF ON")

function GetATM(Studs)
    local Part;
    for _, v in ipairs(game:GetService("Workspace").Map.ATMz:GetChildren()) do
        if v:FindFirstChild("MainPart") then
            local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
            if Distance < Studs then
                Studs = Distance
                Part = v:FindFirstChild("MainPart")
            end
        end
    end
    return Part
end


player.Chatted:Connect(function(msg)
	if msg == "bingcool" then
        print("Started Autofarm.")
        player.Character.HumanoidRootPart.Position = wall
        while true do
            wait()
            if getgenv().work == true then
                local allowancePath = game:GetService("Players")[user].PlayerGui.CoreGUI.StatsFrame.Frame2.Frame.Container.Allowance.Amt.Text
                if allowancePath == "READY" then  
                    local ATM = GetATM(math.huge)
                    game:GetService("ReplicatedStorage").Events.CLMZALOW:InvokeServer(ATM)
                end
            end
            if getgenv().work == true then
                if player.Character.Humanoid.Health > 0 then
                    local playerCount = #game.Players:GetPlayers()
                    if playerCount > 10 then
                        game.Players.LocalPlayer:Kick("Game too full")
                    end
                    local allowancePath = game:GetService("Players")[user].PlayerGui.CoreGUI.StatsFrame.Frame2.Frame.Container.Allowance.Amt.Text
                    if allowancePath == "READY" then  
                        player.Character.HumanoidRootPart.Position = atm1
                        local ATM = GetATM(math.huge)
                        game:GetService("ReplicatedStorage").Events.CLMZALOW:InvokeServer(ATM)
                        wait(1.5)
                        player.Character.HumanoidRootPart.Position = atm2
                        local ATM = GetATM(math.huge)
                        game:GetService("ReplicatedStorage").Events.CLMZALOW:InvokeServer(ATM)
                        wait(1.5)
                        player.Character.HumanoidRootPart.Position = wall
                        wait(5)
                        player.Character.HumanoidRootPart.Position = wall
                    end
                else
                    wait(5)
                    game.Players.LocalPlayer:Kick("you died.")
                end
            end
        end
    end
end)
