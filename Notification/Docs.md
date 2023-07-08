# Notification Library Docs

## Remove the Ad
```lua
getgenv().IrisAd = true
```

## Module
```lua
local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
```

## Notify
```lua
bool Notification.Notify(<string> Title, <string> Description, <string> ImageAsset, <Table> Settings = Default)
```

## Wall Notify
```lua
bool Notification.Notify(<string> Title, <string> Description, <Table> Settings = Default)
```

## Clear all notifications
```lua
void Notification.ClearAllNotifications()
```

## Notification Settings Table
```lua
Duration = 2,

TitleSettings = {
    BackgroundColor3 = Color3.fromRGB(200, 200 ,200),
    TextColor3 = Color3.fromRGB(240, 240, 240),
    TextScaled = true,
    TextWrapped = true,
    TextSize = 14,
    Font = Enum.Font.SourceSansBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Center
},

DescriptionSettings = {
    BackgroundColor3 = Color3.fromRGB(200, 200 ,200),
    TextColor3 = Color3.fromRGB(240, 240, 240),
    TextScaled = true,
    TextWrapped = true,
    TextSize = 14,
    Font = Enum.Font.SourceSansBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Top,
},

IconSettings = {
    BackgroundTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),               
},

GradientSettings = {
    GradientEnabled = false,
    SolidColorEnabled = true,
    SolidColor = Color3.fromRGB(0,255,0255),
    Retract = false,
    Extend = false,
},

Main = {
    BorderColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundColor3 = Color3.fromRGB(30, 30, 30),
    BackgroundTransparency = 0.05,
    Rounding = true,
    BorderSizePixel = 1
}
```

## Notification Wall Setting Table
```lua
Duration = 5,

MainSettings = {
    Orientation = "Middle",
    VisibleSize = UDim2.new(0.96981132, 0, 0.947604775, 0);
    HiddenSize  = UDim2.new(0, 0, 0.947604775, 0),
    TweenTime   = 0.8
},

TitleSettings = {
    Enabled = true,
    BackgroundColor3 = Color3.fromRGB(200, 200 ,200),
    TextColor3 = Color3.fromRGB(240, 240, 240),
    TextScaled = true,
    TextWrapped = true,
    TextSize = 18.000,
    Font = Enum.Font.SourceSansBold,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextYAlignment = Enum.TextYAlignment.Center
},

DescriptionSettings = {
    BackgroundColor3 = Color3.fromRGB(200, 200 ,200),
    TextColor3 = Color3.fromRGB(240, 240, 240),
    TextScaled = true,
    TextWrapped = true,
    TextSize = 14.000,
    Font = Enum.Font.SourceSans,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextYAlignment = Enum.TextYAlignment.Center
}
```
