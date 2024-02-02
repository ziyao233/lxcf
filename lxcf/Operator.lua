--[[
--	lxcf
--	/lxcf/Operator.lua
--	This file is distributed under MIT License.
--	Copyright (c) 2024 Yao Zi. All rights reserved.
--]]

local ops = {
	add = {
		operands	= 2,
	},
	sub = {
		operands	= 2,
	},
	mul = {
		operands	= 2,
	},
	div = {
		operands	= 2,
	},
	mod = {
		operands	= 2,
	},
	mov = {
		operands	= 1,
	},
	load = {
		operands	= 1,
	},
	store = {
		operands	= 1,
	},
	eq = {
		operands	= 2,
	},
	lt = {
		operands	= 2,
	},
	gt = {
		operands	= 2,
	},
	le = {
		operands	= 2,
	},
	ge = {
		operands	= 2,
	},
};

return { ops = ops };
