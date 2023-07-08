local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()

Notification.WallNotification("God", "Yeet", {
    MainSettings = {
        Orientation = "Left",
        VisibleSize = UDim2.new(0.5, 0, 0.5, 0);
        HiddenSize  = UDim2.new(0, 0, 0.5, 0),
        TweenTime   = 0.8
    },
})

Notification.Notify("{ Iris }", "Yeet", "rbxassetid://7258714296", {
    Duration = 7,
    
    TitleSettings = {
        TextXAlignment = Enum.TextXAlignment.Center,
        Font = Enum.Font.SourceSansSemibold,
    },

    GradientSettings = {
        GradientEnabled = false,
        SolidColorEnabled = true,
        SolidColor = Color3.fromRGB(124, 83, 240),
        Retract = true
    }
})
