--[[
--	lxcf
--	/lxcf/Value.lua
--	This file is distributed under MIT License.
--	Copyright (c) 2024 Yao Zi. All rights reserved.
--]]

local classValue	= {
				__name		= "lxcf.Value",
				shortType	= 'v',
			  };
classValue.__index	= classValue;

classValue.__tostring = function(self)
	return ("%s: %d"):format(self.__name, self.id);
end

classValue.new = function(self)
	return setmetatable({}, self );
end

classValue.type = function(self)
	return self.__name;
end

return { Value = classValue, };
