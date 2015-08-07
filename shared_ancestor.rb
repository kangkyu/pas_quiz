class SharedAncestor
  attr_reader :obj1, :obj2
  def initialize(obj1, obj2)
    @obj1, @obj2 = obj1, obj2
  end

  def shared_ancestor
    (ancestors(obj1) & ancestors(obj2)).first
  end

  def extra_output
    title1, title2 = how_far(obj1), how_far(obj2)
    "The shared ancestor of #{obj1} and #{obj2} is #{shared_ancestor}, " +
    "which is #{obj1}'s #{title1}, and #{obj2}'s #{title2}"
  end

  private

  def how_far(obj)
    case ancestors(obj).index(shared_ancestor)
    when 0 then "self"
    when 1 then "parent"
    when 2 then "grandparent"
    else "some ancestor"
    end
  end

  def ancestors(obj)
    # obj.class.ancestors
    ancestors = [obj.class]
    while ancestors[-1].superclass
      ancestors << ancestors[-1].superclass
    end
    ancestors
  end
end
