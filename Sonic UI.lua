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
		local BoxSample = Instance.new("Frame")
		local Repos_4 = Instance.new("Frame")
		local Box = Instance.new("TextBox")
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
		CategoryFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		CategoryFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CategoryFrame.BackgroundTransparency = 1.000
		CategoryFrame.Size = UDim2.new(1, 0, 1, 0)
		CategoryFrame.Visible = false
		CategoryFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		CategoryFrame.ScrollBarThickness = 0

		UIListLayout_2.Parent = CategoryFrame
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

		BoxSample.Name = "BoxSample"
		BoxSample.Parent = Frame
		BoxSample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		BoxSample.BackgroundTransparency = 1.000
		BoxSample.Size = UDim2.new(1, 0, 0.100000001, 0)
		BoxSample.Visible = false

		Repos_4.Name = "Repos"
		Repos_4.Parent = BoxSample
		Repos_4.BackgroundColor3 = Color3.fromRGB(116, 116, 116)
		Repos_4.BorderSizePixel = 0
		Repos_4.Position = UDim2.new(0.0250000004, 0, 0.100000001, 0)
		Repos_4.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)

		Box.Name = "Box"
		Box.Parent = Repos_4
		Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Box.BackgroundTransparency = 1.000
		Box.Size = UDim2.new(1, 0, 1, 0)
		Box.Font = Enum.Font.SourceSans
		Box.TextColor3 = Color3.fromRGB(255, 255, 255)
		Box.TextSize = 14.000
		Box.TextStrokeTransparency = 0.500
		Box.TextWrapped = true
		Box.TextScaled = true

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

	function UICreator:AddBox(UI,Category,BoxText,Layout)

		local Box = UI.Frame.BoxSample:Clone()
		Box.Name = BoxText
		Box.Repos.Box.Text = ""
		Box.Repos.Box.PlaceholderText = BoxText
		Box.Visible = true
		Box.Parent = Category

		if Layout then

			Box.LayoutOrder = Layout

		end

		return Box.Repos

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
				ButtonInterval = 0.2;
				Layouts = {

					["Layout3"] = {

						Enabled = false;
						Price = 0;
						Loaded = false;
						Next = nil;

					};

					["Layout2"] = {

						Enabled = false;
						Price = 0;
						Loaded = false;
						Next = nil;

					};

					["Layout1"] = {

						Enabled = false;
						Price = 0;
						Loaded = false;
						Next = nil;


					};

				};

			};

			NoTP = false;
			CrateTP = false;
			CurrentCrate = nil;
			Active = true;
			Macro = false;
			Rebirth = false;
			ChangingUIKeybind = false;
			CurrentLoad = "";

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
		local MacroCatBut,MacroCat = UICreator:AddCategory(newUI,'Macro',false,2)
		UICreator:AddLabel(newUI,SettingCateg,'Settings',1)
		UICreator:AddLabel(newUI,MacroCat,'Macro',1)
		local LayoutButtons = {

			["Layout1"] = {

				["Label"] = UICreator:AddLabel(newUI,MacroCat,"Layout1",2);
				["PriceBox"] = UICreator:AddBox(newUI,MacroCat,"Price",3);
				["PriceButton"] = UICreator:AddButton(newUI,MacroCat,"Set Price: ???",4);
				["ButtonLimitBox"] = UICreator:AddBox(newUI,MacroCat,"Button Ore Limit",5);
				["ButtonLimitButton"] = UICreator:AddButton(newUI,MacroCat,"Set Button Limit",6);
				["NextBox"] = UICreator:AddBox(newUI,MacroCat,"Layout Order",7);
				["NextButton"] = UICreator:AddButton(newUI,MacroCat,"Set Next Layout",8);
				["Enabled"] = UICreator:AddButton(newUI,MacroCat,"Enable Layout1",9);

			};

			["Layout2"] = {

				["Label"] = UICreator:AddLabel(newUI,MacroCat,"Layout2",10);
				["PriceBox"] = UICreator:AddBox(newUI,MacroCat,"Price",11);
				["PriceButton"] = UICreator:AddButton(newUI,MacroCat,"Set Price: ???",12);
				["ButtonLimitBox"] = UICreator:AddBox(newUI,MacroCat,"Button Ore Limit",13);
				["ButtonLimitButton"] = UICreator:AddButton(newUI,MacroCat,"Set Button Limit",14);
				["NextBox"] = UICreator:AddBox(newUI,MacroCat,"Layout Order",15);
				["NextButton"] = UICreator:AddButton(newUI,MacroCat,"Set Next Layout",16);
				["Enabled"] = UICreator:AddButton(newUI,MacroCat,"Enable Layout1",17);

			};

			["Layout3"] = {

				["Label"] = UICreator:AddLabel(newUI,MacroCat,"Layout3",18);
				["PriceBox"] = UICreator:AddBox(newUI,MacroCat,"Price",19);
				["PriceButton"] = UICreator:AddButton(newUI,MacroCat,"Set Price: ???",20);
				["ButtonLimitBox"] = UICreator:AddBox(newUI,MacroCat,"Button Ore Limit",21);
				["ButtonLimitButton"] = UICreator:AddButton(newUI,MacroCat,"Set Button Limit",22);
				["NextBox"] = UICreator:AddBox(newUI,MacroCat,"Layout Order",23);
				["NextButton"] = UICreator:AddButton(newUI,MacroCat,"Set Next Layout",24);
				["Enabled"] = UICreator:AddButton(newUI,MacroCat,"Enable Layout1",25);

			};

		}
		local AutoButton = UICreator:AddButton(newUI,AutoCat,'Auto Press',2)
		local RebirthButton = UICreator:AddButton(newUI,AutoCat,'Auto Rebirth',3)
		local MacroButton = UICreator:AddButton(newUI,AutoCat,'Private Macro',4)
		local CrateButton = UICreator:AddButton(newUI,AutoCat,'Crate Pickup',5)
		local KeybindChange = UICreator:AddButton(newUI,SettingCateg,'Toggle UI: ???',2)
		local SaveButton = UICreator:AddButton(newUI,SettingCateg,'Save Settings',3)
		local KillButton = UICreator:AddButton(newUI,SettingCateg,"Kill Script",4)
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

		if Settings.CrateTP == false then

			CrateButton.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			CrateButton.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

		end

		CrateButton.Button.MouseButton1Click:connect(function()

			if not Settings.CrateTP then

				CrateButton.Button.TextColor3 = Color3.fromRGB(0, 255, 0)
				Settings.CrateTP = true

			else

				CrateButton.Button.TextColor3 = Color3.fromRGB(255, 0, 0)
				Settings.CrateTP = false

			end

		end)

		if Settings.Rebirth == false then

			RebirthButton.Button.TextColor3 = Color3.fromRGB(255, 0, 0)

		else

			RebirthButton.Button.TextColor3 = Color3.fromRGB(0, 255, 0)

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
		
		KillButton.Button.MouseButton1Click:connect(function()
			
			if newUI then newUI:Destroy() end
			Settings.Killed = true
			shared.MinerLoaded = false
			
		end)

		for i,v in pairs(LayoutButtons) do

			local SavedSettings = Settings.CanSave.Layouts[i]
			if not SavedSettings then continue end
			Settings.CanSave.Layouts[i].Loaded = false
			v.PriceBox.Box.Text = SavedSettings.Price
			v.PriceButton.Button.Text = "Set Price: "..SavedSettings.Price
			v.ButtonLimitBox.Box.Text = (SavedSettings.ButtonOreLimit or "")
			v.ButtonLimitButton.Button.Text = "Set Button Limit: "..(SavedSettings.ButtonOreLimit or "inf")
			if SavedSettings.Enabled then
				v.Enabled.Button.TextColor3 = Color3.fromRGB(255,0,0)
				v.Enabled.Button.Text = "Disable "..i
			else
				v.Enabled.Button.TextColor3 = Color3.fromRGB(0,255,0)
				v.Enabled.Button.Text = "Enable "..i
			end
			if SavedSettings.Next then
				v.NextBox.Box.Text = SavedSettings.Next
			end
			v.Enabled.Button.MouseButton1Click:connect(function()

				Settings.CanSave.Layouts[i].Enabled = not Settings.CanSave.Layouts[i].Enabled
				SavedSettings = Settings.CanSave.Layouts[i]
				if SavedSettings.Enabled then
					v.Enabled.Button.TextColor3 = Color3.fromRGB(255,0,0)
					v.Enabled.Button.Text = "Disable "..i
				else
					v.Enabled.Button.TextColor3 = Color3.fromRGB(0,255,0)
					v.Enabled.Button.Text = "Enable "..i
				end

			end)
			v.PriceButton.Button.MouseButton1Click:connect(function()

				SavedSettings = Settings.CanSave.Layouts[i]
				local newPrice = tonumber(v.PriceBox.Box.Text)
				if newPrice then

					Settings.CanSave.Layouts[i].Price = newPrice
					v.PriceBox.Box.Text = "Set to "..newPrice

				end

			end)
			v.PriceBox.Box:GetPropertyChangedSignal("Text"):connect(function()

				local curpr = tonumber(v.PriceBox.Box.Text)
				if curpr then

					local newmoney = MoneyLib.HandleMoney(curpr)
					v.PriceButton.Button.Text = "Set Price: "..newmoney

				end

			end)
			v.ButtonLimitButton.Button.MouseButton1Click:connect(function()

				SavedSettings = Settings.CanSave.Layouts[i]
				local newamt = tonumber(v.ButtonLimitBox.Box.Text)
				if newamt then

					Settings.CanSave.Layouts[i].ButtonOreLimit = newamt
					v.ButtonLimitBox.Box.Text = "Set to "..newamt

				else

					Settings.CanSave.Layouts[i].ButtonOreLimit = nil
					v.ButtonLimitBox.Box.Text = "Set to inf"

				end

			end)
			v.NextButton.Button.MouseButton1Click:connect(function()

				SavedSettings = Settings.CanSave.Layouts[i]
				local newlay = v.NextBox.Box.Text
				if Settings.CanSave.Layouts[newlay] and Settings.CanSave.Layouts[newlay].Next ~= i and newlay ~= i then

					Settings.CanSave.Layouts[i].Next = newlay
					v.NextBox.Box.Text = "Set to "..newlay

				end

			end)

		end

		UIS.InputBegan:connect(function(Input,Proc)

			if not Proc and Input.KeyCode.Name == Settings.CanSave.UIKeybind then

				newUI.Frame.Visible = not newUI.Frame.Visible

			end

		end)

		function returnToBase()

			local PlayerTycoon = Player.PlayerTycoon.Value
			local ActiveTycoon = Player.ActiveTycoon.Value
			if PlayerTycoon ~= ActiveTycoon then

				while true do

					ActiveTycoon = Player.ActiveTycoon.Value
					if PlayerTycoon == ActiveTycoon then break end
					if Player.Character and Player.Character:IsDescendantOf(workspace) and Player.Character:FindFirstChild("HumanoidRootPart") then

						Player.Character.HumanoidRootPart.CFrame = CFrame.new(PlayerTycoon.Base.Position+Vector3.new(0,(PlayerTycoon.Base.Size.Y/2)+2,0))

					end
					wait()

				end

			end

		end

		function Rebirth()

			Settings.NoTP = true
			returnToBase()
			Settings.Active = false
			for i,v in pairs(Settings.CanSave.Layouts) do
				if Settings.CanSave.Layouts[i].Loaded then
					Settings.CanSave.Layouts[i].Loaded = false
				end
			end
			Settings.CurrentLoad = ""
			game:GetService("ReplicatedStorage").Rebirth:InvokeServer(26)
			game:GetService("ReplicatedStorage").FetchInventory:InvokeServer()
			Settings.Active = true
			UICreator:Notify(newUI,"Attempted Rebirth",nil,5,654933978)
			Settings.NoTP = false

		end

		function Withdraw()

			Settings.NoTP = true
			returnToBase()
			local returned = game:GetService("ReplicatedStorage").DestroyAll:InvokeServer()
			Settings.NoTP = false
			if not returned then

				UICreator:Notify(newUI,"Failed Withdraw",nil,2,654933978)
				return

			else

				UICreator:Notify(newUI,"Withdraw Success",nil,2,654933978)
				Settings.CurrentLoad = ""
				return true

			end

		end

		function ChangeLayout(Layout,Money)

			if Layout and Settings.CanSave.Layouts[Layout] and Settings.CanSave.Layouts[Layout].Enabled == true and Settings.CanSave.Layouts[Layout].Loaded == false then
				Settings.NoTP = true
				returnToBase()
				Settings.Active = false
				local success = Withdraw()
				if success then
					for i,v in pairs(Settings.CanSave.Layouts) do

						if v['Loaded'] then

							v.Loaded = false

						end

					end
					Settings.CanSave.Layouts[Layout].Loaded = true
					game:GetService("ReplicatedStorage").Layouts:InvokeServer("Load",Layout)
					Settings.CurrentLoad = Layout
				end
				Settings.NoTP = false
				Settings.Active = true
				UICreator:Notify(newUI,"Attempted to Load "..Layout,nil,2,654933978)

			end

		end

		UICreator:Notify(newUI,"UI Loaded",nil,5,654933978)

		task.spawn(function()

			while true do
				if Settings.Killed then break end

				pcall(function()

					local Limit
					local CurLayout = Settings.Layouts[Settings.CurrentLoad]

					if CurLayout then

						if CurLayout.ButtonOreLimit and tonumber(CurLayout.ButtonOreLimit) then

							Limit = math.abs(CurLayout.ButtonOreLimit)

						end

					end

					if Player.ActiveTycoon.Value == Player.PlayerTycoon.Value then

						if Settings.CanSave.AutoButton then

							local OreCount = game.ReplicatedStorage.PlayerData[Player.PlayerTycoon.Value.Name].DropCount.Value
							if Limit and OreCount > Limit then return end

							game:GetService("ReplicatedStorage").RemoteDrop:FireServer()

						end

					end

				end)

				wait(Settings.CanSave.ButtonInterval)

			end

		end)
		
		local paster = {}

		while true do
			if Settings.Killed then break end

			local suc,er = pcall(function()

				if not Settings.Active then return end

				local CurrentCash = game.ReplicatedStorage.MoneyMirror[Player.Name].Value
				local RebornPrice = MoneyLib.RebornPrice(Player)

				if Settings.Rebirth then

					if CurrentCash >= RebornPrice then

						Rebirth()
						return

					end

				end

				if Settings.Macro then

					local curLoad = Settings.CanSave.Layouts[Settings.CurrentLoad]

					if not curLoad then

						for i,v in pairs(Settings.CanSave.Layouts) do

							if v.Enabled == true and v.Loaded == false and v.Price <= CurrentCash then

								ChangeLayout(i)
								break

							end

						end

					elseif curLoad['Next'] then

						local Next = Settings.CanSave.Layouts[curLoad.Next]
						if Next then

							if Next.Enabled == true and Next.Loaded == false and Next.Price <= CurrentCash then

								ChangeLayout(curLoad.Next)

							end

						end

					end

				end

				if Settings.CrateTP and not Settings.NoTP then

					local Character = Player.Character
					if Character and Character:IsDescendantOf(workspace) and Character:FindFirstChild('HumanoidRootPart') then
						if Settings.CurrentCrate and Settings.CurrentCrate:IsDescendantOf(workspace) then

							Character.HumanoidRootPart.CFrame = CFrame.new(Settings.CurrentCrate.Position+Vector3.new(0,Settings.CurrentCrate.Size/2,0))

						else

							for i,Crate in pairs(workspace:GetChildren()) do

								if Crate:FindFirstChild('Open') and Crate:FindFirstChild('TouchInterest') and Crate:FindFirstChild('Decal') then

									Settings.CurrentCrate = Crate
									break

								end

							end

						end
					end

				end

			end)
			
			if not suc and not table.find(paster,er) then warn(er) end

			wait(0.5)

		end

	end

end
