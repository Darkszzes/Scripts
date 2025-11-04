repeat game:GetService("RunService").Heartbeat:Wait() until game:GetService("Players").LocalPlayer and game:GetService("CoreGui") and not game:GetService("CoreGui"):FindFirstChild("MobileUserInterface")
local LocalPlayerServiceReference,RunServiceGameReference,CoreGuiServiceReference=game:GetService("Players").LocalPlayer,game:GetService("RunService"),game:GetService("CoreGui")
local MobileUserInterfaceMainContainer,MobileToggleButtonImageElement,MobileToggleButtonCornerRadius=Instance.new("ScreenGui"),Instance.new("ImageButton"),Instance.new("UICorner")
local FieldOfViewCircleContainerFrame,FieldOfViewCircleCornerRadius,FieldOfViewCircleStrokeElement=Instance.new("Frame"),Instance.new("UICorner"),Instance.new("UIStroke")
MobileUserInterfaceMainContainer.Name,MobileUserInterfaceMainContainer.Parent,MobileUserInterfaceMainContainer.ZIndexBehavior,MobileUserInterfaceMainContainer.IgnoreGuiInset="MobileUserInterface",CoreGuiServiceReference,Enum.ZIndexBehavior.Sibling,true
MobileToggleButtonImageElement.Parent,MobileToggleButtonImageElement.BackgroundColor3,MobileToggleButtonImageElement.BackgroundTransparency,MobileToggleButtonImageElement.Position,MobileToggleButtonImageElement.Size,MobileToggleButtonImageElement.Image,MobileToggleButtonImageElement.Draggable,MobileToggleButtonImageElement.Transparency=MobileUserInterfaceMainContainer,Color3.fromRGB(105,105,105),0.8,UDim2.new(0.9,6,0.1,22),UDim2.new(0,65,0,65),"rbxassetid://8271386457",true,1
MobileToggleButtonCornerRadius.CornerRadius,MobileToggleButtonCornerRadius.Parent=UDim.new(0,200),MobileToggleButtonImageElement
FieldOfViewCircleContainerFrame.Parent,FieldOfViewCircleContainerFrame.AnchorPoint,FieldOfViewCircleContainerFrame.Position,FieldOfViewCircleContainerFrame.Size,FieldOfViewCircleContainerFrame.BackgroundColor3,FieldOfViewCircleContainerFrame.BackgroundTransparency,FieldOfViewCircleContainerFrame.Visible=MobileUserInterfaceMainContainer,Vector2.new(0.5,0.5),UDim2.new(0.5,0,0.5,0),UDim2.new(0,180,0,180),Color3.fromRGB(255,255,255),1,false
FieldOfViewCircleCornerRadius.CornerRadius,FieldOfViewCircleCornerRadius.Parent=UDim.new(1,0),FieldOfViewCircleContainerFrame
FieldOfViewCircleStrokeElement.Color,FieldOfViewCircleStrokeElement.Thickness,FieldOfViewCircleStrokeElement.Transparency,FieldOfViewCircleStrokeElement.Parent=Color3.fromRGB(255,255,255),1,0,FieldOfViewCircleContainerFrame

local FluentLibraryLoadSuccessStatus,FluentLibraryMainInterfaceObject=pcall(function()return loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()end)
if not FluentLibraryLoadSuccessStatus or not FluentLibraryMainInterfaceObject then MobileUserInterfaceMainContainer:Destroy()script:Destroy()return end
local PrimaryDashboardMainWindowInstance=FluentLibraryMainInterfaceObject:CreateWindow({Title="Ryder Hub",SubTitle="Rio Roleplay",TabWidth=160,Size=UDim2.fromOffset(550,330),Acrylic=false,Theme="Darker",MinimizeKey=Enum.KeyCode.LeftControl})
local GeneralTabMainContainerReference=PrimaryDashboardMainWindowInstance:AddTab({Title="General",Icon="globe"})
local AuthorInformationSectionReference,WorldFunctionalitiesSectionReference,AimbotFunctionalitiesSectionReference,PlayersFunctionalitiesSectionReference,ServerFunctionalitiesSectionReference,OptionalFunctionalitiesSectionReference=GeneralTabMainContainerReference:AddSection("Author Information"),GeneralTabMainContainerReference:AddSection("World Functions"),GeneralTabMainContainerReference:AddSection("Aimbot Functions"),GeneralTabMainContainerReference:AddSection("Players Functions"),GeneralTabMainContainerReference:AddSection("Server Functions"),GeneralTabMainContainerReference:AddSection("Optional Functions")
local CurrentAimbotModeSelectedValue,AimbotUniversalFunctionalityEnabledState,CurrentAimbotTargetBodyPartReference,AntiAfkUniversalFunctionalityEnabledState,LastThreeDimensionalLoopExecutionTimestampValue,ShowPlayerLinesUniversalFunctionalityEnabledState,PlayerLineESPStorageTable,PlayerCircleESPStorageTable,PlayerTextESPStorageTable,NoClipUniversalFunctionalityEnabledState,IgnoreTeamModeUniversalFunctionalityEnabledState,StoreDeadItemsUniversalFunctionalityEnabledState,CurrentAimbotPriorityModeSelectedValue,IgnoreFriendsModeUniversalFunctionalityEnabledState,CurrentJobIdValue="Humanized",false,nil,true,0,false,{},{},{},false,false,true,"Head",true,tostring(game.JobId)
local MobileToggleButtonConnectionReference=MobileToggleButtonImageElement.MouseButton1Click:Connect(function()PrimaryDashboardMainWindowInstance.Root.Visible=not PrimaryDashboardMainWindowInstance.Root.Visible end)
PrimaryDashboardMainWindowInstance:Minimize()

