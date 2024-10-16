# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  # can't have triangle be 0 or less
  if ((a <= 0) || (b <= 0) || (c <= 0))
    raise TriangleError
  end

  # 2 sides have to be > the largest side
  if ((a > b) && (a > c))
    if ((b + c) <= a)
      raise TriangleError
    end
  elsif ((b > a) && (b > c))
    if ((a + c) <= b)
      raise TriangleError
    end
  elsif ((c > a) && (c > b))
    if ((a + b) <= c)
      raise TriangleError
    end
  end
  
  # WRITE THIS CODE
  if ((a == b) && (b == c))
    return :equilateral
  elsif ((a == b) || (a == c) || (b == c))
    return :isosceles
  else 
    return :scalene
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
