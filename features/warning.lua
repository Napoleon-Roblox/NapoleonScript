
-- ==============================================================================
-- Napoleon Growblox — Disclaimer Warning UI
-- Themed: Growblox Teal Dialog
-- ==============================================================================

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local SCRIPT_URL = "https://raw.githubusercontent.com/Napoleon-Roblox/NapoleonScript/refs/heads/main/features/gbx.lua"

-- ============================================================
-- Parent GUI
-- ============================================================
local parentGui = (gethui and gethui()) or game:GetService("CoreGui") or (LocalPlayer and LocalPlayer:FindFirstChild("PlayerGui"))

local WarningGui = Instance.new("ScreenGui")
WarningGui.Name = "NapoleonWarningGui"
WarningGui.ResetOnSpawn = false
WarningGui.DisplayOrder = 99999
WarningGui.IgnoreGuiInset = true
WarningGui.Parent = parentGui

-- ============================================================
-- Fullscreen Dark Overlay
-- ============================================================
local overlay = Instance.new("Frame")
overlay.Name = "Overlay"
overlay.Size = UDim2.new(1, 0, 1, 0)
overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
overlay.BackgroundTransparency = 0.45
overlay.BorderSizePixel = 0
overlay.ZIndex = 100
overlay.Parent = WarningGui

-- ============================================================
-- Modal Container — Growblox Teal Dialog Theme
-- ============================================================
local modal = Instance.new("Frame")
modal.Name = "WarningModal"
modal.Size = UDim2.new(0, 480, 0, 440)
modal.Position = UDim2.new(0.5, -240, 0.5, -220)
modal.BackgroundColor3 = Color3.fromRGB(30, 100, 120)
modal.BackgroundTransparency = 0.04
modal.BorderSizePixel = 0
modal.Active = true
modal.ZIndex = 101
modal.Parent = WarningGui

local modalCorner = Instance.new("UICorner")
modalCorner.CornerRadius = UDim.new(0, 8)
modalCorner.Parent = modal

local modalStroke = Instance.new("UIStroke")
modalStroke.Color = Color3.fromRGB(135, 184, 204)
modalStroke.Thickness = 3.5
modalStroke.Parent = modal

-- Inner Shadow Edge (authentic Growblox beveled edge)
local innerEdge = Instance.new("Frame")
innerEdge.Name = "InnerEdge"
innerEdge.Size = UDim2.new(1, -4, 1, -4)
innerEdge.Position = UDim2.new(0, 2, 0, 2)
innerEdge.BackgroundTransparency = 1
innerEdge.BorderSizePixel = 0
innerEdge.ZIndex = 102
innerEdge.Parent = modal

local innerCorner = Instance.new("UICorner")
innerCorner.CornerRadius = UDim.new(0, 6)
innerCorner.Parent = innerEdge

local innerStroke = Instance.new("UIStroke")
innerStroke.Color = Color3.fromRGB(4, 8, 10)
innerStroke.Thickness = 2
innerStroke.Parent = innerEdge

-- ============================================================
-- Header — ⚠ WARNING
-- ============================================================
local header = Instance.new("Frame")
header.Name = "Header"
header.Size = UDim2.new(1, 0, 0, 40)
header.BackgroundTransparency = 1
header.BorderSizePixel = 0
header.ZIndex = 103
header.Parent = modal

local headerTitle = Instance.new("TextLabel")
headerTitle.Size = UDim2.new(1, -24, 1, 0)
headerTitle.Position = UDim2.new(0, 12, 0, 0)
headerTitle.BackgroundTransparency = 1
headerTitle.Text = "⚠  WARNING"
headerTitle.TextColor3 = Color3.fromRGB(255, 220, 90)
headerTitle.Font = Enum.Font.GothamBold
headerTitle.TextSize = 20
headerTitle.TextXAlignment = Enum.TextXAlignment.Center
headerTitle.ZIndex = 104
headerTitle.Parent = header

local headerStroke = Instance.new("UIStroke")
headerStroke.Color = Color3.fromRGB(10, 35, 45)
headerStroke.Thickness = 1.5
headerStroke.Parent = headerTitle

-- ============================================================
-- Separator Line
-- ============================================================
local sep = Instance.new("Frame")
sep.Name = "Separator"
sep.Size = UDim2.new(1, -24, 0, 1)
sep.Position = UDim2.new(0, 12, 0, 40)
sep.BackgroundColor3 = Color3.fromRGB(80, 140, 160)
sep.BackgroundTransparency = 0.4
sep.BorderSizePixel = 0
sep.ZIndex = 103
sep.Parent = modal

-- ============================================================
-- Indonesian Text
-- ============================================================
local textIndo = Instance.new("TextLabel")
textIndo.Name = "TextIndo"
textIndo.Size = UDim2.new(1, -32, 0, 120)
textIndo.Position = UDim2.new(0, 16, 0, 55)
textIndo.BackgroundTransparency = 1
textIndo.Text = "Menggunakan script pihak ketiga dapat meningkatkan risiko akun kamu terkena banned atau sanksi dari pihak game. Pastikan kamu memahami risiko tersebut sebelum melanjutkan. Segala konsekuensi yang terjadi menjadi tanggung jawab masing-masing pengguna."
textIndo.TextColor3 = Color3.fromRGB(220, 240, 250)
textIndo.Font = Enum.Font.GothamBold
textIndo.TextSize = 15
textIndo.TextWrapped = true
textIndo.TextXAlignment = Enum.TextXAlignment.Left
textIndo.TextYAlignment = Enum.TextYAlignment.Top
textIndo.ZIndex = 103
textIndo.Parent = modal