AuthorInformationSectionReference:AddParagraph({Title="Update 1.9.0",Content="New Options, Bug Fixes, Performance Improvements, and General Enhancements!"})
AuthorInformationSectionReference:AddButton({Title="Copy Discord Link",Callback=function()setclipboard("https://discord.gg/Bmvdw7mezT")end})

ServerFunctionalitiesSectionReference:AddParagraph({Title="Your Current JobId:",Content=CurrentJobIdValue})
ServerFunctionalitiesSectionReference:AddButton({Title="Copy JobId Code",Callback=function()setclipboard(CurrentJobIdValue)end})

local JobIdInputControlElementReference=ServerFunctionalitiesSectionReference:AddInput("JobIdInput",{Title="JobId code here",Default="RyderHub",Placeholder="RyderHub",Numeric=false,Finished=false})
JobIdInputControlElementReference:OnChanged(function(InputValueParameter)InputJobIdValue=InputValueParameter end)

local JoinJobIdServerButtonControlElementReference=ServerFunctionalitiesSectionReference:AddButton({Title="Join JobId Server",Callback=function()
    if not InputJobIdValue or InputJobIdValue=="" or InputJobIdValue=="RyderHub" then return end
    if InputJobIdValue==CurrentJobIdValue then return end
    local TeleportServiceReference=game:GetService("TeleportService")local PlaceIdValue=game.PlaceId
    pcall(function()TeleportServiceReference:TeleportToPlaceInstance(PlaceIdValue,InputJobIdValue,LocalPlayerServiceReference)end)
end})

local NoClipUniversalToggleControlElementReference=WorldFunctionalitiesSectionReference:AddToggle("NoClipUniversalToggle",{Title="NoClip Fe Universal",Default=false})
NoClipUniversalToggleControlElementReference:OnChanged(function(ToggleStateValueParameter)NoClipUniversalFunctionalityEnabledState=ToggleStateValueParameter end)

local AntiAfkUniversalToggleControlElementReference=OptionalFunctionalitiesSectionReference:AddToggle("AntiAfkUniversalToggle",{Title="Anti Afk Universal",Default=true})
AntiAfkUniversalToggleControlElementReference:OnChanged(function(ToggleStateValueParameter)AntiAfkUniversalFunctionalityEnabledState=ToggleStateValueParameter end)

local StoreDeadItemsUniversalToggleControlElementReference=OptionalFunctionalitiesSectionReference:AddToggle("StoreDeadItemsUniversalToggle",{Title="Store Dead Items",Default=true})
StoreDeadItemsUniversalToggleControlElementReference:OnChanged(function(ToggleStateValueParameter)StoreDeadItemsUniversalFunctionalityEnabledState=ToggleStateValueParameter end)

local AimbotModeDropdownControlElementReference=AimbotFunctionalitiesSectionReference:AddDropdown("AimbotModeDropdown",{Title="Aimbot Mode",Values={"Humanized","Maximum"},Default=1})
AimbotModeDropdownControlElementReference:OnChanged(function(SelectedModeValueParameter)CurrentAimbotModeSelectedValue=SelectedModeValueParameter end)

local AimbotPriorityModeDropdownControlElementReference=AimbotFunctionalitiesSectionReference:AddDropdown("AimbotPriorityModeDropdown",{Title="Aimbot Priority Mode",Values={"Head","Torso"},Default=1})
AimbotPriorityModeDropdownControlElementReference:OnChanged(function(SelectedPriorityModeValueParameter)CurrentAimbotPriorityModeSelectedValue=SelectedPriorityModeValueParameter end)

local IgnoreFriendsModeUniversalToggleControlElementReference=AimbotFunctionalitiesSectionReference:AddToggle("IgnoreFriendsModeUniversalToggle",{Title="Ignore Friends Mode",Default=true})
IgnoreFriendsModeUniversalToggleControlElementReference:OnChanged(function(ToggleStateValueParameter)IgnoreFriendsModeUniversalFunctionalityEnabledState=ToggleStateValueParameter end)

