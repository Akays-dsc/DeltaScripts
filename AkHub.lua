-- Création de la fenêtre principale
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local MinimizeButton = Instance.new("TextButton")
local MobileFrame = Instance.new("Frame")
local NavigationFrame = Instance.new("Frame")
local BloxFruitsButton = Instance.new("TextButton")
local FishButton = Instance.new("TextButton")
local OtherButton = Instance.new("TextButton")
local BloxFruitsMenu = Instance.new("Frame")
local FishMenu = Instance.new("Frame")
local OtherMenu = Instance.new("Frame")
local DiscordButton = Instance.new("TextButton")
local GithubButton = Instance.new("TextButton")
local BloxFruitsOptions = {"Main", "Farm", "Sea", "Raid", "Fruit", "Status", "Stat", "Quest", "Shop"}
local FishOptions = {"Main", "Farm", "Island", "Shop", "Status"}
local OtherOptions = {"Misc"}

-- Initialisation de ScreenGui
ScreenGui.Name = "AkHub"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

-- Configuration de la fenêtre principale
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 400, 0, 300)
Frame.Position = UDim2.new(0.5, -200, 0.5, -150)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0

-- Titre avec fleurs décoratives et texte
TitleLabel.Parent = Frame
TitleLabel.Text = "Bienvenue sur Ak Hub"
TitleLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 30
TitleLabel.TextStrokeTransparency = 0.8
TitleLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.Size = UDim2.new(1, 0, 0, 40)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)

-- Ajout des fleurs autour du titre (images à télécharger sur un hébergeur)
local flowerLeft = Instance.new("ImageLabel")
flowerLeft.Parent = TitleLabel
flowerLeft.Size = UDim2.new(0, 20, 0, 20)
flowerLeft.Position = UDim2.new(0, -25, 0, 10)
flowerLeft.Image = "https://www.example.com/flower_image" -- Remplace avec ton URL d'image
flowerLeft.BackgroundTransparency = 1

local flowerRight = Instance.new("ImageLabel")
flowerRight.Parent = TitleLabel
flowerRight.Size = UDim2.new(0, 20, 0, 20)
flowerRight.Position = UDim2.new(1, 5, 0, 10)
flowerRight.Image = "https://www.example.com/flower_image" -- Remplace avec ton URL d'image
flowerRight.BackgroundTransparency = 1

-- Bouton fermer
CloseButton.Parent = Frame
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Size = UDim2.new(0, 40, 0, 40)
CloseButton.Position = UDim2.new(1, -40, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CloseButton.BorderSizePixel = 0
CloseButton.MouseButton1Click:Connect(function()
    local confirmation = Instance.new("MessageDialog")
    confirmation.Message = "Êtes-vous sûr de vouloir fermer ?"
    confirmation.Parent = game.CoreGui
end)

-- Bouton réduire
MinimizeButton.Parent = Frame
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.Size = UDim2.new(0, 40, 0, 40)
MinimizeButton.Position = UDim2.new(1, -80, 0, 0)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.MouseButton1Click:Connect(function()
    MobileFrame.Visible = true
end)

-- Fenêtre mobile réduite
MobileFrame.Parent = ScreenGui
MobileFrame.Size = UDim2.new(0, 60, 0, 60)
MobileFrame.Position = UDim2.new(0, 0, 0.5, -30)
MobileFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MobileFrame.Visible = false
MobileFrame.Draggable = true

local MobileText = Instance.new("TextLabel")
MobileText.Parent = MobileFrame
MobileText.Text = "Ak"
MobileText.TextColor3 = Color3.fromRGB(255, 0, 0)
MobileText.TextSize = 20
MobileText.Size = UDim2.new(1, 0, 1, 0)
MobileText.BackgroundTransparency = 1

-- Menu latéral
NavigationFrame.Parent = Frame
NavigationFrame.Size = UDim2.new(0, 150, 1, 0)
NavigationFrame.Position = UDim2.new(0, 0, 0, 40)
NavigationFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

BloxFruitsButton.Parent = NavigationFrame
BloxFruitsButton.Text = "BloxFruit"
BloxFruitsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BloxFruitsButton.Size = UDim2.new(1, 0, 0, 40)
BloxFruitsButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

FishButton.Parent = NavigationFrame
FishButton.Text = "Fish"
FishButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FishButton.Size = UDim2.new(1, 0, 0, 40)
FishButton.Position = UDim2.new(0, 0, 0, 40)
FishButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

OtherButton.Parent = NavigationFrame
OtherButton.Text = "Other"
OtherButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OtherButton.Size = UDim2.new(1, 0, 0, 40)
OtherButton.Position = UDim2.new(0, 0, 0, 80)
OtherButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

-- Menu déroulant pour BloxFruit
BloxFruitsMenu.Parent = Frame
BloxFruitsMenu.Size = UDim2.new(0, 250, 0, 0)
BloxFruitsMenu.Position = UDim2.new(0, 150, 0, 40)
BloxFruitsMenu.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
BloxFruitsMenu.Visible = false

-- Répéter pour FishMenu et OtherMenu, puis gérer les sous-menus déroulants.

-- Discord et GitHub boutons
DiscordButton.Parent = Frame
DiscordButton.Text = "Discord"
DiscordButton.Size = UDim2.new(0, 100, 0, 40)
DiscordButton.Position = UDim2.new(0, 0, 1, -40)
DiscordButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
DiscordButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/placeholder")
end)

GithubButton.Parent = Frame
GithubButton.Text = "GitHub"
GithubButton.Size = UDim2.new(0, 100, 0, 40)
GithubButton.Position = UDim2.new(1, -100, 1, -40)
GithubButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
GithubButton.MouseButton1Click:Connect(function()
    setclipboard("https://github.com/Akays-dsc/DeltaScripts")
end)
