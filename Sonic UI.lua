-- hehe hub

repeat wait() until game:IsLoaded()

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local UICreator = {}

local IsClient = false
local UIS = game:GetService('UserInputService')
local Http = game:GetService('HttpService')
local NotificationCount = 0

local suc,er = pcall(function()

	local newfunc = game.Players.LocalPlayer.Chatted:connect(function(msg) end)

	newfunc:Disconnect()

end)

if suc then

	IsClient = true

end

--// Functions

pcall(function()

	local function newDrag(Frame)

		if IsClient then

			local Mouse = game.Players.LocalPlayer:GetMouse()
			local curOffset
			local isDrag = false

			Frame.InputEnded:connect(function(Input)

				if Input.UserInputType == Enum.UserInputType.MouseButton1 then

					if curOffset or isDrag then

						curOffset = nil
						isDrag = false

					end

				end

			end)

			Frame.InputBegan:connect(function(Input)

				if Input.UserInputType == Enum.UserInputType.MouseButton1 then

					if not curOffset then

						isDrag = true

						local curOffset = {0,0}
						local curMousePos = {Mouse.X,Mouse.Y}

						curOffset[1] = curMousePos[1]-Frame.AbsolutePosition.X
						curOffset[2] = curMousePos[2]-Frame.AbsolutePosition.Y

						while true do

							if not curOffset or not isDrag then break end

							Frame.Position = UDim2.new(0,Mouse.X-curOffset[1],0,Mouse.Y-curOffset[2])

							game:GetService('RunService').RenderStepped:Wait()

						end

					end

				end

			end)

		end

	end

	local function setVisible(Category,Frame)

		for i,v in pairs(Frame:GetChildren()) do

			if v:IsA('Frame') or v:IsA('ScrollingFrame') then

				v.Visible = false

			end

		end

		Category.Visible = true

	end

	--// Module

	local module = {}

	function UICreator:CreateUI(UIName,UIParent)

		if not IsClient then return end

		-- Instances:

		local PlaceHolderUI = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local Categories = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local CategorySample = Instance.new("Frame")
		local Repos = Instance.new("Frame")
		local Button = Instance.new("TextButton")
		local CategoryFrames = Instance.new("Frame")
		local ButtonSample = Instance.new("Frame")
		local Repos_2 = Instance.new("Frame")
		local Button_2 = Instance.new("TextButton")
		local LabelSample = Instance.new("Frame")
		local Repos_3 = Instance.new("Frame")
		local Label = Instance.new("TextLabel")
		local CategoryFrame = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local Notifications = Instance.new("Frame")
		local UIListLayout_3 = Instance.new("UIListLayout")
		local NotificationSample = Instance.new("Frame")
		local Background = Instance.new("Frame")
		local Notification = Instance.new("TextLabel")
		local Button_3 = Instance.new("TextButton")

		--Properties:

		PlaceHolderUI.Name = "PlaceHolderUI"
		PlaceHolderUI.Parent = UIParent
		PlaceHolderUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		PlaceHolderUI.ResetOnSpawn = false

		Frame.Parent = PlaceHolderUI
		Frame.Active = true
		Frame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.BorderSizePixel = 3
		Frame.Position = UDim2.new(0.75, 0, 0.699999988, 0)
		Frame.Selectable = true
		Frame.Size = UDim2.new(0.25, 0, 0.300000012, 0)

		Categories.Name = "Categories"
		Categories.Parent = Frame
		Categories.Active = true
		Categories.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Categories.BackgroundTransparency = 1.000
		Categories.Size = UDim2.new(1, 0, 0.100000001, 0)
		Categories.CanvasSize = UDim2.new(0, 0, 0, 0)
		Categories.ScrollBarThickness = 0

		UIListLayout.Parent = Categories
		UIListLayout.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		CategorySample.Name = "CategorySample"
		CategorySample.Parent = Frame
		CategorySample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CategorySample.BackgroundTransparency = 1.000
		CategorySample.Size = UDim2.new(0.200000003, 0, 1, 0)
		CategorySample.Visible = false

		Repos.Name = "Repos"
		Repos.Parent = CategorySample
		Repos.BackgroundColor3 = Color3.fromRGB(116, 116, 116)
		Repos.BorderSizePixel = 0
		Repos.Position = UDim2.new(0.0250000004, 0, 0.0500000007, 0)
		Repos.Size = UDim2.new(0.949999988, 0, 0.899999976, 0)

		Button.Name = "Button"
		Button.Parent = Repos
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.BackgroundTransparency = 1.000
		Button.Size = UDim2.new(1, 0, 1, 0)
		Button.Font = Enum.Font.SourceSans
		Button.Text = "Category"
		Button.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.TextScaled = true
		Button.TextSize = 14.000
		Button.TextStrokeTransparency = 0.500
		Button.TextWrapped = true

		CategoryFrames.Name = "CategoryFrames"
		CategoryFrames.Parent = Frame
		CategoryFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CategoryFrames.BackgroundTransparency = 1.000
		CategoryFrames.Position = UDim2.new(0, 0, 0.100000001, 0)
		CategoryFrames.Size = UDim2.new(1, 0, 0.899999976, 0)

		ButtonSample.Name = "ButtonSample"
		ButtonSample.Parent = Frame
		ButtonSample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonSample.BackgroundTransparency = 1.000
		ButtonSample.Size = UDim2.new(1, 0, 0.100000001, 0)
		ButtonSample.Visible = false

		Repos_2.Name = "Repos"
		Repos_2.Parent = ButtonSample
		Repos_2.BackgroundColor3 = Color3.fromRGB(116, 116, 116)
		Repos_2.BorderSizePixel = 0
		Repos_2.Position = UDim2.new(0.0250000004, 0, 0.100000001, 0)
		Repos_2.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)

		Button_2.Name = "Button"
		Button_2.Parent = Repos_2
		Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button_2.BackgroundTransparency = 1.000
		Button_2.Size = UDim2.new(1, 0, 1, 0)
		Button_2.Font = Enum.Font.SourceSans
		Button_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button_2.TextScaled = true
		Button_2.TextSize = 14.000
		Button_2.TextStrokeTransparency = 0.500
		Button_2.TextWrapped = true

		LabelSample.Name = "LabelSample"
		LabelSample.Parent = Frame
		LabelSample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LabelSample.BackgroundTransparency = 1.000
		LabelSample.Size = UDim2.new(1, 0, 0.100000001, 0)
		LabelSample.Visible = false

		Repos_3.Name = "Repos"
		Repos_3.Parent = LabelSample
		Repos_3.BackgroundColor3 = Color3.fromRGB(116, 116, 116)
		Repos_3.BackgroundTransparency = 1.000
		Repos_3.BorderSizePixel = 0
		Repos_3.Position = UDim2.new(0.0250000004, 0, 0.100000001, 0)
		Repos_3.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)

		Label.Name = "Label"
		Label.Parent = Repos_3
		Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label.BackgroundTransparency = 1.000
		Label.Size = UDim2.new(1, 0, 1, 0)
		Label.Font = Enum.Font.SourceSans
		Label.TextColor3 = Color3.fromRGB(255, 255, 255)
		Label.TextScaled = true
		Label.TextSize = 14.000
		Label.TextStrokeTransparency = 0.500
		Label.TextWrapped = true

		CategoryFrame.Name = "CategoryFrame"
		CategoryFrame.Parent = Frame
		CategoryFrame.Active = true
		CategoryFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CategoryFrame.BackgroundTransparency = 1.000
		CategoryFrame.Size = UDim2.new(1, 0, 1, 0)
		CategoryFrame.Visible = false
		CategoryFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		CategoryFrame.ScrollBarThickness = 0

		UIListLayout_2.Parent = CategoryFrame
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

		Notifications.Name = "Notifications"
		Notifications.Parent = PlaceHolderUI
		Notifications.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
		Notifications.BackgroundTransparency = 1.000
		Notifications.Size = UDim2.new(0.25, 0, 0.0299999993, 0)

		UIListLayout_3.Parent = Notifications
		UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

		NotificationSample.Name = "NotificationSample"
		NotificationSample.Parent = PlaceHolderUI
		NotificationSample.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
		NotificationSample.BackgroundTransparency = 1.000
		NotificationSample.BorderSizePixel = 0
		NotificationSample.Size = UDim2.new(1, 0, 1, 0)
		NotificationSample.Visible = false

		Background.Name = "Background"
		Background.Parent = NotificationSample
		Background.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
		Background.BorderSizePixel = 0
		Background.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
		Background.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)

		Notification.Name = "Notification"
		Notification.Parent = Background
		Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Notification.BackgroundTransparency = 1.000
		Notification.Size = UDim2.new(0.800000012, 0, 1, 0)
		Notification.Font = Enum.Font.SourceSans
		Notification.Text = "You failed to get your mother"
		Notification.TextColor3 = Color3.fromRGB(255, 255, 255)
		Notification.TextScaled = true
		Notification.TextSize = 14.000
		Notification.TextWrapped = true
		Notification.TextXAlignment = Enum.TextXAlignment.Left

		Button_3.Name = "Button"
		Button_3.Parent = Background
		Button_3.BackgroundColor3 = Color3.fromRGB(0, 31, 95)
		Button_3.BorderSizePixel = 0
		Button_3.Position = UDim2.new(0.800000012, 0, 0, 0)
		Button_3.Size = UDim2.new(0.200000003, 0, 1, 0)
		Button_3.Visible = false
		Button_3.Font = Enum.Font.SourceSans
		Button_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button_3.TextScaled = true
		Button_3.TextSize = 14.000
		Button_3.TextWrapped = true

		if IsClient then

			task.spawn(function()

				newDrag(PlaceHolderUI.Frame)

			end)

		end

		return PlaceHolderUI

	end

	function UICreator:AddCategory(UI,CategoryName,IsOpen,Layout)

		local Category = UI.Frame.CategorySample:Clone()
		Category.Repos.Button.Text = CategoryName
		Category.Name = CategoryName
		Category.Parent = UI.Frame.Categories
		Category.Visible = true
		local CategoryFrame = UI.Frame.CategoryFrame:Clone()
		CategoryFrame.Name = CategoryName
		CategoryFrame.Parent = UI.Frame.CategoryFrames

		if Layout then

			Category.LayoutOrder = Layout

		end

		if IsOpen then

			setVisible(CategoryFrame,UI.Frame.CategoryFrames)

		end

		Category.Repos.Button.MouseButton1Click:connect(function()

			setVisible(CategoryFrame,UI.Frame.CategoryFrames)

		end)

		return Category.Repos,CategoryFrame

	end

	function UICreator:AddLabel(UI,Category,LabelText,Layout)

		local Label = UI.Frame.LabelSample:Clone()
		Label.Name = LabelText
		Label.Repos.Label.Text = LabelText
		Label.Visible = true
		Label.Parent = Category

		if Layout then

			Label.LayoutOrder = Layout

		end

		return Label.Repos

	end

	function UICreator:AddButton(UI,Category,ButtonText,Layout)

		local Button = UI.Frame.ButtonSample:Clone()
		Button.Name = ButtonText
		Button.Repos.Button.Text = ButtonText
		Button.Visible = true
		Button.Parent = Category

		if Layout then

			Button.LayoutOrder = Layout

		end

		return Button.Repos

	end

	function UICreator:Notify(UI,Text,Button,Time,Sound)

		if Sound then

			if typeof(Sound) == 'number' then

				Sound = 'rbxassetid://'..Sound

			end

			if typeof(Sound) == 'string' then

				local news = Instance.new("Sound",UI)
				news.SoundId = Sound
				news:Play()

				news.Ended:connect(function()

					news:Destroy()

				end)

			end

		end

		local Notification = UI.NotificationSample:Clone()
		Notification.Background.Notification.Text = tostring(Text)

		if Button then

			Notification.Background.Button.Visible = true
			Notification.Background.Button.Text = tostring(Button)

		end

		Notification.Parent = UI.Notifications
		Notification.Visible = true

		NotificationCount += 1
		Notification.LayoutOrder = NotificationCount

		if not Time or not tonumber(Time) then Time = 10 end

		if Time then

			task.spawn(function()

				wait(Time)
				Notification:Destroy()

			end)

		end

		return Notification.Background

	end

