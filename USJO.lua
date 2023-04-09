--//Variables
getgenv().autoWin = false
getgenv().CandyAutoWin = false
--//UI
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/venus/source.lua", true))()

local main = library:Load({Name = "Easy Stud Jumps Obby", Theme = "Dark", SizeX = 440, SizeY = 480, ColorOverrides = {}})
local MainSection = main:Tab("Main")
local Frmng = MainSection:Section({Name = "Farming", column = 1})
local Chs = MainSection:Section({Name = "Character", column = 2})
local ObTab = main:Tab("Obbies")

local ObSection = ObTab:Section({Name = "Teleports", column = 1})

--//Main Code

local label = Frmng:Label("Lobby")

local toggle = Frmng:Toggle({Name = "Auto Win", Flag = "Toggle", callback = function(bool)
 getgenv().autoWin = bool
 Autowinon()
 print("autwinon called")
end})

local slider = Chs:Slider({Name = "Walkspeed", Min = 16, Max = 850, Default = 16, Flag = "Slider", Callback = function(s)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end})
  
local button = Frmng:Button({Name = "Instant Win", Callback = function()
   	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(198.96, 1265.5, -872.5)
      wait(0.05)
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(198.54, 1265.5, -989.6)
end})

local label = Frmng:Label("Lobby Eggs")

local button = Frmng:Button({Name = "Grass Egg", Callback = function()  
 local args = {
    [1] = "Grass Egg",
    [2] = 1
 }

 game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
end})

local button = Frmng:Button({Name = "Jungle Egg", Callback = function()  
 local args = {
    [1] = "Jungle Egg",
    [2] = 1
 }

 game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
end})

local button = Frmng:Button({Name = "Noob Egg", Callback = function()  
 local args = {
    [1] = "Noob Egg",
    [2] = 1
 }

 game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
end})


local label = Frmng:Label("Candy World")

local toggle = Frmng:Toggle({Name = "Auto Win", Flag = "Toggle", callback = function(bool)
 getgenv().CandyAutoWin = bool
 AutowinonCandy()
 print("autwinon called")
end})

local button = Frmng:Button({Name = "Instant Win", Callback = function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Checkpoints.Candy["46"].CFrame
 wait(0.5)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RebirthButtons.Candy.CFrame
end})



local label = Frmng:Label("Candy World Eggs")

local button = Frmng:Button({Name = "Demonic Egg", Callback = function()  
 local args = {
    [1] = "Demonic Egg",
    [2] = 1
 }

 game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
end})

local button = Frmng:Button({Name = "Hell Egg", Callback = function()  
 local args = {
    [1] = "Hell Egg",
    [2] = 1
 }

 game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
end})

local button = ObSection:Button({Name = "Easy Win", Callback = function()  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ObbyStuff.easy.CFrame
end})

local button = ObSection:Button({Name = "Medium Win", Callback = function()  
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ObbyStuff.medium.CFrame
end})

local button = ObSection:Button({Name = "Hard Win", Callback = function()  
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ObbyStuff.hard.CFrame
end})

local button = ObSection:Button({Name = "Impossivel Win", Callback = function()  
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ObbyStuff.impossivel.CFrame
end})

local button = ObSection:Button({Name = "Guess The Line Win", Callback = function()  
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ObbyStuff["guess the line"].CFrame
end})

local button = ObSection:Button({Name = "Glass Bridge Win", Callback = function()  
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ObbyStuff.ponte.CFrame
end})

local button = ObSection:Button({Name = "Maze Win", Callback = function()  
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").maze.CFrame
end})

--//Functions
function Autowinon()
  while getgenv().autoWin == true do
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(198.96, 1265.5, -872.5)
      wait(0.05)
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(198.54, 1265.5, -989.6)
      wait(4.8)
  end
end

function AutowinonCandy()
 while getgenv().CandyAutoWin == true do
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Checkpoints.Candy["46"].CFrame
  wait(0.06)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RebirthButtons.Candy.CFrame
  wait(4.8)
 end
end