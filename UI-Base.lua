--[[https://chatgpt.com/c/68097614-825c-8004-a2b2-b5baf8775313]]--

-- BaseUI.lua
local BaseUI = {}
BaseUI.__index = BaseUI

-- Constructor
function BaseUI.new(screenGuiName)
	local self = setmetatable({}, BaseUI)

	local Players = game:GetService("Players")
	local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

	-- Create or get existing ScreenGui
	local screenGui = playerGui:FindFirstChild(screenGuiName)
	if not screenGui then
		screenGui = Instance.new("ScreenGui")
		screenGui.Name = screenGuiName
		screenGui.ResetOnSpawn = false
		screenGui.Parent = playerGui
	end

	self.ScreenGui = screenGui
	self.Visible = false

	return self
end

-- Show the UI
function BaseUI:Show()
	if self.ScreenGui then
		self.ScreenGui.Enabled = true
		self.Visible = true
	end
end

-- Hide the UI
function BaseUI:Hide()
	if self.ScreenGui then
		self.ScreenGui.Enabled = false
		self.Visible = false
	end
end

-- Toggle visibility
function BaseUI:Toggle()
	if self.Visible then
		self:Hide()
	else
		self:Show()
	end
end

-- Clean up
function BaseUI:Destroy()
	if self.ScreenGui then
		self.ScreenGui:Destroy()
	end
end

return BaseUI