-- ============================================================
-- Separator 2
-- ============================================================
local sep2 = Instance.new("Frame")
sep2.Name = "Separator2"
sep2.Size = UDim2.new(1, -32, 0, 1)
sep2.Position = UDim2.new(0, 16, 0, 220)
sep2.BackgroundColor3 = Color3.fromRGB(80, 140, 160)
sep2.BackgroundTransparency = 0.6
sep2.BorderSizePixel = 0
sep2.ZIndex = 103
sep2.Parent = modal

-- ============================================================
-- English Text
-- ============================================================
local textEng = Instance.new("TextLabel")
textEng.Name = "TextEnglish"
textEng.Size = UDim2.new(1, -32, 0, 120)
textEng.Position = UDim2.new(0, 16, 0, 230)
textEng.BackgroundTransparency = 1
textEng.Text = "Using third-party scripts may increase the risk of your account being banned or penalized by the game. Make sure you understand the risks before proceeding. All consequences are the sole responsibility of each user."
textEng.TextColor3 = Color3.fromRGB(180, 210, 225)
textEng.Font = Enum.Font.GothamBold
textEng.TextSize = 14
textEng.TextWrapped = true
textEng.TextXAlignment = Enum.TextXAlignment.Left
textEng.TextYAlignment = Enum.TextYAlignment.Top
textEng.ZIndex = 103
textEng.Parent = modal

-- ============================================================
-- Helper: Create 3D Growblox Button
-- ============================================================
local function create3DButton(parent, posX, width, text, bgColor, shadowColor)
    local wrap = Instance.new("Frame")
    wrap.Name = text .. "Wrap"
    wrap.Size = UDim2.new(0, width, 0, 40)
    wrap.Position = UDim2.new(0, posX, 0, 0)
    wrap.BackgroundTransparency = 1
    wrap.ZIndex = 103
    wrap.Parent = parent

    local shadow = Instance.new("Frame")
    shadow.Size = UDim2.new(1, -2, 1, -2)
    shadow.Position = UDim2.new(0, 2, 0, 2)
    shadow.BackgroundColor3 = shadowColor
    shadow.BorderSizePixel = 0
    shadow.ZIndex = 103
    shadow.Parent = wrap

    local shadowCorner = Instance.new("UICorner")
    shadowCorner.CornerRadius = UDim.new(0, 5)
    shadowCorner.Parent = shadow

    local btn = Instance.new("TextButton")
    btn.Name = text .. "Btn"
    btn.Size = UDim2.new(1, -2, 1, -2)
    btn.Position = UDim2.new(0, 0, 0, 0)
    btn.BackgroundColor3 = bgColor
    btn.BorderSizePixel = 0
    btn.Text = text
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 16
    btn.AutoButtonColor = false
    btn.ZIndex = 104
    btn.Parent = wrap

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 5)
    btnCorner.Parent = btn

    local btnStroke = Instance.new("UIStroke")
    btnStroke.Color = Color3.fromRGB(255, 255, 255)
    btnStroke.Thickness = 0
    btnStroke.Transparency = 0.8
    btnStroke.Parent = btn

    -- 3D press effect
    btn.MouseButton1Down:Connect(function()
        btn.Position = UDim2.new(0, 2, 0, 2)
    end)
    btn.MouseButton1Up:Connect(function()
        btn.Position = UDim2.new(0, 0, 0, 0)
    end)

    return btn
end

-- ============================================================
-- Footer with Accept & Deny Buttons
-- ============================================================
local footer = Instance.new("Frame")
footer.Name = "Footer"
footer.Size = UDim2.new(1, -32, 0, 40)
footer.Position = UDim2.new(0, 16, 0, 385)
footer.BackgroundTransparency = 1
footer.ZIndex = 103
footer.Parent = modal

local btnWidth = 210
local gap = 20

local denyBtn = create3DButton(
    footer, 0, btnWidth,
    "Deny",
    Color3.fromRGB(225, 85, 80),
    Color3.fromRGB(50, 15, 20)
)

local acceptBtn = create3DButton(
    footer, btnWidth + gap, btnWidth,
    "Accept",
    Color3.fromRGB(0, 160, 80),
    Color3.fromRGB(10, 45, 25)
)

-- ============================================================
-- Button Callbacks
-- ============================================================
denyBtn.MouseButton1Click:Connect(function()
    pcall(function() WarningGui:Destroy() end)
    LocalPlayer:Kick("You denied the disclaimer. Disconnected from the server.")
end)

acceptBtn.MouseButton1Click:Connect(function()
    pcall(function() WarningGui:Destroy() end)

    local ok, err = pcall(function()
        loadstring(game:HttpGet(SCRIPT_URL))()
    end)

    if not ok then
        warn("[Napoleon] Failed to load script: " .. tostring(err))
    end
end)
