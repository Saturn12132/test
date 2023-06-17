## Documentation for Rayfield
<details>
<summary>Booting the Library</summary>

## Booting the Library
```lua
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
```

## Secure Mode
```lua
getgenv().SecureMode = true
```

## Anti Auto Load Configuration
```lua
getgenv().DisableArrayfieldAutoLoad = true
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
local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
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
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
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

## Prompting the
```lua
Window:Prompt({
	Title = 'Interface Prompt',
	SubTitle = 'SubTitle',
	Content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
	Actions = {
		Accept = {
			Name = 'Accept',
			Callback = function()
				-- You know what a callback is...
			end,
		}
	}
})
```

## Switch Tab Interface
```lua
Rayfield:ToggleOldTabStyle(true) -- Switch to false if you want the new style
```

## Destroying the Interface
```lua
Rayfield:Destroy()
```

</details>

<details>
<summary>Elements</summary>

## Notifying the user
```lua
Rayfield:Notify({
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
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
```

## Updating a Button
```lua
Button:Set("Button Example")
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
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})
```

## Creating an Old Dropdown menu
```lua
local Dropdown = Tab:OldCreateDropdown({
   Name = "Dropdown Example",
   Options = {"Option 1","Option 2"},
   CurrentOption = {"Option 1"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
   -- The function that takes place when the selected option is changed
   -- The variable (Option) is a table of strings for the current selected options
   end,
})
```

## Creating a Dropdown menu
```lua
local Dropdown = Tab:CreateDropdown({
   Name = "Dropdown Example",
   Options = {"Option 1","Option 2"},
   CurrentOption = {"Option 1"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
   -- The function that takes place when the selected option is changed
   -- The variable (Option) is a table of strings for the current selected options
   end,
})
```

## Updating a Dropdown menu
```lua
Dropdown:Set("Option 2") -- The new option value

Dropdown:Refresh({<table>},<selected>)

Dropdown:Add('test')
Dropdown:Remove('test')
```

## General Settings
```lua
--Optional
local ElementExample
ElementExample = Tab:Create____({

Info = 'Description/info',
SectionParent = Section -- Section it's parented to

})
```

## Updating an existing element
```lua
Element:Destroy() -- Destroy

Element:Visible(<bool>)

Element:Lock(Reason:<string>)    -- Lock
Element:Unlock()  -- Unlock
```

## Check the value of an existing element

To check the current value of an existing element, using the variable, `ElementName.CurrentValue`, if it’s a keybind or dropdown, you will need to use `KeybindName.CurrentKeybind` or ```DropdownName.CurrentOption``` You can also check it via the `flags from Rayfield.Flags`

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
