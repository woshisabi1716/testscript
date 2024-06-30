local a = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local b = a:MakeWindow({
    Name = "雇佣兵脚本",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "北Config",
    IntroText = "雇佣兵脚本"
})

local e = b:MakeTab({
    Name = "OHIO俄亥俄州",
    Icon = "rbxassetid://17017840425",
    PremiumOnly = false
})

local function f(g)
    return function(...)
        if isUnlocked then
            g(...)
        else
            a:MakeNotification({
                Title = "Locked",
                Content = "请输入密钥",
                Image = "rbxassetid://17017840425",
                Time = 5
            })
        end
    end
end

e:AddButton({
	Name = "ESP透视",
	Callback = function()
https://raw.githubusercontent.com/woshisabi1716/testscript/main/ESP.lua
           }
       }
   }
})
end
})

e:AddButton({
	Name = "AIMBOT自瞄",
	Callback = function()
https://raw.githubusercontent.com/woshisabi1716/testscript/main/AIMBOT.lua
           }
       }
   }
})
end
})    


