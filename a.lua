if game.PlaceId == 7478475781 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Saturn12132/test/main/Kavo.lua"))()

local Window = Library.CreateLib("Ut Timeline Collapse Fucker v1.1", "Synapse")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Main")

Section:NewToggle("Autofarm", "Autofarms Soul and Code", function(afgsretyjther)
getgenv().AutoFarmC = afgsretyjther
spawn(function()
while getgenv().AutoFarmC do
firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, game:GetService("Workspace").Obby.Heart, 0)
task.wait()
firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, game:GetService("Workspace").Obby.Heart, 1)
if game.Players.LocalPlayer.Character:FindFirstChild("ObbyTag") then
game.Players.LocalPlayer.Character:FindFirstChild("ObbyTag"):Destroy()
end
for _, v in pairs(workspace.Snowdin:GetChildren()) do
if v:IsA("BasePart") and v:FindFirstChild("TouchInterest") and #v:GetChildren() == 3 and tonumber(v.Name) and v.Transparency == 0 then
firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 0)
task.wait()
firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 1)
end
end
end
wait(1)
end)
end)

Section:NewToggle("Almost GodMode", "Negates most damage from attacks", function(efsrhtjyhtegf)
getgenv().GodMode = efsrhtjyhtegf

local Attacks = {}

local function add(v)
if v:IsA("TouchTransmitter") then
if not v.Parent.Parent:FindFirstChild("Torso") then
table.insert(Attacks,v)
end
end
end

local function remove(v)
if v:IsA("TouchTransmitter") then
if not v.Parent.Parent:FindFirstChild("Torso") then
table.remove(Attacks,table.find(Attacks, v))
end
end
end

workspace.DescendantAdded:Connect(add)

workspace.DescendantRemoving:Connect(remove)

coroutine.wrap(function()
while getgenv().GodMode == true do
game:GetService("RunService").Stepped:wait()
for i,v in pairs(Attacks) do
v:Destroy()
end
end
end)()
end)

Section:NewButton("Get All Items", "It gets all items on the map", function()
for _, v in pairs(workspace:GetChildren()) do
coroutine.resume(coroutine.create(function()
if v:IsA("Tool") then
for i, x in pairs(v:GetChildren()) do
if x:IsA("BasePart") then
game.Players.LocalPlayer.Character:PivotTo(x.CFrame)
end
end
end
end))
end
end)

Section:NewButton("Get Gamepasses at shop", "Unlocks Gamepass stuff on shop", function()
spawn(function()
if getgenv().AlreadyAAAA ~= true then
getgenv().AlreadyAAAA = true
while wait() do
pcall(function()
for i, v in pairs(game.CoreGui:GetDescendants()) do
 if v:IsA("ImageLabel") and string.match(v.Name, "PlayerLabel") and string.match(v.Name, game.Players.LocalPlayer.Name) then
 v.Visible = false
 v:Destroy()
 end
end
end)
end
end
end)
task.wait()
spawn(function()
repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
if game.CreatorType == Enum.CreatorType.User then
game.Players.LocalPlayer.UserId = game.CreatorId
end

if game.CreatorType == Enum.CreatorType.Group then
game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
end
end)
end)

local Tab = Window:NewTab("Ink Quest")

local Section = Tab:NewSection("AutoComplete Quests")

Section:NewToggle("Ink Quest 1 Auto Complete", "Auto Completes Quest 1", function(sfdbgfdsgthy)
getgenv().AutoInk1 = sfdbgfdsgthy

while getgenv().AutoInk1 == true do
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Snowdin.Item.Q1.CFrame
task.wait(0.3)
fireclickdetector(workspace.Snowdin.Item.Q1.ClickDetector)
task.wait(5)
end
end)

Section:NewToggle("Ink Quest 2 and 3 Auto pickup", "Auto Completes Quest 2-3", function(afdgsfhnhsfaegsrhsgfesgrhtn)
getgenv().AutoInk2and3 = afdgsfhnhsfaegsrhsgfesgrhtn

while getgenv().AutoInk2and3 == true do
task.wait(1)
for _, v in pairs(workspace:GetChildren()) do
coroutine.resume(coroutine.create(function()
if v:IsA("Tool") then
for i, x in pairs(v:GetChildren()) do
if x:IsA("BasePart") then
game.Players.LocalPlayer.Character:PivotTo(x.CFrame)
end
end
end
end))
end
end
end)

local Tab = Window:NewTab("Gaster Quest")

local Section = Tab:NewSection("AutoComplete Gaster Quest")

Section:NewToggle("Auto Frag PickUp", "Picks up frags automatically", function(cdfbhrsshrhr)
getgenv().FragFarm = cdfbhrsshrhr
while getgenv().FragFarm do
task.wait()
if workspace:FindFirstChild("VoidFrag") then
workspace.VoidFrag.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)

local Tab = Window:NewTab("Teleports")

local Section = Tab:NewSection("X means you cant get badge")

Section:NewButton("AxeTale Tp(X)", "Teleports to AxeTale", function()
game:GetService("TeleportService"):Teleport(7673982302,game.Players.LocalPlayer)
end)

Section:NewButton("Virus/AntiVirus Tp(X)", "Teleports to Virus/AntiVirus", function()
game:GetService("TeleportService"):Teleport(9148423617,game.Players.LocalPlayer)
end)

Section:NewButton("Ultra Sans Tp", "Teleports to Ultra Sans", function()
game:GetService("TeleportService"):Teleport(9767619063,game.Players.LocalPlayer)
end)

Section:NewButton("Vhs Tp(X)", "Teleports to Vhs", function()
game:GetService("TeleportService"):Teleport(10414917882,game.Players.LocalPlayer)
end)

Section:NewButton("DustDust tp(Seperate GUI)", "Teleports to DustDust", function()
game:GetService("TeleportService"):Teleport(13547857458,game.Players.LocalPlayer)
end)
elseif game.PlaceId == 13547857458 then

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Saturn12132/test/main/Kavo.lua"))()

local Window = Library.CreateLib("Ut Timeline Collapse Fucker v1.1", "Synapse")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Main")

Section:NewToggle("GodMode(Turn off after completing a fight)", "Negates most damage from attacks", function(sdfgdsafegrtefwdzx)
getgenv().GodMode = sdfgdsafegrtefwdzx

local Attacks = {}

local function add(v)
if v:IsA("TouchTransmitter") then
if not v.Parent.Parent:FindFirstChild("Torso") then
table.insert(Attacks,v)
end
end
end

local function remove(v)
if v:IsA("TouchTransmitter") then
if not v.Parent.Parent:FindFirstChild("Torso") then
table.remove(Attacks,table.find(Attacks, v))
end
end
end

workspace.DescendantAdded:Connect(add)

workspace.DescendantRemoving:Connect(remove)

coroutine.wrap(function()
while getgenv().GodMode == true do
game:GetService("RunService").Stepped:wait()
for i,v in pairs(Attacks) do
v:Destroy()
end
end
end)()
end)
end