local IgnoreTeamModeUniversalToggleControlElementReference=AimbotFunctionalitiesSectionReference:AddToggle("IgnoreTeamModeUniversalToggle",{Title="Ignore Team Mode",Default=false})
IgnoreTeamModeUniversalToggleControlElementReference:OnChanged(function(ToggleStateValueParameter)IgnoreTeamModeUniversalFunctionalityEnabledState=ToggleStateValueParameter end)

local AimbotUniversalToggleControlElementReference=AimbotFunctionalitiesSectionReference:AddToggle("AimbotUniversalToggle",{Title="Aimbot Universal",Default=false})
AimbotUniversalToggleControlElementReference:OnChanged(function(ToggleStateValueParameter)AimbotUniversalFunctionalityEnabledState=ToggleStateValueParameter end)

local ShowPlayerLinesUniversalToggleControlElementReference=PlayersFunctionalitiesSectionReference:AddToggle("ShowPlayerLinesUniversalToggle",{Title="Esp Players Universal",Default=false})
ShowPlayerLinesUniversalToggleControlElementReference:OnChanged(function(ToggleStateValueParameter)ShowPlayerLinesUniversalFunctionalityEnabledState=ToggleStateValueParameter end)

local StealingInteractionUniversalButtonControlElementReference=PlayersFunctionalitiesSectionReference:AddButton({Title="Stealing Interaction Universal",Callback=function()
    local LocalCharacterModelReference=LocalPlayerServiceReference.Character if not LocalCharacterModelReference then return end
    local LocalHumanoidRootPartReference=LocalCharacterModelReference:FindFirstChild("HumanoidRootPart")if not LocalHumanoidRootPartReference then return end
    local LocalHumanoidInstanceReference=LocalCharacterModelReference:FindFirstChildOfClass("Humanoid")if not LocalHumanoidInstanceReference or LocalHumanoidInstanceReference.Health<=0 then return end
    for _,PlayerInstanceElementReference in pairs(game:GetService("Players"):GetPlayers())do if PlayerInstanceElementReference==LocalPlayerServiceReference then continue end
        local TargetCharacterModelReference=PlayerInstanceElementReference.Character if not TargetCharacterModelReference then continue end
        local TargetHumanoidRootPartReference=TargetCharacterModelReference:FindFirstChild("HumanoidRootPart")if not TargetHumanoidRootPartReference then continue end
        local TargetHumanoidInstanceReference=TargetCharacterModelReference:FindFirstChildOfClass("Humanoid")if not TargetHumanoidInstanceReference or TargetHumanoidInstanceReference.Health>0 then continue end
        local DistanceToTargetCalculatedValue=(TargetHumanoidRootPartReference.Position-LocalHumanoidRootPartReference.Position).Magnitude if DistanceToTargetCalculatedValue>8 then continue end
        local TextChatServiceReference=game:GetService("TextChatService")if not TextChatServiceReference then return end
        local TextChannelsReference=TextChatServiceReference:FindFirstChild("TextChannels")if not TextChannelsReference then return end
        local RBXGeneralChannelReference=TextChannelsReference:FindFirstChild("RBXGeneral")if not RBXGeneralChannelReference then return end
        pcall(function()RBXGeneralChannelReference:SendAsync("/revistar "..PlayerInstanceElementReference.Name)end)break
    end
end})

