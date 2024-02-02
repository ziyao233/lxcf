--[[
--	lxcf
--	/lxcf/Value.lua
--	This file is distributed under MIT License.
--	Copyright (c) 2024 Yao Zi. All rights reserved.
--]]

local classValue	= {};
classValue.__index	= classConstant;
classValue.__name	= "lxcf.Value";
classValue.shortType	= 'v';

classValue.new = function(self)
	return { { }, self };
end

classValue.type = function(self)
	return self.__name;
end

return { Value = classValue, };
