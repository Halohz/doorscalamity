if game.PlaceId == 6516141723 or  -- Doors Lobby
   game.PlaceId == 6839171747 or  -- Doors In Game
   game.PlaceId == 10873387885 or -- DOORS but kinda cheap and shorter [Lobby]
   game.PlaceId == 10926417608 or -- DOORS but kinda cheap and shorter [In Game]
   game.PlaceId == 12696293710 or -- DOORS but kinda cheap and shorter [In The Room]
   game.PlaceId == 12398966422    -- Doors But Decent
then
    -- Configuration for the in-game button
    local IMAGE = "rbxassetid://13429676701"
    local Positions = UDim2.new(0.001, 0, 0.54, 0)
    local Sizes = UDim2.new(0, 76, 0, 70)
 
    -- Create GUI elements
    local CalamityGUI = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local ToggleButton = Instance.new("ImageButton")
 
    -- Configure GUI properties
    CalamityGUI.Name = "CalamityOpen"
    CalamityGUI.Parent = game:WaitForChild("CoreGui")
    CalamityGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
    Frame.Name = "100x100"
    Frame.Parent = CalamityGUI
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.Position = Positions
    Frame.Size = UDim2.new(0, 50, 0, 45)
 
    ToggleButton.Parent = Frame
    ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.Size = Sizes
    ToggleButton.Image = IMAGE
 
    -- Toggle function for enabling/disabling the Calamity GUI
    ToggleButton.MouseButton1Down:Connect(function()
        local calamityGui = game.CoreGui:FindFirstChild("CalamityHub")
        if calamityGui then
            calamityGui.Enabled = not calamityGui.Enabled
        end
    end)
 
    -- Load the Calamity script from Pastebin
    loadstring(game:HttpGet("https://pastebin.com/raw/z0EHQ8ZA"))()
end
