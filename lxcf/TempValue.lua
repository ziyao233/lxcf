--[[
--	lxcf
--	/lxcf/TempValue.lua
--	This file is distributed under MIT License.
--	Copyright (c) 2024 Yao Zi. All rights reserved.
--]]

local modValue		= require "lxcf.Value";

local classTempValue		= modValue.Value:new();
classTempValue.__index		= classTempValue;
classTempValue.__name		= "lxcf.TempValue";
classTempValue.shortType	= 't';

classTempValue.new = function(self, id)
	return setmetatable({
				id	= id,
			    }, self);
end

return { TempValue = classTempValue };
