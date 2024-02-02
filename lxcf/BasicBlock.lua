--[[
--	lxcf
--	/lxcf/BasicBlock.lua
--	This file is distributed under MIT License.
--	Copyright (c) 2024 Yao Zi. All rights reserved.
--]]

local table		= require "table";

local modOp		= require "lxcf.Operator";

local classBasicBlock	= {};
classBasicBlock.__index	= classBasicBlock;
classBasicBlock.__name	= "lxcf.BasicBlock";

classBasicBlock.new = function(self)
	return setmetatable({
				instructions = {},
			    }, self);
end

local ops = modOp.ops;
local function
validateInstruction(op, dst, src1, src2)
	if not ops[op]
	then
		error("Invalid instruction");
	end
	return;
end

classBasicBlock.append = function(self, op, dst, src1, src2)
	validateInstruction(op, dst, src1, src2);
	table.insert(self.instructions, { op, dst, src1, src2 });
	return self;
end

local iterator = function(instructions, i)
	if not instructions[i + 1]
	then
		return nil;
	else
		return i + 1, table.unpack(instructions[i + 1]);
	end
end

classBasicBlock.__pairs = function(self)
	return iterator, self.instructions, 0;
end

return {
	BasicBlock = classBasicBlock,
      };
