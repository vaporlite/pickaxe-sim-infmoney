getgenv().auto = true
getgenv().Version = 'v1.0'

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

    local Window = Rayfield:CreateWindow({
        Name = "Vapor Artworks ".. Version,
        LoadingTitle = "Found Game...",
        LoadingSubtitle = "by majestical",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = "vaporartworks",
            FileName = "vaporlitefile"
        },
            Discord = {
                Enabled = true,
                Invite = "34tJXDPzvq",
                RememberJoins = false
            },
        KeySystem = false,
        KeySettings = {
            Title = "Vapor Artworks",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/34tJXDPzvq)",
            FileName = "vaporartworks_key",
            SaveKey = false,
            GrabKeyFromSite = true,
            Key = "https://pastebin.com/raw/kcEsdc3h" --tostring(KeyLol)
        }
    })

    Rayfield:Notify({
        Title = "Vapor Artworks",
        Content = "Vapor Artworks ".. Version .." has loaded with (0) Errors.",
        Duration = 6.5,
        Image = 4483362458,
        Actions = {
            Ignore = {
                Name = "idc",
                Callback = function()
                    print("The user tapped Okay!")
                end
            },
        },
    })

    local AutomaticsTab = Window:CreateTab("Overpowered", 7072716155) -- Title, Image
    local AutomaticsSection = AutomaticsTab:CreateSection("Abusing game mechanics")

    local infcash = AutomaticsTab:CreateToggle({
        Name = "Infinite Cash",
        CurrentValue = false,
        Flag = "infcash",
        Callback = function(Value)
            
            auto = Value

            while auto and task.wait() do

                for _, v in pairs(game:GetService("Workspace").Blocks:GetChildren()) do
                
                    local args = {
                    [1] = v.Name
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.Mining.MineBlock:FireServer(unpack(args))
                    wait()
                    
                end
                
            end

        end,
    })


    local PlrTab = Window:CreateTab("Player", 7072724538) -- Title, Image
    local PlrSection = PlrTab:CreateSection("Local Player")

    local WsSlider = PlrTab:CreateSlider({
        Name = "WalkSpeed",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Walkspeed",
        CurrentValue = 16,
        Flag = "WsSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

        end,
    })

    local JsSlider = PlrTab:CreateSlider({
        Name = "JumpPower",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Jumpppeed",
        CurrentValue = 7.2,
        Flag = "JpSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(Value)

        end,
    })

    local fovSlider = PlrTab:CreateSlider({
        Name = "Field of View (FOV)",
        Range = {30, 120},
        Increment = 1,
        Suffix = "FOV",
        CurrentValue = 70,
        Flag = "FovSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            
            game.Workspace.Camera.FieldOfView = Value

        end,
    })

    local TrollTab = Window:CreateTab("Visuals", 7072716095)
    local TrollSection = TrollTab:CreateSection("Visuals")

    local CoinsInput = TrollTab:CreateInput({
        Name = "Set Coins Value (CLIENT)",
        PlaceholderText = "amount",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)

            if tonumber(Text) ~= nil then

                game:GetService("Players").LocalPlayer.HiddenStats.Coins.Value = tonumber(Text)

            end

        end,
    })

    local GemsInput = TrollTab:CreateInput({
        Name = "Set Gems Value (CLIENT)",
        PlaceholderText = "amount",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)

            if tonumber(Text) ~= nil then

                game:GetService("Players").LocalPlayer.HiddenStats.Gems.Value = tonumber(Text)

            end

        end,
    })

    local RankInput = TrollTab:CreateInput({
        Name = "Set Rank Name (CLIENT)",
        PlaceholderText = "amount",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)

            game:GetService("Players").LocalPlayer.leaderstats.Rank.Value = Text

        end,
    })
