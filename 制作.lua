local Cloudlib = loadstring(game:HttpGet("https://github.com/XiaoYunCN/UWU/blob/main/Library%2FSilent%20ui"))()

local window = Cloudlib:new("冬凌中心启动器-Github")

local creds = window:Tab("人物",'4483345998')

local Tab2 = creds:section("设置",true)

Tab2:Label("服务器ID:" .. game.GameId .. ".")

Tab2:Button("我该死!",function()
        game.Players.LocalPlayer.Character.Head:Remove()
end)

Tab2:Toggle("白天", "text", false, function(Value)
    Day = Value
end)

Tab2:Toggle("夜晚", "text", false, function(Value)
    Night = Value
end)

Tab2:Toggle("去除雾气", "text", false, function(state)
    if state then
        game.Lighting.FogStart = 3276634343
        game.Lighting.FogEnd = 3276734343
    else
        game.Lighting.FogStart = 0
    end
end)

Tab2:Button("打死 GUI",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
end)

Tab2:Keybind("触发器 UI", Enum.KeyCode.RightShift, function(Value)
        ToggleUILib()
    end)

Tab2:Toggle("彩虹 UI", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
end)

local Tab = creds:section("冬凌中心在这",true)

Tab:Button("₪点我打开冬凌中心₪",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/XiaoLing-UwU/main/%E5%86%AC%E5%87%8C%E4%B8%AD%E5%BF%83(%E5%B7%B2%E6%81%A2%E5%A4%8D).XiaoLing.Lua"))()
end)

Tab2:Label("下面是内设脚本.")

Tab:Slider('速度', 'Walkspeed Slider', 16, 16, 1000,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

Tab:Slider('跳跃', 'JumpPower Slider', 50, 50, 1000,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

Tab:Button("键盘脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
Tab:Toggle("夜视", "text", false, function(Value)
if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
end)
Tab:Toggle("穿墙", "text", false, function(Value)
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
end)

Tab:Button("工具点击传送",function()
mouse = game.Players.LocalPlayer:GetMouse()
                tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "TPs"
                tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end)
                tool.Parent = game.Players.LocalPlayer.Backpack
end)
Tab:Toggle("一个开关", "text", false, function(value)
print("value")
end)
Tab:Button("工具箱",function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)
Tab:Button("ESP gui",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/zachisfunny/esp-unversal/main/script'),true))()
end)
Tab:Button("反AFK",function()
wait(0.5)
    local bb=game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    end)
 
    print("Antiafk enabled")
end)
Tab:Button("反踢出",function()
local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
                    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(1)
                vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
end)