end)

function nextInput()

	local Key

	local UISWait = UIS.InputBegan:connect(function(Input,Proc)

		if Input.KeyCode and Input.KeyCode ~= Enum.KeyCode.Unknown and not Proc then

			Key = Input.KeyCode

		end

	end)

	repeat wait() until Key

	UISWait:Disconnect()

	return Key

end

function getData(FileName,Default)

	if not isfile(FileName) then

		return Default

	end

	local Decoded = Http:JSONDecode(readfile(FileName))

	return Decoded

end

function saveData(FileName,ToSave)

	local Encoded = Http:JSONEncode(ToSave)
	writefile(FileName,Encoded)

end

if game.PlaceId == 6147702473 then

	if not shared.LegendaryScary123 then

		shared.LegendaryScary123 = true

		local FileName = "LegendaryGameomgno.txt"

		local Settings = {

			CanSave = {

				UIKeybind = "RightAlt";

			};

			AutoPickup = false;
			AutoKill = false;
			AutoChest = false;
			GodMode = false;

		}

		local savedData = getData(FileName,Settings.CanSave)
		local newSave = savedData

		for i,v in pairs(Settings.CanSave) do

			if not newSave[i] then

				newSave[i] = v

			end

		end

		Settings.CanSave = newSave

		local newUI = UICreator:CreateUI('Elementhehe',game.CoreGui)
		syn.protect_gui(newUI)

		local FarmsButton,FarmsCateg = UICreator:AddCategory(newUI,'Auto Farms',true,1)
		local SettingButton,SettingCateg = UICreator:AddCategory(newUI,'Settings',false,3)
		local ExtrasButton,ExtrasCateg = UICreator:AddCategory(newUI,"Extras",false,2)
		UICreator:AddLabel(newUI,SettingCateg,'Settings',1)
		UICreator:AddLabel(newUI,FarmsCateg,'Auto Farms',1)
		UICreator:AddLabel(newUI,ExtrasCateg,'Extras',1)
		local AutoPickup = UICreator:AddButton(newUI,FarmsCateg,'Auto Pickup',2)
		local AutoKill = UICreator:AddButton(newUI,FarmsCateg,'Auto Kill',3)
		local AutoChest = UICreator:AddButton(newUI,FarmsCateg,'Auto Chest',4)
		local KillNPCs = UICreator:AddButton(newUI,ExtrasCateg,'Kill NPCs',2)
		local KillPlayers = UICreator:AddButton(newUI,ExtrasCateg,'Kill Players',3)
		local HealPlayers = UICreator:AddButton(newUI,ExtrasCateg,'Heal Players',4)
		local GodMode = UICreator:AddButton(newUI,ExtrasCateg,'God Mode',5)
		local KeybindChange = UICreator:AddButton(newUI,SettingCateg,'Toggle UI: ???',4)
		local SaveButton = UICreator:AddButton(newUI,SettingCateg,'Save Settings',5)

		local saveDebounce = false

		function damageCharacter(Character,Damage)

			local args = {
				[1] = Character.Humanoid,
				[2] = Character.HumanoidRootPart.CFrame,
				[3] = Damage,
				[4] = 0.1,
				[5] = Character.HumanoidRootPart.CFrame.lookVector,
				[6] = "rbxassetid://5584232281",
				[7] = 0.015,
				[8] = Color3.new(0,0,0),
				[9] = "rbxassetid://5182571583",
				[10] = 0.9,
				[11] = 0.2857142857142857
			}

			game:GetService("ReplicatedStorage").SNAKEMANDMG:FireServer(unpack(args))

		end

		SaveButton.Button.MouseButton1Click:connect(function()

			if saveDebounce then return end
			saveDebounce = true
			SaveButton.Button.TextColor3 = Color3.fromRGB(255,0,0)

			saveData(FileName,Settings.CanSave)

			wait(3)

			saveDebounce = false
			SaveButton.Button.TextColor3 = Color3.fromRGB(255,255,255)

		end)

		KeybindChange.Button.Text = 'Toggle UI: '..(Settings.CanSave.UIKeybind)
		Settings.UIKeybind = Enum.KeyCode[Settings.CanSave.UIKeybind]

		KeybindChange.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.ChangingUIKeybind then

				Settings.ChangingUIKeybind = true
				KeybindChange.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

				local nextKey = nextInput()

				if nextKey then

					KeybindChange.Button.Text = 'Toggle UI: '..nextKey.Name
					Settings.CanSave.UIKeybind = nextKey.Name

				end

				KeybindChange.Button.TextColor3 = Color3.fromRGB(255,255,255)
				Settings.ChangingUIKeybind = false

			end

		end)

		if Settings.AutoKill == false then

			AutoKill.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			AutoKill.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		AutoKill.Button.MouseButton1Click:connect(function()

			if not Settings.AutoKill then

				AutoKill.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.AutoKill = true

			else

				AutoKill.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.AutoKill = false

			end

		end)

		if Settings.AutoPickup == false then

			AutoPickup.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			AutoPickup.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		AutoPickup.Button.MouseButton1Click:connect(function()

			if not Settings.AutoPickup then

				AutoPickup.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.AutoPickup = true

			else

				AutoPickup.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.AutoPickup = false

			end

		end)

		if Settings.AutoChest == false then

			AutoChest.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			AutoChest.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		AutoChest.Button.MouseButton1Click:connect(function()

			if not Settings.AutoChest then

				AutoChest.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.AutoChest = true

			else

				AutoChest.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.AutoChest = false

			end

		end)

		if Settings.GodMode == false then

			GodMode.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			GodMode.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		GodMode.Button.MouseButton1Click:connect(function()

			if not Settings.GodMode then

				GodMode.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.GodMode = true

			else

				GodMode.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.GodMode = false

			end

		end)

		KillNPCs.Button.MouseButton1Click:connect(function()

			for i,v in pairs(workspace:GetChildren()) do

				pcall(function()

					if v:FindFirstChild('Humanoid') and not game.Players:GetPlayerFromCharacter(v) then

						damageCharacter(v,1000000000000)

					end

				end)

			end

		end)

		KillPlayers.Button.MouseButton1Click:connect(function()

			for i,v in pairs(game.Players:GetPlayers()) do

				if v == Player then continue end

				pcall(function()

					damageCharacter(v.Character,1000000000000)

				end)

			end

		end)

		HealPlayers.Button.MouseButton1Click:connect(function()

			for i,v in pairs(game.Players:GetPlayers()) do

				if v == Player then continue end

				pcall(function()

					damageCharacter(v.Character,-1000000000000)

				end)

			end

		end)

		UIS.InputBegan:connect(function(Input,Proc)

			if not Proc and Input.KeyCode.Name == Settings.CanSave.UIKeybind then

				newUI.Frame.Visible = not newUI.Frame.Visible

			end

		end)

		task.spawn(function()

			while true do

				pcall(function()

					if Settings.GodMode then

						damageCharacter(Player.Character,-1000)

					end

				end)

				wait(1)

			end

		end)

		while true do

			pcall(function()

				for i,v in pairs(workspace:GetChildren()) do

					if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Handle.Anchored == false and Settings.AutoPickup then

						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)

					end

					if v.Name == "RandomChest" and v:FindFirstChild("Chest") and Settings.AutoChest then

						fireclickdetector(v.Chest.ClickDetector)

					end

					if v:FindFirstChild("Humanoid") and not (v.Humanoid.Health > 10000000000000000000000000) and not game.Players:GetPlayerFromCharacter(v) and Settings.AutoKill then

						damageCharacter(v,50000)

					end

				end

			end)

			wait()

		end

	end

