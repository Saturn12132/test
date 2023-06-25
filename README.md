## Documentation for Rayfield
<details>
<summary>Booting the Library</summary>

## Booting the Library
```lua
local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
```

## Secure Mode
```lua
getgenv().SecureMode = true
```

## Load Configuration
```lua
Rayfield:LoadConfiguration()
```

</details>

<details>
<summary>Windows</summary>

## Create a window
```lua
local Window = ArrayField:CreateWindow({
   Name = "ArrayField Example Window",
   LoadingTitle = "ArrayField Interface Suite",
   LoadingSubtitle = "by Arrays",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "ArrayField"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'Click here to copy the key link <--',
                OnPress = function()
                    print('Pressed')
                end,
                }
            },
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
```


## Creating a Tab
```lua
local Tab = Window:CreateTab("Tab Example", 4483362458)
```

## Creating a Section
```lua
local Section = Tab:CreateSection("Section Example",true/false)
```

## Updating a Section
```lua
Section:Set("Section Example")

Section:Destroy()
Section:Lock()
Section:Unlock()
```

## Prompting the window
```lua
Window:Prompt({
    Title = 'Interface Prompt',
    SubTitle = 'SubTitle',
    Content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    Actions = {
        Accept = {
            Name = 'Accept',
            Callback = function()
                print('Pressed')
            end,
        }
    }
})
```

## Destroying the Interface
```lua
ArrayField:Destroy()
```

</details>

<details>
<summary>Elements</summary>

## Notifying the user
```lua
ArrayField:Notify({
   Title = "Notification Title",
   Content = "Notification Content",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
 },
})
```

## Creating a Button
```lua
local Button = Tab:CreateButton({
   Name = "Button Example",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
```

## Updating a Button
```lua
Button:Set("Button Example", "Interact")
```

## Creating a Toggle
```lua
local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})
```

## Updating a Toggle
```lua
Toggle:Set(false) -- can be true
```

## Creating a Color Picker
```lua
local ColorPicker = Tab:CreateColorPicker({
    Name = "Color Picker",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        -- The function that takes place every time the color picker is moved/changed
        -- The variable (Value) is a Color3fromRGB value based on which color is selected
    end
})
```

## Updating a Color Picker
```lua
ColorPicker:Set(Color3.fromRGB(255,255,255)
```

## Creating a Slider
```lua
local Slider = Tab:CreateSlider({
   Name = "Slider Example",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})
```

## Updating a Slider
```lua
Slider:Set(10) -- The new slider integer value
```

## Creating an Adaptive Input (TextBox)
```lua
local Input = Tab:CreateInput({
   Name = "Input Example",
   PlaceholderText = "Input Placeholder",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = 15, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})
```

## Creating a Dropdown menu
```lua
local Dropdown = Tab:CreateDropdown({
   Name = "Dropdown Example",
   Options = {"Option 1","Option 2"},
   CurrentOption = "Option 1" or {"Option 1","Option 3"},
   MultiSelection = true, -- If MultiSelections is allowed
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
   -- The function that takes place when the selected option is changed
   -- The variable (Option) is a string for the value that the dropdown was changed to
   end,
})
```

## Updating a Dropdown menu
```lua
Dropdown:Set("Option 2" or <table>) -- The new option value

Dropdown:Refresh({<table>},<selected>)

Dropdown:Add('test')
Dropdown:Remove('test')
```

## General Settings
```lua
--Optional
local ElementExample
ElementExample = Tab:Create______({

Info = {
   Image = '1234567890',
   Text = 'Description for the prompt'
},
SectionParent = Section -- Section it's parented to

})
```

## Updating an existing element
```lua
Element:Destroy() -- Destroy

Element:Visible(<bool>)

Element:Lock(Reason:<string>) -- Lock
Element:Unlock()  -- Unlock
```

## Check the value of an existing element

To check the current value of an existing element, using the variable, `ElementName.CurrentValue`, if it’s a keybind or dropdown, you will need to use `KeybindName.CurrentKeybind` or ```DropdownName.CurrentOption``` You can also check it via the `flags from ArrayField.Flags`

</details>

<details>
<summary>Binds</summary>

## Creating a Keybind

```lua
local Keybind = Tab:CreateKeybind({
   Name = "Keybind Example",
   CurrentKeybind = "Q",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
   -- The function that takes place when the keybind is pressed
   -- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
   end,
})
```

## Updating a Keybind

```lua
Keybind:Set("RightCtrl") -- Keybind (string)
```

</details>

<details>
<summary>Textual Components</summary>

## Creating a Label

```lua
local Label = Tab:CreateLabel("Label Example",SectionParent)
```

## Updating a Label

```lua
Label:Set("Label Example")
```

## Creating a Paragraph

```lua
local Paragraph = Tab:CreateParagraph({Title = "Paragraph Example", Content = "Paragraph Example",SectionParent})
```

## Updating a Paragraph

```lua
Paragraph:Set({Title = "Paragraph Example", Content = "Paragraph Example"})
```

</details>

<details>
<summary>Script Template</summary>

## Script

