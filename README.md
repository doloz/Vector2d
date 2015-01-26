# Vector2d
Simple Lua class for two-dimensional vector with basic math operations.

## Usage
	local Vector2d = require "Vector2d" -- Require class
	local v1 = Vector2d.new(10, 5) -- create vector
	 local v2 = Vector2d.left -- v2 == (-1; 0)
	  print(v1, v2)
		print(v1 + v2, v1 - v2, v1 * v2) -- * is scalar product
		print(v1.x, v1.y)
		print(v1()) -- the same as above