local RenderSteppedConnectionForTwoDimensionalLogicReference=RunServiceGameReference.RenderStepped:Connect(function(DeltaTimeFrameValueParameter)
    if ShowPlayerLinesUniversalFunctionalityEnabledState then
        local CurrentCameraInstanceReference=workspace.CurrentCamera if not CurrentCameraInstanceReference then return end
        local ScreenBottomCenterPositionVectorValue=Vector2.new(CurrentCameraInstanceReference.ViewportSize.X/2,CurrentCameraInstanceReference.ViewportSize.Y)
        for PlayerUserIdKey,ExistingLineDrawingObjectReference in pairs(PlayerLineESPStorageTable)do local PlayerFoundBooleanState=false
            for _,PlayerInstanceElementReference in pairs(game:GetService("Players"):GetPlayers())do if PlayerInstanceElementReference.UserId==PlayerUserIdKey then PlayerFoundBooleanState=true break end end
            if not PlayerFoundBooleanState then if ExistingLineDrawingObjectReference then ExistingLineDrawingObjectReference:Remove()end PlayerLineESPStorageTable[PlayerUserIdKey]=nil end
        end
        for PlayerUserIdKey,ExistingCircleDrawingObjectReference in pairs(PlayerCircleESPStorageTable)do local PlayerFoundBooleanState=false
            for _,PlayerInstanceElementReference in pairs(game:GetService("Players"):GetPlayers())do if PlayerInstanceElementReference.UserId==PlayerUserIdKey then PlayerFoundBooleanState=true break end end
            if not PlayerFoundBooleanState then if ExistingCircleDrawingObjectReference then ExistingCircleDrawingObjectReference:Remove()end PlayerCircleESPStorageTable[PlayerUserIdKey]=nil end
        end
        for PlayerUserIdKey,ExistingTextDrawingObjectReference in pairs(PlayerTextESPStorageTable)do local PlayerFoundBooleanState=false
            for _,PlayerInstanceElementReference in pairs(game:GetService("Players"):GetPlayers())do if PlayerInstanceElementReference.UserId==PlayerUserIdKey then PlayerFoundBooleanState=true break end end
            if not PlayerFoundBooleanState then if ExistingTextDrawingObjectReference then ExistingTextDrawingObjectReference:Remove()end PlayerTextESPStorageTable[PlayerUserIdKey]=nil end
        end
        for _,PlayerInstanceElementReference in pairs(game:GetService("Players"):GetPlayers())do if PlayerInstanceElementReference==LocalPlayerServiceReference then continue end
            local PlayerUserIdValue=PlayerInstanceElementReference.UserId if not PlayerUserIdValue then continue end
            local TargetCharacterModelReference=PlayerInstanceElementReference.Character
            if not TargetCharacterModelReference then local ExistingLineDrawingObjectReference=PlayerLineESPStorageTable[PlayerUserIdValue]if ExistingLineDrawingObjectReference then ExistingLineDrawingObjectReference:Remove()PlayerLineESPStorageTable[PlayerUserIdValue]=nil end local ExistingCircleDrawingObjectReference=PlayerCircleESPStorageTable[PlayerUserIdValue]if ExistingCircleDrawingObjectReference then ExistingCircleDrawingObjectReference:Remove()PlayerCircleESPStorageTable[PlayerUserIdValue]=nil end local ExistingTextDrawingObjectReference=PlayerTextESPStorageTable[PlayerUserIdValue]if ExistingTextDrawingObjectReference then ExistingTextDrawingObjectReference:Remove()PlayerTextESPStorageTable[PlayerUserIdValue]=nil end continue end
            local TargetHumanoidRootPartReference=TargetCharacterModelReference:FindFirstChild("HumanoidRootPart")
            local TargetTorsoPartReference=TargetCharacterModelReference:FindFirstChild("UpperTorso")or TargetCharacterModelReference:FindFirstChild("Torso")
            local TargetHumanoidInstanceReference=TargetCharacterModelReference:FindFirstChildOfClass("Humanoid")
            if not TargetTorsoPartReference or not TargetHumanoidRootPartReference then local ExistingLineDrawingObjectReference=PlayerLineESPStorageTable[PlayerUserIdValue]if ExistingLineDrawingObjectReference then ExistingLineDrawingObjectReference:Remove()PlayerLineESPStorageTable[PlayerUserIdValue]=nil end local ExistingCircleDrawingObjectReference=PlayerCircleESPStorageTable[PlayerUserIdValue]if ExistingCircleDrawingObjectReference then ExistingCircleDrawingObjectReference:Remove()PlayerCircleESPStorageTable[PlayerUserIdValue]=nil end local ExistingTextDrawingObjectReference=PlayerTextESPStorageTable[PlayerUserIdValue]if ExistingTextDrawingObjectReference then ExistingTextDrawingObjectReference:Remove()PlayerTextESPStorageTable[PlayerUserIdValue]=nil end continue end
            local LocalCharacterModelReference,DistanceToTargetCalculatedValue=LocalPlayerServiceReference.Character,0
            if LocalCharacterModelReference then local LocalHumanoidRootPartReference=LocalCharacterModelReference:FindFirstChild("HumanoidRootPart")if LocalHumanoidRootPartReference then DistanceToTargetCalculatedValue=(TargetHumanoidRootPartReference.Position-LocalHumanoidRootPartReference.Position).Magnitude if DistanceToTargetCalculatedValue>500 then local ExistingLineDrawingObjectReference=PlayerLineESPStorageTable[PlayerUserIdValue]if ExistingLineDrawingObjectReference then ExistingLineDrawingObjectReference:Remove()PlayerLineESPStorageTable[PlayerUserIdValue]=nil end local ExistingCircleDrawingObjectReference=PlayerCircleESPStorageTable[PlayerUserIdValue]if ExistingCircleDrawingObjectReference then ExistingCircleDrawingObjectReference:Remove()PlayerCircleESPStorageTable[PlayerUserIdValue]=nil end local ExistingTextDrawingObjectReference=PlayerTextESPStorageTable[PlayerUserIdValue]if ExistingTextDrawingObjectReference then ExistingTextDrawingObjectReference:Remove()PlayerTextESPStorageTable[PlayerUserIdValue]=nil end continue end end end
            local TargetTorsoScreenPositionVectorValue,IsTargetOnScreenBooleanState=CurrentCameraInstanceReference:WorldToViewportPoint(TargetTorsoPartReference.Position)
            if not IsTargetOnScreenBooleanState then local ExistingLineDrawingObjectReference=PlayerLineESPStorageTable[PlayerUserIdValue]if ExistingLineDrawingObjectReference then ExistingLineDrawingObjectReference:Remove()PlayerLineESPStorageTable[PlayerUserIdValue]=nil end local ExistingCircleDrawingObjectReference=PlayerCircleESPStorageTable[PlayerUserIdValue]if ExistingCircleDrawingObjectReference then ExistingCircleDrawingObjectReference:Remove()PlayerCircleESPStorageTable[PlayerUserIdValue]=nil end local ExistingTextDrawingObjectReference=PlayerTextESPStorageTable[PlayerUserIdValue]if ExistingTextDrawingObjectReference then ExistingTextDrawingObjectReference:Remove()PlayerTextESPStorageTable[PlayerUserIdValue]=nil end continue end
            local ESPColorValue,CurrentHealthValue=Color3.new(0,0.5,1),100
            if TargetHumanoidInstanceReference then CurrentHealthValue=math.floor(TargetHumanoidInstanceReference.Health)
                if TargetHumanoidInstanceReference.Health<=0 then ESPColorValue=Color3.new(1,1,1)
                elseif IgnoreFriendsModeUniversalFunctionalityEnabledState and LocalPlayerServiceReference:IsFriendsWith(PlayerInstanceElementReference.UserId)then ESPColorValue=Color3.new(0,1,0)
                elseif IgnoreTeamModeUniversalFunctionalityEnabledState and PlayerInstanceElementReference.Team and PlayerInstanceElementReference.Team==LocalPlayerServiceReference.Team then ESPColorValue=Color3.new(0,1,0)
                elseif not IgnoreFriendsModeUniversalFunctionalityEnabledState or not LocalPlayerServiceReference:IsFriendsWith(PlayerInstanceElementReference.UserId)then local EquippedToolInstanceReference=TargetCharacterModelReference:FindFirstChildOfClass("Tool")if EquippedToolInstanceReference and EquippedToolInstanceReference.Name~="Celular"then ESPColorValue=Color3.new(1,0,0)end end
            end
            local CurrentLineDrawingObjectReference=PlayerLineESPStorageTable[PlayerUserIdValue]
            if not CurrentLineDrawingObjectReference then CurrentLineDrawingObjectReference=Drawing.new("Line")CurrentLineDrawingObjectReference.Thickness,CurrentLineDrawingObjectReference.Transparency,CurrentLineDrawingObjectReference.Visible=1,1,true PlayerLineESPStorageTable[PlayerUserIdValue]=CurrentLineDrawingObjectReference end
            CurrentLineDrawingObjectReference.Color,CurrentLineDrawingObjectReference.From,CurrentLineDrawingObjectReference.To=ESPColorValue,ScreenBottomCenterPositionVectorValue,Vector2.new(TargetTorsoScreenPositionVectorValue.X,TargetTorsoScreenPositionVectorValue.Y)
            local CurrentCircleDrawingObjectReference=PlayerCircleESPStorageTable[PlayerUserIdValue]
            if not CurrentCircleDrawingObjectReference then CurrentCircleDrawingObjectReference=Drawing.new("Circle")CurrentCircleDrawingObjectReference.Radius,CurrentCircleDrawingObjectReference.Thickness,CurrentCircleDrawingObjectReference.Filled,CurrentCircleDrawingObjectReference.Transparency,CurrentCircleDrawingObjectReference.Visible=2,1,false,1,true PlayerCircleESPStorageTable[PlayerUserIdValue]=CurrentCircleDrawingObjectReference end
            CurrentCircleDrawingObjectReference.Color,CurrentCircleDrawingObjectReference.Position=ESPColorValue,Vector2.new(TargetTorsoScreenPositionVectorValue.X,TargetTorsoScreenPositionVectorValue.Y)
            local CurrentTextDrawingObjectReference=PlayerTextESPStorageTable[PlayerUserIdValue]
            if not CurrentTextDrawingObjectReference then CurrentTextDrawingObjectReference=Drawing.new("Text")CurrentTextDrawingObjectReference.Size,CurrentTextDrawingObjectReference.Color,CurrentTextDrawingObjectReference.Center,CurrentTextDrawingObjectReference.Outline,CurrentTextDrawingObjectReference.Transparency,CurrentTextDrawingObjectReference.Visible=12,Color3.new(1,1,1),true,true,1,true PlayerTextESPStorageTable[PlayerUserIdValue]=CurrentTextDrawingObjectReference end
            CurrentTextDrawingObjectReference.Text,CurrentTextDrawingObjectReference.Position="["..CurrentHealthValue.."HP]["..math.floor(DistanceToTargetCalculatedValue).."M]",Vector2.new(TargetTorsoScreenPositionVectorValue.X,TargetTorsoScreenPositionVectorValue.Y+10)
        end
    else for PlayerUserIdKey,ExistingLineDrawingObjectReference in pairs(PlayerLineESPStorageTable)do if ExistingLineDrawingObjectReference then ExistingLineDrawingObjectReference:Remove()end PlayerLineESPStorageTable[PlayerUserIdKey]=nil end for PlayerUserIdKey,ExistingCircleDrawingObjectReference in pairs(PlayerCircleESPStorageTable)do if ExistingCircleDrawingObjectReference then ExistingCircleDrawingObjectReference:Remove()end PlayerCircleESPStorageTable[PlayerUserIdKey]=nil end for PlayerUserIdKey,ExistingTextDrawingObjectReference in pairs(PlayerTextESPStorageTable)do if ExistingTextDrawingObjectReference then ExistingTextDrawingObjectReference:Remove()end PlayerTextESPStorageTable[PlayerUserIdKey]=nil end end
    if not AimbotUniversalFunctionalityEnabledState then FieldOfViewCircleContainerFrame.Visible,CurrentAimbotTargetBodyPartReference=false,nil return end FieldOfViewCircleContainerFrame.Visible=true
    local LocalCharacterModelReference=LocalPlayerServiceReference.Character if not LocalCharacterModelReference then CurrentAimbotTargetBodyPartReference,FieldOfViewCircleStrokeElement.Color=nil,Color3.fromRGB(255,255,255)return end
    local LocalHumanoidInstanceReference=LocalCharacterModelReference:FindFirstChildOfClass("Humanoid")if not LocalHumanoidInstanceReference then CurrentAimbotTargetBodyPartReference,FieldOfViewCircleStrokeElement.Color=nil,Color3.fromRGB(255,255,255)return end
    if LocalHumanoidInstanceReference.Sit then CurrentAimbotTargetBodyPartReference,FieldOfViewCircleStrokeElement.Color=nil,Color3.fromRGB(255,255,255)return end
    local EquippedToolInstanceReference=LocalCharacterModelReference:FindFirstChildOfClass("Tool")if not EquippedToolInstanceReference or EquippedToolInstanceReference.Name=="Celular"then CurrentAimbotTargetBodyPartReference,FieldOfViewCircleStrokeElement.Color=nil,Color3.fromRGB(255,255,255)return end
    local CurrentCameraInstanceReference=workspace.CurrentCamera if not CurrentCameraInstanceReference then return end
    local MouseLocationVectorValue,FieldOfViewRadiusNumericValue,ClosestTargetDistanceCalculatedValue,ClosestTargetCharacterInstanceReference,ClosestTargetBodyPartInstanceReference=CurrentCameraInstanceReference.ViewportSize/2,100,math.huge,nil,nil
    for _,PlayerInstanceElementReference in pairs(game:GetService("Players"):GetPlayers())do if PlayerInstanceElementReference==LocalPlayerServiceReference then continue end
        if IgnoreFriendsModeUniversalFunctionalityEnabledState and LocalPlayerServiceReference:IsFriendsWith(PlayerInstanceElementReference.UserId)then continue end
        if IgnoreTeamModeUniversalFunctionalityEnabledState and PlayerInstanceElementReference.Team and PlayerInstanceElementReference.Team==LocalPlayerServiceReference.Team then continue end
        local TargetCharacterModelReference=PlayerInstanceElementReference.Character if not TargetCharacterModelReference then continue end
        local TargetHumanoidRootPartReference=TargetCharacterModelReference:FindFirstChild("HumanoidRootPart")if not TargetHumanoidRootPartReference then continue end
        local TargetHumanoidInstanceReference=TargetCharacterModelReference:FindFirstChildOfClass("Humanoid")if not TargetHumanoidInstanceReference or TargetHumanoidInstanceReference.Health<=0 or TargetHumanoidInstanceReference.Sit then continue end
        local LocalHumanoidRootPartReference=LocalCharacterModelReference:FindFirstChild("HumanoidRootPart")if not LocalHumanoidRootPartReference then continue end
        local DistanceToTargetCalculatedValue=(TargetHumanoidRootPartReference.Position-LocalHumanoidRootPartReference.Position).Magnitude if DistanceToTargetCalculatedValue>300 then continue end
        local TargetHeadPartReference,TargetTorsoPartReference=TargetCharacterModelReference:FindFirstChild("Head"),TargetCharacterModelReference:FindFirstChild("UpperTorso")or TargetCharacterModelReference:FindFirstChild("Torso")
        local PriorityBodyPartReference=nil
        if CurrentAimbotPriorityModeSelectedValue=="Head"then PriorityBodyPartReference=TargetHeadPartReference or TargetTorsoPartReference
        elseif CurrentAimbotPriorityModeSelectedValue=="Torso"then PriorityBodyPartReference=TargetTorsoPartReference or TargetHeadPartReference end
        if not PriorityBodyPartReference then continue end
        local RaycastOriginPositionValue,RaycastDirectionVectorValue=CurrentCameraInstanceReference.CFrame.Position,(PriorityBodyPartReference.Position-CurrentCameraInstanceReference.CFrame.Position).Unit*DistanceToTargetCalculatedValue
        local RaycastParametersInstanceReference=RaycastParams.new()RaycastParametersInstanceReference.FilterDescendantsInstances,RaycastParametersInstanceReference.FilterType={LocalCharacterModelReference,TargetCharacterModelReference},Enum.RaycastFilterType.Exclude
        if workspace:Raycast(RaycastOriginPositionValue,RaycastDirectionVectorValue,RaycastParametersInstanceReference)then continue end
        local ScreenPositionVectorValue,IsOnScreenBooleanValue=CurrentCameraInstanceReference:WorldToViewportPoint(PriorityBodyPartReference.Position)if not IsOnScreenBooleanValue then continue end
        local DistanceFromCenterCalculatedValue=(Vector2.new(ScreenPositionVectorValue.X,ScreenPositionVectorValue.Y)-MouseLocationVectorValue).Magnitude if DistanceFromCenterCalculatedValue>FieldOfViewRadiusNumericValue then continue end
        if DistanceFromCenterCalculatedValue<ClosestTargetDistanceCalculatedValue then ClosestTargetDistanceCalculatedValue,ClosestTargetCharacterInstanceReference,ClosestTargetBodyPartInstanceReference=DistanceFromCenterCalculatedValue,TargetCharacterModelReference,PriorityBodyPartReference end
    end
    if not ClosestTargetCharacterInstanceReference then FieldOfViewCircleStrokeElement.Color,CurrentAimbotTargetBodyPartReference=Color3.fromRGB(255,255,255),nil return end
    FieldOfViewCircleStrokeElement.Color,CurrentAimbotTargetBodyPartReference=Color3.fromRGB(255,0,0),ClosestTargetBodyPartInstanceReference if not CurrentAimbotTargetBodyPartReference then return end
    local TargetPositionVectorValue=CurrentAimbotTargetBodyPartReference.Position if not TargetPositionVectorValue then return end
    local CameraLookVectorValue,DirectionToTargetVectorValue=CurrentCameraInstanceReference.CFrame.LookVector,(TargetPositionVectorValue-CurrentCameraInstanceReference.CFrame.Position).Unit
    local TargetHumanoidForStateCheckReference,IsTargetInAirBooleanState=ClosestTargetCharacterInstanceReference:FindFirstChildOfClass("Humanoid"),false
    if TargetHumanoidForStateCheckReference then local CurrentStateEnumValue=TargetHumanoidForStateCheckReference:GetState()if CurrentStateEnumValue==Enum.HumanoidStateType.Freefall or CurrentStateEnumValue==Enum.HumanoidStateType.Jumping or CurrentStateEnumValue==Enum.HumanoidStateType.Flying then IsTargetInAirBooleanState=true end end
    if CurrentAimbotModeSelectedValue=="Maximum"or IsTargetInAirBooleanState then CurrentCameraInstanceReference.CFrame=CFrame.new(CurrentCameraInstanceReference.CFrame.Position,TargetPositionVectorValue)return end
    if CurrentAimbotModeSelectedValue=="Humanized"then local RandomSmoothnessCalculatedValue=math.random(45,55)/100 local SmoothedDirectionVectorValue=CameraLookVectorValue:Lerp(DirectionToTargetVectorValue,RandomSmoothnessCalculatedValue)CurrentCameraInstanceReference.CFrame=CFrame.new(CurrentCameraInstanceReference.CFrame.Position,CurrentCameraInstanceReference.CFrame.Position+SmoothedDirectionVectorValue)return end
end)

