local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/alriceeeee/rayfield/refs/heads/main/sourcenocustomkey.lua",true))()

local execname = {
    exec = identifyexecutor()
}

local config = {}
config.autofarm = false
config.frequency = 1
config.infcoin = false
config.antiafk = false

local Window = Rayfield:CreateWindow({
   Name = "Fisch Inf Money",
   Icon = 0,
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Ocean",
   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true,
   ConfigurationSaving = { 
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   }
})

local Tab = Window:CreateTab("idfk", 4483362458)
local Section = Tab:CreateSection("Fisch")

Tab:CreateLabel("Executor: "..execname.exec)

local Input = Tab:CreateInput({
    Name = "Frequency (times per second)",
    PlaceholderText = "Enter number (default: 1)",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        local number = tonumber(Text)
        if number then
            config.frequency = number
        end
    end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Farm",
   CurrentValue = false,
   Flag = "AutoFarm",
   Callback = function(Value)
        config.autofarm = Value
        while config.autofarm do
game:GetService("ReplicatedStorage"):WaitForChild("packages"):WaitForChild("Net"):WaitForChild("RE/DailyReward/Claim"):FireServer()
game:GetService("ReplicatedStorage"):WaitForChild("packages"):WaitForChild("Net"):WaitForChild("RE/DailyReward/Claim"):FireServer()
game:GetService("ReplicatedStorage"):WaitForChild("packages"):WaitForChild("Net"):WaitForChild("RE/DailyReward/Claim"):FireServer()
game:GetService("ReplicatedStorage"):WaitForChild("packages"):WaitForChild("Net"):WaitForChild("RE/DailyReward/Claim"):FireServer()
  game:GetService("ReplicatedStorage"):WaitForChild("packages"):WaitForChild("Net"):WaitForChild("RE/DailyReward/Claim"):FireServer()
game:GetService("ReplicatedStorage"):WaitForChild("packages"):WaitForChild("Net"):WaitForChild("RE/DailyReward/Claim"):FireServer()
                                             

task.wait(1/config.frequency)
        end
        end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti AFK",
   CurrentValue = false,
   Flag = "AntiAFK", 
   Callback = function(Value)
        config.antiafk = Value
        if config.antiafk then
            local virtualuser = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:Connect(function()
                if config.antiafk then
                    virtualuser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                    task.wait(1)
                    virtualuser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                end
            end)
        end
   end,
})

local Button = Tab:CreateButton({
    Name = "Infinite Coins",
    Callback = function()
        for i = 1, 100 do
            game:GetService("ReplicatedStorage"):WaitForChild("packages"):WaitForChild("Net"):WaitForChild("RE/DailyReward/Claim"):FireServer()
            task.wait(0.1)
        end
    end
})

Rayfield:LoadConfiguration()