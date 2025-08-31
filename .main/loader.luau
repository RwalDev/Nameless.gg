local HttpService = game:GetService("HttpService")
local url = "https://raw.githubusercontent.com/RwalDev/Nameless.gg/main/.main/source.luau'
local players = game:GetService("Players")
local starterGui = game:GetService("StarterGui")
local localPlayer = players.LocalPlayer

local output = [[
▒█▄░▒█ ░█▀▀█ ▒█▀▄▀█ ▒█▀▀▀ ░░ ▒█░░░ ▒█▀▀▀ ▒█▀▀▀█ ▒█▀▀▀█ 
▒█▒█▒█ ▒█▄▄█ ▒█▒█▒█ ▒█▀▀▀ ▀▀ ▒█░░░ ▒█▀▀▀ ░▀▀▀▄▄ ░▀▀▀▄▄ 
▒█░░▀█ ▒█░▒█ ▒█░░▒█ ▒█▄▄▄ ░░ ▒█▄▄█ ▒█▄▄▄ ▒█▄▄▄█ ▒█▄▄▄█

Version: 1.0
Made By Rwal / Method By Nevertag,lol
Thanks For Using Nameless.gg Bypasser ^-^
Cutest Chat Filter Bypasser
]]
print(output)
starterGui:SetCore("SendNotification", {
    Title = "Thanks For Using~ Nameless.gg",
    Text = "Welcome To Nameless, " .. localPlayer.DisplayName,
    Icon = "rbxthumb://type=AvatarHeadShot&id=" .. localPlayer.UserId .. "&w=180&h=180",
    Duration = 5
})
local success, response = pcall(function()
    return HttpService:GetAsync(url)
end)

if success then
    local func, err = loadstring(response)
    if func then
        func()
    else
        warn("Failed to load string: "..err)
    end
else
    warn("Failed to fetch code: "..response)
end