local HeartbeatConnectionForThreeDimensionalLogicReference=RunServiceGameReference.Heartbeat:Connect(function(DeltaTimeFrameValueParameter)
    local PlayerGuiReference=LocalPlayerServiceReference:FindFirstChild("PlayerGui")if PlayerGuiReference then local ButtonsContainerReference=PlayerGuiReference:FindFirstChild("ButtonsContainer")if ButtonsContainerReference then local WeaponReloadButtonReference=ButtonsContainerReference:FindFirstChild("Weapon reload")local WeaponFireButtonReference=ButtonsContainerReference:FindFirstChild("Weapon fire")local RolasButtonReference=ButtonsContainerReference:FindFirstChild("Rolas")local FacaAtacarButtonReference=ButtonsContainerReference:FindFirstChild("Faca atacar")local StaminaButtonReference=ButtonsContainerReference:FindFirstChild("Stamina")if WeaponReloadButtonReference then WeaponReloadButtonReference.Position,WeaponReloadButtonReference.Size=UDim2.new(0.945,0,0.473,0),UDim2.new(0,80,0,80)end if WeaponFireButtonReference then WeaponFireButtonReference.Position,WeaponFireButtonReference.Size=UDim2.new(0.85,0,0.75,0),UDim2.new(0,80,0,80)end if FacaAtacarButtonReference then FacaAtacarButtonReference.Position,FacaAtacarButtonReference.Size=UDim2.new(0.85,0,0.75,0),UDim2.new(0,80,0,80)end for _,FrameInstanceReference in pairs(ButtonsContainerReference:GetChildren())do if FrameInstanceReference==WeaponReloadButtonReference or FrameInstanceReference==WeaponFireButtonReference or FrameInstanceReference==RolasButtonReference or FrameInstanceReference==FacaAtacarButtonReference or FrameInstanceReference==StaminaButtonReference then continue end if FrameInstanceReference:IsA("GuiObject")then FrameInstanceReference.Visible=false end end end end
    if os.clock()-LastThreeDimensionalLoopExecutionTimestampValue<1/15 then return end LastThreeDimensionalLoopExecutionTimestampValue=os.clock()
    if AntiAfkUniversalFunctionalityEnabledState then local VirtualInputManagerServiceReference=game:GetService("VirtualInputManager")VirtualInputManagerServiceReference:SendMouseButtonEvent(-100,-100,0,true,game,0)VirtualInputManagerServiceReference:SendMouseButtonEvent(-100,-100,0,false,game,0)end
    if NoClipUniversalFunctionalityEnabledState then local LocalCharacterModelReference=LocalPlayerServiceReference.Character if LocalCharacterModelReference then for _,PartInstanceReference in pairs(LocalCharacterModelReference:GetDescendants())do if PartInstanceReference:IsA("BasePart")and PartInstanceReference.Name~="HumanoidRootPart"then PartInstanceReference.CanCollide=false end end end end
    if StoreDeadItemsUniversalFunctionalityEnabledState then
        local LocalCharacterModelReference=LocalPlayerServiceReference.Character if not LocalCharacterModelReference then return end
        local LocalHumanoidInstanceReference=LocalCharacterModelReference:FindFirstChildOfClass("Humanoid")if not LocalHumanoidInstanceReference then return end
        if LocalHumanoidInstanceReference.Health>0 then return end
        local EquippedToolInstanceReference=LocalCharacterModelReference:FindFirstChildOfClass("Tool")if EquippedToolInstanceReference and EquippedToolInstanceReference.Name~="Celular"then LocalHumanoidInstanceReference:UnequipTools()end
        local LocalPlayerBackpackReference=LocalPlayerServiceReference:FindFirstChild("Backpack")if not LocalPlayerBackpackReference then return end
        local ReplicatedStorageReference=game:GetService("ReplicatedStorage")if not ReplicatedStorageReference then return end
        local xReplicatedStorageReference=ReplicatedStorageReference:FindFirstChild("xReplicatedStorage")if not xReplicatedStorageReference then return end
        local EventosReference=xReplicatedStorageReference:FindFirstChild("Eventos")if not EventosReference then return end
        local CofreRemoteReference=EventosReference:FindFirstChild("Cofre")if not CofreRemoteReference then return end
        for _,ToolInstanceReference in pairs(LocalPlayerBackpackReference:GetChildren())do
            if not ToolInstanceReference:IsA("Tool")or ToolInstanceReference.Name=="Celular"then continue end
            local ToolNameValue=ToolInstanceReference.Name if not ToolNameValue or ToolNameValue==""then continue end
            pcall(function()CofreRemoteReference:InvokeServer("Guardar",ToolNameValue)end)
        end
    end
end)

