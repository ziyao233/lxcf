--[[
--	lxcf
--	/lxcf/Constant.lua
--	This file is distributed under MIT License.
--	Copyright (c) 2024 Yao Zi. All rights reserved.
--]]

local modValue		= require "lxcf.Value";

local classConstant	= modValue.Value:new();
classConstant.__index	= classConstant;
classConstant.__name	= "lxcf.Constant";
classConstant.shortType	= 'c';

classConstant.new = function(self, id, value)
	return setmetatable({
				value	= value,
				id	= id,
			    }, self);
end

return { Constant = classConstant };