```lua
local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source'))()
local Window = ArrayField:CreateWindow({
        Name = "ArrayField Example Window",
        LoadingTitle = "ArrayField Interface Suite",
        LoadingSubtitle = "by Arrays",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "ArrayField"
        },
        Discord = {
            Enabled = false,
            Invite = "sirius", -- The Discord invite code, do not include discord.gg/
            RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
            Title = "ArrayField",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/sirius)",
            FileName = "ArrayFieldsKeys",
            SaveKey = false,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
            Key = {"Hello",'Bye'},
            Actions = {
                [1] = {
                    Text = 'Click here to copy the key link',
                    OnPress = function()

                    end,
                }
            },
        }
    })
    local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
    local Tab2 = Window:CreateTab("Tab Example 2") -- Title, Image
    local Section = Tab:CreateSection("Section Example",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element
    Tab:CreateSpacing(nil,10)
    local Button = Tab:CreateButton({
        Name = "Button Example",
        Info = {
            Title = 'This is a Button',
            Description = 'This is a description for the button you know.',
        },
        Interact = 'Changable',
        Callback = function()
            print('Pressed')
        end,
    })
    Tab:CreateSpacing(nil,10)
    local Toggle = Tab:CreateToggle({
        Name = "Toggle Example",
        Info = {
            Title = 'Slider template',
            Image = '12735851647',
            Description = 'Just a slider for stuff',
        },
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            print(Value)
        end,
    })
    Tab:CreateSpacing(nil,10)
    local ColorPicker = Tab:CreateColorPicker({
        Name = "Color Picker",
        Color = Color3.fromRGB(2,255,255),
        Flag = "ColorPicker1",
        Callback = function(Value)
            print(Value)
        end
    })
    Tab:CreateSpacing(nil,10)
    local Slider = Tab:CreateSlider({
        Name = "Slider Example",
        Range = {0, 100},
        Increment = 10,
        Suffix = "Bananas",
        CurrentValue = 10,
        Flag = "Slider1",
        Callback = function(Value)
            print(Value)
        end,
    })
    Tab:CreateSpacing(nil,10)
    local Keybind = Tab:CreateKeybind({
        Name = "Keybind Example",
        CurrentKeybind = "Q",
        HoldToInteract = false,
        Flag = "Keybind1",
        Callback = function(Keybind)

        end,
    })
    Tab:CreateSpacing(nil,10)
    local Section2 = Tab:CreateSection("Inputs Examples",true)
    Tab:CreateInput({
        Name = "Numbers Only",
        PlaceholderText = "Amount",
        NumbersOnly = true,
        OnEnter = true,
        RemoveTextAfterFocusLost = true,
        Callback = function(Text)
            print(Text)
        end,
    })
    Tab:CreateInput({
        Name = "11 Characters Limit",
        PlaceholderText = "Text",
        CharacterLimit = 11,
        RemoveTextAfterFocusLost = true,
        Callback = function(Text)
            print(Text)
        end,
    })
    Tab:CreateInput({
        Name = "No RemoveTextAfterFocusLost",
        PlaceholderText = "Input",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            print(Text)
        end,
    })
    local Section3= Tab:CreateSection("Dropdown Examples",true)
    local MultiSelectionDropdown = Tab:CreateDropdown({
        Name = "Multi Selection",
        Options = {"Option 1","Option 2",'Option 3'},
        CurrentOption = {"Option 1","Option 3"} ,
        MultiSelection = true,
        Flag = "Dropdown1",
        Callback = function(Option)
            print(Option)
        end,
    })
    local SingleSelection = Tab:CreateDropdown({
        Name = "Single Selection",
        Options = {"Option 1","Option 2"},
        CurrentOption = "Option 1",
        MultiSelection = false,
        Flag = "Dropdown2",
        Callback = function(Option)
            print(Option)
        end,
    })
    local Label = Tab:CreateLabel("Thanks for using Arrayfield, there were alot of issues but here we are!",Section)
    local Paragraph = Tab:CreateParagraph({Title = "Paragraph Example", Content = "Paragraph Example"},Section)
    local Sets = Tab:CreateSection('Set Functions',false)
    local SButton
    SButton = Tab:CreateButton({
        Name = "Button Example",
        Interact = 'Interact',
        SectionParent = Sets,
        Callback = function()
            SButton:Set(nil,'New Interaction')
        end
    })
    Tab:CreateButton({
        Name = "Dropdown Set",
        Interact = 'Interact',
        SectionParent = Sets,
        Callback = function()
            SingleSelection:Set('Option 1')
        end
    })

    local LockTesting = Tab:CreateSection('Lockdown Section',false)
    local ToLock = {}
    Tab:CreateToggle({
        Name = "Lockdown",
        SectionParent = LockTesting,
        CurrentValue = false,
        Callback = function(Value)
            if Value then
                for _,v in ToLock do
                    v:Lock('Locked')
                end
            else
                for _,v in ToLock do
                    v:Unlock('Locked')
                end
            end
        end,
    })
    Tab:CreateSpacing(LockTesting)
    ToLock.Button = Tab:CreateButton({
        SectionParent = LockTesting,
        Name = "Button Example",
        Interact = 'Interact',
        Callback = function()
            print('Pressed')
        end,
    })
    ToLock.Toggle = Tab:CreateToggle({
        SectionParent = LockTesting,
        Name = "Toggle Example",
        CurrentValue = false,
        Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            print(Value)
        end,
    })
    ToLock.ColorPicker = Tab:CreateColorPicker({
        Name = "Color Picker",
        SectionParent = LockTesting,
        Color = Color3.fromRGB(2,255,255),
        Flag = "ColorPicker2",
        Callback = function(Value)
            print(Value)
        end
    })
    ToLock.Slider = Tab:CreateSlider({
        SectionParent = LockTesting,
        Name = "Slider Example",
        Range = {0, 100},
        Increment = 10,
        Suffix = "Bananas",
        CurrentValue = 10,
        Flag = "Slider2",
        Callback = function(Value)
            print(Value)
        end,
    })
    ToLock.Keybind = Tab:CreateKeybind({
        Name = "Keybind Example",
        CurrentKeybind = "Q",
        HoldToInteract = false,
        SectionParent = LockTesting,
        Flag = "Keybind2",
        Callback = function(Keybind)

        end,
    })
```

</details>