PrimaryDashboardMainWindowInstance.Root.Destroying:Connect(function()
    if RenderSteppedConnectionForTwoDimensionalLogicReference then RenderSteppedConnectionForTwoDimensionalLogicReference:Disconnect()end
    if HeartbeatConnectionForThreeDimensionalLogicReference then HeartbeatConnectionForThreeDimensionalLogicReference:Disconnect()end
    if MobileToggleButtonConnectionReference then MobileToggleButtonConnectionReference:Disconnect()end
    for PlayerUserIdKey,ExistingLineDrawingObjectReference in pairs(PlayerLineESPStorageTable)do if ExistingLineDrawingObjectReference then ExistingLineDrawingObjectReference:Remove()end PlayerLineESPStorageTable[PlayerUserIdKey]=nil end
    for PlayerUserIdKey,ExistingCircleDrawingObjectReference in pairs(PlayerCircleESPStorageTable)do if ExistingCircleDrawingObjectReference then ExistingCircleDrawingObjectReference:Remove()end PlayerCircleESPStorageTable[PlayerUserIdKey]=nil end
    for PlayerUserIdKey,ExistingTextDrawingObjectReference in pairs(PlayerTextESPStorageTable)do if ExistingTextDrawingObjectReference then ExistingTextDrawingObjectReference:Remove()end PlayerTextESPStorageTable[PlayerUserIdKey]=nil end
    MobileUserInterfaceMainContainer:Destroy()script:Destroy()
end)

PrimaryDashboardMainWindowInstance:SelectTab(1)
