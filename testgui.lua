-- Interface GUI "Test" simple et propre pour Delta Executor (iOS compatible)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Name = "TestGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.4, 0, 0.4, 0)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.BackgroundTransparency = 0.2

TextLabel.Parent = Frame
TextLabel.Text = "Test"
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.TextScaled = true
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
