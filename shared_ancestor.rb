# write a function called shared_ancestor that finds the youngest shared ancestor
# class of two objects

# So -- 
# shared_ancestor(1, 1.0)
# will return 
# Numeric

# You get an object's class by calling
# object.class
# you get a class's parent class, by calling
# class.superclass

def shared_ancestor(obj1, obj2)
  # code goes here
  (ancestors(obj1) & ancestors(obj2))[0]
end

def ancestors(obj)
  # obj.class.ancestors
  ancestors = [obj.class]
  while ancestors[-1].superclass
    ancestors << ancestors[-1].superclass
  end
  ancestors
end

def shared_ancestor_output(obj1, obj2)
  shared = shared_ancestor(obj1, obj2)
  title1 = super_title(ancestors(obj1).index(shared))
  title2 = super_title(ancestors(obj2).index(shared))
  "The shared ancestor of #{obj1} and #{obj2} is #{shared}, which is #{obj1}'s #{title1}, and #{obj2}'s #{title2}"
end

def super_title(index)
  case index
  when 0 then "self"
  when 1 then "parent"
  when 2 then "grandparent"
  else "some ancestor"
  end
end

# extra credit
# make the output say
# "The shared ancestor of obj1 and obj2 is Numeric, which is obj1's parent, and obj2's grandparent"

# puts shared_ancestor(1, 1.0)
puts shared_ancestor_output(1, 1.0)
