--[[
--	lxcf
--	/lxcf/DAG.lua
--	This file is distributed under MIT License.
--	Copyright (c) 2024 Yao Zi. All rights reserved.
--]]

local string		= require "string";

local modOps		= require "lxcf.Operator";

local classDAG		= {};
classDAG.__index	= classDAG;

local ops = modOps.ops;
local function nodeHash(v)
	return ("%s:%d"):format(v.shortType, v.id);
end

local function getNode(dag, nodeList, value)
	local hash = nodeHash(value);
	if nodeList[hash]
	then
		return nodeList[hash];
	else
		table.insert(dag, value);
		nodeList[hash] = value;
		return value;
	end
end

local function updateNode(nodeList, dst)
	nodeList[nodeHash(dst)] = dst;
end

local function buildDAG(basicBlock)
	local nodeList	= {};
	local dag	= {};
	for i, op, dst, src1, src2 in pairs(basicBlock)
	do
		local nSrc1 = getNode(dag, nodeList, src1);
		local nSrc2 = src2 and getNode(dag, nodeList, src2);

		table.insert(dag, { op, dst, nSrc1, nSrc2 });
		if op == "store"
		then
			nodeList = {};		-- kill all exists node
		else
			updateNode(nodeList, dst);
		end
	end
	return dag;
end

classDAG.new = function(self, basicBlock)
	return setmetatable({
				dag = buildDAG(basicBlock),
			    }, self);
end

return { DAG = classDAG };
