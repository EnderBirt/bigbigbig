-- hehe hub

repeat wait() until game:IsLoaded()

local Player = game.Players.LocalPlayer
local UICreator = {}

local IsClient = false
local UIS = game:GetService('UserInputService')
local Http = game:GetService('HttpService')

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

if game.GameId == 3405618667 then

	if not _G.SonicLoaded then

		_G.SonicLoaded = true

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
			
			pcall(function()
			
				if unlocking then return end

				unlocking = true

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

				unlocking = false
				
			end)

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
