local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key system", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "JNHH"
_G.KeyInput = "string"

function MakeScriptHub()
     

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Pixel Artists {FREE}", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Section"
})
Tab:AddTextbox({
	Name = "Generate Art",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		local image = (Value)
local resolutionX = 32 -- usually it's 32 but it might change depending on the frame?
local resolutionY = 32 -- usually it's 32 but it might change depending on the frame?

-- epic coding stuf --

local grid = nil
local s, e = pcall(function()
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild'MainGui':FindFirstChild'PaintFrame':FindFirstChild'Grid' then
        grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
    elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild'PaintFrame':FindFirstChild'GridHolder':FindFirstChild'Grid' then
        grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
    else
        warn('cannot execute script')
        return
    end
end)
if e then
    local s1, e1 = pcall(function()
        grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
    end)
    if e1 then
        warn('cannot execute script')
        return
    end
end
local h = game:GetService("HttpService")

function getjson(url)
    local begin = game:HttpGet("https://f818fcf9-3b10-4c92-8176-0bef47a8421d.id.repl.co/get?url="..url)
    if (begin == 'the file size is too big!') then
        return 'fstb'
    else
        local json = h:JSONDecode(begin)
        return json
    end
end

function import(url)
  local pixels = getjson(url)
  local cells = {}
  local index = 1
    if (pixels == 'fstb') then
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "error",
                Text = "the file size exceeds three megabytes, "
                .."to prevent people from crashing my vps i have set"
                .." the cap to amount. sorry for the inconvenience"
            }
        )
    else
        grid['1'].BackgroundColor3 = Color3.fromRGB(
            pixels[1][1],
            pixels[1][2],
            pixels[1][3]
        )
        for y = 1, resolutionX, 1 do
            for x = 1, resolutionY, 1 do
                pcall(function()
                    local pixel = pixels[index]
                    index = index + 1 -- index += 1 doesn't work wtf
                    local r = pixels[index][1]
                    local g = pixels[index][2]
                    local b = pixels[index][3]
                    grid[tostring(index)].BackgroundColor3 = Color3.fromRGB(r, g, b)
                    table.insert(cells, pixel)
                end)
            end
        end
        pcall(function()
            local pixel = pixels[index]
            index = index + 1 -- index += 1 doesn't work wtf
            local r = pixels[index][1]
            local g = pixels[index][2]
            local b = pixels[index][3]
            grid[tostring(index)].BackgroundColor3 = Color3.fromRGB(r, g, b)
            table.insert(cells, pixel)
        end)
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "done",
                Text = "finished importing, check the drawing grid"
            }
        )
    end
end

import(image)
	end	  
})
OrionLib:Init()

game.Players:FindFirstChild('plutoscriptsyt'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')
game.Players:FindFirstChild('ninjja36'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')
game.Players:FindFirstChild('Queenmanillaa'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')
game.Players:FindFirstChild('PoofGiga'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')
game.Players:FindFirstChild('Aistllx1'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')
game.Players:FindFirstChild('Tenstian'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')
game.Players:FindFirstChild('Briyananahi'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')
game.Players:FindFirstChild('guiltyweak123'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')
game.Players:FindFirstChild('FlashyFreiend'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')
game.Players:FindFirstChild('NotA_RunnerOfficial'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')
game.Players:FindFirstChild('Briyananahi'):Kick('Blacklisted. WhiteList cost 50 rbx. https://discord.gg/J78tMuHtxu')

end

function CorrectKeyNotification()
OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "You have entered the correct key!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

function IncorrectKeyNotification()
OrionLib:MakeNotification({
	Name = "Incorrect Key!",
	Content = "You have entered the incorrect key!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
      		if _G.KeyInput == _G.Key then
      		MakeScriptHub()
            CorrectKeyNotification()
            else
                IncorrectKeyNotification()
      		end
  	end    
})

Tab:AddButton({
	Name = "Copy Key Link",
	Callback = function()
      		setclipboard("https://discord.gg/T6PEz44PkR")
OrionLib:MakeNotification({
	Name = "Key",
	Content = "Link copyed in clipboard",
	Image = "rbxassetid://4483345998",
	Time = 5
})

  	end    
})