elseif game.GameId == 2671916716 then

	if not shared.ElementalLoaded then

		shared.ElementalLoaded = true

		local FileName = "Elementalhahahahaha.txt"

		local Settings = {

			CanSave = {

				AutoSpin = {

					Common = false;
					Uncommon = false;
					Rare = false;
					Legendary = false;
					Exotic = false;
					Heavenly = false;

				};

				CurseTeleport = false;
				KillBricks = false;
				UIKeybind = "RightAlt";

			};

			ChangingUIKeybind = false;
			AutoSpinning = false;
			SpinFarm = false;
			LevelFarm = false;

		}

		local savedData = getData(FileName,Settings.CanSave)
		local newSave = savedData
		local killbrickdata = {}

		for i,v in pairs(workspace.Killbricks:GetChildren()) do

			if v:IsA("BasePart") then

				table.insert(killbrickdata,{v,v.CFrame})

			end

		end

		for i,v in pairs(Settings.CanSave) do

			if not newSave[i] then

				newSave[i] = v

			end

		end

		Settings.CanSave = newSave

		local newUI = UICreator:CreateUI('Elementhehe',game.CoreGui)
		syn.protect_gui(newUI)

		local AutoButton,AutoCat = UICreator:AddCategory(newUI,'Auto Spin',true,1)
		local SettingButton,SettingCateg = UICreator:AddCategory(newUI,'Settings',false,3)
		local FarmsButton,FarmsCateg = UICreator:AddCategory(newUI,"Auto Farms",false,2)
		UICreator:AddLabel(newUI,SettingCateg,'Settings',1)
		UICreator:AddLabel(newUI,FarmsCateg,'Auto Farms',1)
		local CommonBut = UICreator:AddButton(newUI,AutoCat,'Common',2)
		local UncommonBut = UICreator:AddButton(newUI,AutoCat,'Uncommon',3)
		local RareBut = UICreator:AddButton(newUI,AutoCat,'Rare',4)
		local LegendaryBut = UICreator:AddButton(newUI,AutoCat,'Legendary',6)
		local ExoticBut = UICreator:AddButton(newUI,AutoCat,'Exotic',5)
		local HeavenlyBut = UICreator:AddButton(newUI,AutoCat,'Heavenly',7)
		local ElementLabel = UICreator:AddLabel(newUI,AutoCat,'???',8)
		local SpinToggle = UICreator:AddButton(newUI,AutoCat,'Auto Spin',9)
		local SpinFarmTog = UICreator:AddButton(newUI,FarmsCateg,'Spin Farm',2)
		local LevelFarm = UICreator:AddButton(newUI,FarmsCateg,'Level Farm',3)
		local CurseNoti = UICreator:AddButton(newUI,SettingCateg,'Curse Notify',2)
		local Killbrick = UICreator:AddButton(newUI,SettingCateg,'No Killbricks',3)
		local KeybindChange = UICreator:AddButton(newUI,SettingCateg,'Toggle UI: ???',4)
		local SaveButton = UICreator:AddButton(newUI,SettingCateg,'Save Settings',5)
		UICreator:AddLabel(newUI,AutoCat,'Auto Spin',1)

		local saveDebounce = false

		SaveButton.Button.MouseButton1Click:connect(function()

			if saveDebounce then return end
			saveDebounce = true
			SaveButton.Button.TextColor3 = Color3.fromRGB(255,0,0)

			saveData(FileName,Settings.CanSave)

			wait(3)

			saveDebounce = false
			SaveButton.Button.TextColor3 = Color3.fromRGB(255,255,255)

		end)

		KeybindChange.Button.Text = 'Toggle UI: '..(Settings.CanSave.UIKeybind)
		Settings.UIKeybind = Enum.KeyCode[Settings.CanSave.UIKeybind]

		KeybindChange.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.ChangingUIKeybind then

				Settings.ChangingUIKeybind = true
				KeybindChange.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

				local nextKey = nextInput()

				if nextKey then

					KeybindChange.Button.Text = 'Toggle UI: '..nextKey.Name
					Settings.CanSave.UIKeybind = nextKey.Name

				end

				KeybindChange.Button.TextColor3 = Color3.fromRGB(255,255,255)
				Settings.ChangingUIKeybind = false

			end

		end)

		if Settings.CanSave.CurseTeleport == false then

			CurseNoti.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			CurseNoti.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		CurseNoti.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.CurseTeleport then

				CurseNoti.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.CurseTeleport = true

			else

				CurseNoti.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.CurseTeleport = false

			end

		end)

		if Settings.CanSave.KillBricks == false then

			Killbrick.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			Killbrick.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		Killbrick.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.KillBricks then

				Killbrick.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.KillBricks = true

			else

				Killbrick.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.KillBricks = false

			end

		end)

		if Settings.CanSave.AutoSpin.Common == false then

			CommonBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			CommonBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		CommonBut.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.AutoSpin.Common then

				CommonBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.AutoSpin.Common = true

			else

				CommonBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.AutoSpin.Common = false

			end

		end)

		if Settings.CanSave.AutoSpin.Uncommon == false then

			UncommonBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			UncommonBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		UncommonBut.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.AutoSpin.Uncommon then

				UncommonBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.AutoSpin.Uncommon = true

			else

				UncommonBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.AutoSpin.Uncommon = false

			end

		end)

		if Settings.CanSave.AutoSpin.Rare == false then

			RareBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			RareBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		RareBut.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.AutoSpin.Rare then

				RareBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.AutoSpin.Rare = true

			else

				RareBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.AutoSpin.Rare = false

			end

		end)

		if Settings.CanSave.AutoSpin.Exotic == false then

			ExoticBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			ExoticBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		ExoticBut.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.AutoSpin.Exotic then

				ExoticBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.AutoSpin.Exotic = true

			else

				ExoticBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.AutoSpin.Exotic = false

			end

		end)

		if Settings.CanSave.AutoSpin.Legendary == false then

			LegendaryBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			LegendaryBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		LegendaryBut.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.AutoSpin.Legendary then

				LegendaryBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.AutoSpin.Legendary = true

			else

				LegendaryBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.AutoSpin.Legendary = false

			end

		end)

		if Settings.CanSave.AutoSpin.Heavenly == false then

			HeavenlyBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			HeavenlyBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		HeavenlyBut.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.AutoSpin.Heavenly then

				HeavenlyBut.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.AutoSpin.Heavenly = true

			else

				HeavenlyBut.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.AutoSpin.Heavenly = false

			end

		end)

		if Settings.AutoSpinning == false then

			SpinToggle.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			SpinToggle.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		SpinToggle.Button.MouseButton1Click:connect(function()

			if not Settings.AutoSpinning then

				SpinToggle.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.AutoSpinning = true

			else

				SpinToggle.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.AutoSpinning = false

			end

		end)

		if Settings.SpinFarm == false then

			SpinFarmTog.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			SpinFarmTog.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

			if Settings.LevelFarm then

				LevelFarm.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.LevelFarm = false

			end

		end

		SpinFarmTog.Button.MouseButton1Click:connect(function()

			if not Settings.SpinFarm then

				SpinFarmTog.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.SpinFarm = true

				if Settings.LevelFarm then

					LevelFarm.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
					Settings.LevelFarm = false

				end

			else

				SpinFarmTog.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.SpinFarm = false

			end

		end)

		if Settings.LevelFarm == false then

			LevelFarm.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			LevelFarm.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

			if Settings.SpinFarm then

				SpinFarmTog.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.SpinFarm = false

			end

		end

		LevelFarm.Button.MouseButton1Click:connect(function()

			if not Settings.LevelFarm then

				LevelFarm.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.LevelFarm = true

				if Settings.SpinFarm then

					SpinFarmTog.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
					Settings.SpinFarm = false

				end

			else

				LevelFarm.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.LevelFarm = false

			end

		end)

		UIS.InputBegan:connect(function(Input,Proc)

			if not Proc and Input.KeyCode.Name == Settings.CanSave.UIKeybind then

				newUI.Frame.Visible = not newUI.Frame.Visible

			end

		end)

		function Respawn()

			if Player.Character and Player.Character:IsDescendantOf(workspace) then

				Player.Character.Head:Destroy()

			end

			wait(0.5)

			game:GetService("ReplicatedStorage").Events.Spawn2:InvokeServer()

		end

		function Spin()

			local Element,Rarity = game:GetService("ReplicatedStorage").Events.Spin:InvokeServer(false)

			if not Rarity or not Element then return end

			ElementLabel.Label.Text = tostring(Element)

			if not Settings.CanSave.AutoSpin[Rarity] then return end

			return true

		end

		function checkforSpin()

			local found = false

			for i,v in pairs(Settings.CanSave.AutoSpin) do

				if v == true then

					found = true

				end

			end

			return found

		end

		function UseSkill(Tool)

			if Player.Character and Player.Character:IsDescendantOf(workspace) and Tool and (Tool:IsDescendantOf(Player) or Tool:IsDescendantOf(Player.Character)) then

				local Character = Player.Character
				local Remote = game.ReplicatedStorage.Events.SpellCast
				local CFr = Character.PrimaryPart.CFrame*CFrame.new(0,0,-10)
				local LV = CFr.lookVector

				Remote:FireServer({Tool,CFr,LV,true})

				wait(0.5)

				Remote:FireServer({Tool,CFr})


			end

		end

		function getOffCD()

			local Tools = {}
			local StatusFolder = game.ReplicatedStorage.Statuses:FindFirstChild(Player.Name)

			for i,v in pairs(Player.Backpack:GetChildren()) do

				if v:IsA("Tool") then

					table.insert(Tools,v)

				end

			end

			if #Tools <= 0 then return Tools end

			local ToRet = {}

			for i,v in pairs(Tools) do

				if not StatusFolder:FindFirstChild(v.Name.."CD") then

					table.insert(ToRet,v)

				end

			end

			return ToRet

		end

		workspace.DescendantAdded:connect(function(Inst)

			if Settings.CanSave.CurseTeleport then

				if Inst:IsA("Model") and Inst.Name == "CurseOrb" then

					local Not = UICreator:Notify(newUI,"Curse Spawned","Teleport",25,654933978)

					Not.Button.MouseButton1Click:connect(function()

						if Inst and Inst:IsDescendantOf(workspace) and Inst.PrimaryPart then

							if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then

								Player.Character.HumanoidRootPart.CFrame = Inst.PrimaryPart.CFrame

							end

						end

					end)

				end

			end

		end)

		UICreator:Notify(newUI,"UI Loaded",nil,5,654933978)

		task.spawn(function()

			while true do

				local suc,er = pcall(function()

					local DataFolder = game.ReplicatedStorage.Data:FindFirstChild(Player.UserId)
					local Remote = game.ReplicatedStorage.Events.SpellCast

					if Settings.LevelFarm then

						if Player.Character and Player.Character:IsDescendantOf(workspace) then

							local offCD = getOffCD()

							if offCD and #offCD > 0 and DataFolder.ME.Value > 30 then

								for i,v in pairs(offCD) do

									if DataFolder.ME.Value > 30 then

										local CFr = Player.Character.PrimaryPart.CFrame*CFrame.new(0,0,-10)
										local Dist = CFr.Position
										local LV = CFr.lookVector

										Remote:FireServer({v,Dist,LV,true})

										wait(0.5)

										Remote:FireServer({v,Dist})

										wait(0.5)

									end

								end

							elseif DataFolder.ME.Value <= 30 or (offCD and #offCD <= 0) then

								Respawn()

							end

						end

					end

					if Settings.SpinFarm and checkforSpin() then

						if Player.Character and Player.Character:IsDescendantOf(workspace) then

							local offCD = getOffCD()

							if offCD and #offCD > 0 and DataFolder.ME.Value > 30 then

								for i,v in pairs(offCD) do

									if DataFolder.ME.Value > 30 then

										local CFr = Player.Character.PrimaryPart.CFrame*CFrame.new(0,0,-10)
										local Dist = CFr.Position
										local LV = CFr.lookVector

										Remote:FireServer({v,Dist,LV,true})

										wait(0.5)

										Remote:FireServer({v,Dist})

										wait(0.5)

									end

								end

							elseif offCD and #offCD <= 0 then

								if DataFolder then

									if DataFolder.Spins.Value > 0 then

										local obtained = false

										while wait() do

											if DataFolder.Spins.Value <= 0 then

												break

											end

											local receive = Spin()

											if receive then

												obtained = true
												break

											end

										end

										if obtained then

											Settings.SpinFarm = false
											SpinFarmTog.Button.TextColor3 = Color3.fromRGB(255,0,0)
											UICreator:Notify(newUI,"Obtained Element",nil,5,654933978)

										end

									end

								end

								Respawn()

							end

						end

					end

				end)

				repeat wait() until suc or er

			end

		end)

		while true do

			pcall(function()

				local DataFolder = game.ReplicatedStorage.Data:FindFirstChild(Player.UserId)

				if (not checkforSpin() or not DataFolder) and Settings.AutoSpinning then

					Settings.AutoSpinning = false
					SpinToggle.Button.TextColor3 = Color3.fromRGB(255,0,0)
					UICreator:Notify(newUI,"Finished Spinning",nil,5,654933978)

				end

				if DataFolder then

					if DataFolder.Spins.Value <= 0 and Settings.AutoSpinning then

						Settings.AutoSpinning = false
						SpinToggle.Button.TextColor3 = Color3.fromRGB(255,0,0)
						UICreator:Notify(newUI,"Finished Spinning",nil,5,654933978)

					end

				end

				if Settings.AutoSpinning then

					local checkElement = Spin()

					if checkElement == true then

						Settings.AutoSpinning = false
						SpinToggle.Button.TextColor3 = Color3.fromRGB(255,0,0)
						UICreator:Notify(newUI,"Finished Spinning",nil,5,654933978)

					end

				end

				if Settings.CanSave.KillBricks then

					for i,v in pairs(killbrickdata) do

						if not v[3] and v[1] then

							local newkb = v[1]:Clone()
							newkb.Parent = workspace
							newkb.CFrame = v[2]
							killbrickdata[i][3] = newkb
							v[1].Parent = game.ReplicatedStorage

						end

					end

				else

					for i,v in pairs(killbrickdata) do

						if v[3] then

							v[3]:Destroy()
							v[3] = nil
							v[1].Parent = workspace.Killbricks
							v[1].CFrame = v[2]

						end

					end

				end

			end)

			wait()

		end

	end

elseif game.PlaceId == 258258996 then

	if not shared.MinerLoaded then

		shared.MinerLoaded = true

		local FileName = "Minerhehehhuhu.txt"
		local Settings = {

			CanSave = {

				AutoButton = false;
				UIKeybind = "RightAlt";

			};

			Active = true;
			Macro = false;
			Rebirth = false;
			ButtonInterval = 1.5;
			Layouts = {

				Layout1 = {

					Enabled = true;
					Price = tonumber(1e+22);
					Loaded = false

				};

				Layout2 = {

					Enabled = true;
					Price = 0;
					Loaded = false

				};

			};
			ChangingUIKeybind = false;

		}
		local MoneyLib = require(game.ReplicatedStorage.MoneyLib)
		local savedData = getData(FileName,Settings.CanSave)
		local newSave = savedData

		for i,v in pairs(Settings.CanSave) do

			if not newSave[i] then

				newSave[i] = v

			end

		end

		Settings.CanSave = newSave

		local newUI = UICreator:CreateUI('MinerHavenheheheh',game.CoreGui)
		syn.protect_gui(newUI)

		local AutoButton,AutoCat = UICreator:AddCategory(newUI,'Automation',true,1)
		local SettingButton,SettingCateg = UICreator:AddCategory(newUI,'Settings',false,3)
		UICreator:AddLabel(newUI,SettingCateg,'Settings',1)
		local AutoButton = UICreator:AddButton(newUI,AutoCat,'Auto Press',2)
		local RebirthButton = UICreator:AddButton(newUI,AutoCat,'Auto Rebirth',3)
		local MacroButton = UICreator:AddButton(newUI,AutoCat,'Private Macro',4)
		local KeybindChange = UICreator:AddButton(newUI,SettingCateg,'Toggle UI: ???',2)
		local SaveButton = UICreator:AddButton(newUI,SettingCateg,'Save Settings',3)
		UICreator:AddLabel(newUI,AutoCat,'Automation',1)

		local saveDebounce = false

		SaveButton.Button.MouseButton1Click:connect(function()

			if saveDebounce then return end
			saveDebounce = true
			SaveButton.Button.TextColor3 = Color3.fromRGB(255,0,0)

			saveData(FileName,Settings.CanSave)

			wait(3)

			saveDebounce = false
			SaveButton.Button.TextColor3 = Color3.fromRGB(255,255,255)

		end)

		KeybindChange.Button.Text = 'Toggle UI: '..(Settings.CanSave.UIKeybind)
		Settings.UIKeybind = Enum.KeyCode[Settings.CanSave.UIKeybind]

		KeybindChange.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.ChangingUIKeybind then

				Settings.ChangingUIKeybind = true
				KeybindChange.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

				local nextKey = nextInput()

				if nextKey then

					KeybindChange.Button.Text = 'Toggle UI: '..nextKey.Name
					Settings.CanSave.UIKeybind = nextKey.Name

				end

				KeybindChange.Button.TextColor3 = Color3.fromRGB(255,255,255)
				Settings.ChangingUIKeybind = false

			end

		end)

		if Settings.CanSave.AutoButton == false then

			AutoButton.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			AutoButton.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		AutoButton.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.AutoButton then

				AutoButton.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.AutoButton = true

			else

				AutoButton.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.AutoButton = false

			end

		end)

		if Settings.Macro == false then

			MacroButton.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			MacroButton.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		MacroButton.Button.MouseButton1Click:connect(function()

			if not Settings.Macro then

				MacroButton.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.Macro = true

			else

				MacroButton.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.Macro = false

			end

		end)
		
		if Settings.Rebirth == false then

			MacroButton.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			MacroButton.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		RebirthButton.Button.MouseButton1Click:connect(function()

			if not Settings.Rebirth then

				RebirthButton.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.Rebirth = true

			else

				RebirthButton.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.Rebirth = false

			end

		end)

		UIS.InputBegan:connect(function(Input,Proc)

			if not Proc and Input.KeyCode.Name == Settings.CanSave.UIKeybind then

				newUI.Frame.Visible = not newUI.Frame.Visible

			end

		end)

		function Rebirth()

			Settings.Active = false
			Settings.Layouts.Layout1.Loaded = false
			Settings.Layouts.Layout2.Loaded = false
			game:GetService("ReplicatedStorage").Rebirth:InvokeServer(26)
			game:GetService("ReplicatedStorage").FetchInventory:InvokeServer()
			Settings.Active = true
			UICreator:Notify(newUI,"Attempted Rebirth",nil,5,654933978)

		end

		function Withdraw()

			game:GetService("ReplicatedStorage").DestroyAll:InvokeServer()
			UICreator:Notify(newUI,"Attempted Withdraw",nil,2,654933978)

		end

		function ChangeLayout(Layout,Money)

			if Layout and Settings.Layouts[Layout] and Settings.Layouts[Layout].Enabled == true and Settings.Layouts[Layout].Loaded == false then

				Settings.Active = false
				Withdraw()
				Settings.Layouts[Layout].Loaded = true
				game:GetService("ReplicatedStorage").Layouts:InvokeServer("Load",Layout)
				Settings.Active = true
				UICreator:Notify(newUI,"Attempted Layout Change",nil,2,654933978)

			end

		end

		UICreator:Notify(newUI,"UI Loaded",nil,5,654933978)

		task.spawn(function()

			while true do

				pcall(function()

					if Settings.CanSave.AutoButton then

						game:GetService("ReplicatedStorage").RemoteDrop:FireServer()

					end

				end)

				wait(Settings.ButtonInterval)

			end

		end)

		while true do

			pcall(function()

				if not (Settings.Rebirth or Settings.Macro) or not Settings.Active then return end

				local CurrentCash = game.ReplicatedStorage.MoneyMirror[Player.Name].Value
				local RebornPrice = MoneyLib.RebornPrice(Player)

				if Settings.Rebirth then

					if CurrentCash >= RebornPrice then

						Rebirth()
						return

					end

				end

				if Settings.Macro then

					for i,v in pairs(Settings.Layouts) do

						if v.Enabled == true and v.Loaded == false and v.Price <= CurrentCash then

							ChangeLayout(i)
							break

						end

					end

				end

			end)

			wait(0.5)

		end

	end

