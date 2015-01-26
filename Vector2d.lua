local Vector2d = {}


local vectorMetatable = {
	__call = function (v)
		return v.x, v.y
	end,
	__unm = function (v)
		return Vector2d.new(-v.x, -v.y)
	end,
	__add = function (v1, v2)
		return Vector2d.new(v1.x + v2.x, v1.y + v2.y)
	end,
	__sub = function (v1, v2)
		return v1 + (-v2)
	end,
	__mul = function (v1, v2)
		return v1.x * v2.x + v1.y * v2.y
	end,
	__tostring = function (v)
		return "(" .. tostring(v.x) .. ", " .. tostring(v.y) .. ")"
	end,
	__eq = function (v1, v2) 
		return v1.x == v2.x and v1.y == v2.y
	end,
	__lt = function (v1, v2)
		return v1.x < v2.x and v1.y < v2.y
	end,
	__le = function (v1, v2)
		return v1.x <= v2.x and v1.y <= v2.y
	end,

	scale = function (self, scalar)
		return Vector2d.new(self.x * scalar, self.y * scalar)
	end
}
vectorMetatable.__index = vectorMetatable

function Vector2d.new(x, y)
	local xn = tonumber(x)
	local yn = tonumber(y)
	assert(xn and yn, "Wrong parameters passed to constructor")
	return setmetatable({ x = xn, y = yn }, vectorMetatable)
end

Vector2d.left = Vector2d.new(-1, 0)
Vector2d.right = Vector2d.new(1, 0)
Vector2d.up = Vector2d.new(0, -1)
Vector2d.down = Vector2d.new(0, 1)
Vector2d.zero = Vector2d.new(0, 0)

return Vector2d