elseif game.GameId == 3405618667 then

	if not shared.SonicLoaded then

		shared.SonicLoaded = true

		local FileName = 'SonicSpeedSimUhOhhhee.txt'

		local leaderstats = Player:FindFirstChild('leaderstats',true)
		local Rebirths = leaderstats:FindFirstChild('Rebirths',true)
		local Level = leaderstats:FindFirstChild('Level',true)

		local Remotes = {

			['RebirthAttempt'] = game:GetService("ReplicatedStorage").Knit.Services.LevelingService.RF.AttemptRebirth;
			['PickupCurrency'] = game:GetService("ReplicatedStorage").Knit.Services.WorldCurrencyService.RE.PickupCurrency;
			['Step'] = game:GetService("ReplicatedStorage").Knit.Services.CharacterService.RE.UpdateCharacterState;
			['Teleport'] = game:GetService("ReplicatedStorage").Knit.Services.ZoneService.RF.RequestTeleportToZone;
			['CompleteObby'] = game:GetService("ReplicatedStorage").Knit.Services.ZoneService.RF.CompleteZoneObby;
			['LoadZone'] = game:GetService("ReplicatedStorage").Knit.Services.ZoneService.RE.ZoneLoaded;
			['ExitObby'] = game:GetService("ReplicatedStorage").Knit.Services.ZoneService.RF.ExitObby;

		}

		local Settings = {

			CanSave = {


				AutoRebirth = false;
				AutoPickup = false;
				AutoStep = false;
				UIKeybind = "RightAlt";

			};

			ChangingUIKeybind = false;
			AutoFarm = false;

		}

		local savedData = getData(FileName,Settings.CanSave)
		local newSave = savedData

		for i,v in pairs(Settings.CanSave) do

			if not newSave[i] then

				newSave[i] = v

			end

		end

		Settings.CanSave = newSave

		local newUI = UICreator:CreateUI('SonicSpeed',game.CoreGui)
		syn.protect_gui(newUI)

		local AutoButton,AutoCateg = UICreator:AddCategory(newUI,'Auto Farm',true,1)
		local SettingButton,SettingCateg = UICreator:AddCategory(newUI,'Settings',false,2)
		UICreator:AddLabel(newUI,SettingCateg,'Settings',1)
		local KeybindChange = UICreator:AddButton(newUI,SettingCateg,'Toggle UI: ???',2)
		local SaveButton = UICreator:AddButton(newUI,SettingCateg,'Save Settings',3)
		UICreator:AddLabel(newUI,AutoCateg,'Sonic Speed Auto Farm',1)
		local AutoPickup = UICreator:AddButton(newUI,AutoCateg,'Auto Pickup',2)
		local AutoRebirth = UICreator:AddButton(newUI,AutoCateg,'Auto Rebirth',3)
		local AutoStep = UICreator:AddButton(newUI,AutoCateg,'Auto Step',4)
		local AutoFarm = UICreator:AddButton(newUI,AutoCateg,'Auto Farm',5)
		local UnlockAllMaps = UICreator:AddButton(newUI,AutoCateg,'Unlock Maps',6)

		local saveDebounce = false

		local unlocking = false

		function UnlockMaps()
			if unlocking then return end

			unlocking = true

			pcall(function()

				Remotes.Teleport:InvokeServer("Lost Valley Obby","Green Hill Exit")
				Remotes.LoadZone:FireServer("Lost Valley Obby")
				Remotes.CompleteObby:InvokeServer()
				Remotes.LoadZone:FireServer("Lost Valley")
				Remotes.Teleport:InvokeServer("Emerald Hill Obby","Lost Valley Exit")
				Remotes.LoadZone:FireServer("Emerald Hill Obby")
				Remotes.CompleteObby:InvokeServer()
				Remotes.LoadZone:FireServer("Emerald Hill")
				Remotes.Teleport:InvokeServer("Snow Valley Obby","Emerald Hill Exit")
				Remotes.LoadZone:FireServer("Snow Valley Obby")
				Remotes.CompleteObby:InvokeServer()
				Remotes.LoadZone:FireServer("Snow Valley")
				Remotes.Teleport:InvokeServer("Hill Top Zone Obby","Snow Valley Exit")
				Remotes.LoadZone:FireServer("Hill Top Zone Obby")
				Remotes.CompleteObby:InvokeServer()
				Remotes.LoadZone:FireServer("Hill Top Zone")
				Remotes.Teleport:InvokeServer("Green Hill")
				Remotes.LoadZone:FireServer("Green Hill")

			end)

			unlocking = false

		end

		UnlockAllMaps.Button.MouseButton1Click:connect(function()

			UnlockMaps()

		end)

		SaveButton.Button.MouseButton1Click:connect(function()

			if saveDebounce then return end
			saveDebounce = true
			SaveButton.Button.TextColor3 = Color3.fromRGB(255,0,0)

			saveData(FileName,Settings.CanSave)

			wait(3)

			saveDebounce = false
			SaveButton.Button.TextColor3 = Color3.fromRGB(255,255,255)

		end)

		KeybindChange.Button.Text = 'Toggle UI: '..(Settings.CanSave.UIKeybind)
		Settings.UIKeybind = Enum.KeyCode[Settings.CanSave.UIKeybind]

		KeybindChange.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.ChangingUIKeybind then

				Settings.ChangingUIKeybind = true
				KeybindChange.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

				local nextKey = nextInput()

				if nextKey then

					KeybindChange.Button.Text = 'Toggle UI: '..nextKey.Name
					Settings.CanSave.UIKeybind = nextKey.Name

				end

				KeybindChange.Button.TextColor3 = Color3.fromRGB(255,255,255)
				Settings.ChangingUIKeybind = false

			end

		end)

		if Settings.AutoFarm == false then

			AutoFarm.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			AutoFarm.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		AutoFarm.Button.MouseButton1Click:connect(function()

			if not Settings.AutoFarm then

				AutoFarm.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.AutoFarm = true

			else

				AutoFarm.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.AutoFarm = false

			end

		end)

		if Settings.CanSave.AutoPickup == false then

			AutoPickup.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			AutoPickup.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		AutoPickup.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.AutoPickup then

				AutoPickup.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.AutoPickup = true

			else

				AutoPickup.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.AutoPickup = false

			end

		end)

		if Settings.CanSave.AutoRebirth == false then

			AutoRebirth.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			AutoRebirth.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		AutoRebirth.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.AutoRebirth then

				AutoRebirth.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.AutoRebirth = true

			else

				AutoRebirth.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.AutoRebirth = false

			end

		end)

		if Settings.CanSave.AutoStep == false then

			AutoStep.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			AutoStep.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		AutoStep.Button.MouseButton1Click:connect(function()

			if not Settings.CanSave.AutoStep then

				AutoStep.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CanSave.AutoStep = true

			else

				AutoStep.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CanSave.AutoStep = false

			end

		end)

		UIS.InputBegan:connect(function(Input,Proc)

			if not Proc and Input.KeyCode.Name == Settings.CanSave.UIKeybind then

				newUI.Enabled = not newUI.Enabled

			end

		end)

		task.spawn(function()

			local farmStep = 0
			local noStep = false
			local AreaSteps = {

				"Lost Valley",
				"Emerald Hill",
				"Snow Valley",
				"Hill Top Zone"

			}
			local curArea = 1

			while true do

				pcall(function()

					if Settings.CanSave.AutoStep then

						local curCFr = Player.Character:GetPrimaryPartCFrame()
						Remotes.Step:FireServer({['Character'] = Player.Character; ['CFrame'] = curCFr*CFrame.new(0,0,-500); ['IsRunning'] = true;})

					end

					if Settings.AutoFarm and not noStep then

						if farmStep >= 6 then

							task.spawn(function()

								noStep = true

								local toTP = Remotes.Teleport:InvokeServer(AreaSteps[curArea])

								if not toTP then

									UnlockMaps()

								end

								Remotes.LoadZone:FireServer(AreaSteps[curArea])
								wait(3)
								Remotes.Teleport:InvokeServer("Green Hill")
								Remotes.LoadZone:FireServer("Green Hill")

								noStep = false
								curArea += 1

								if curArea > #AreaSteps then

									curArea = 1

								end

							end)

							farmStep = 0

						else

							farmStep += 1

						end

					end

				end)

				wait(0.5)

			end

		end)

		while true do

			if Settings.CanSave.AutoPickup then

				for i,v in pairs(game.Workspace.Map.Objects:GetChildren()) do

					if v:IsA('Model') and v:FindFirstChild('base') then

						local Key = v.Name
						Remotes['PickupCurrency']:FireServer(Key)

						v:Destroy()

					end

				end

			end

			if Settings.CanSave.AutoRebirth then

				if (50+(25*Rebirths.Value)-Level.Value) <= 0 then

					Remotes['RebirthAttempt']:InvokeServer()

				end

			end

			game:GetService('RunService').RenderStepped:Wait()

		end

	end

end
