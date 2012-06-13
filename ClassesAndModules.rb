def from_to(x, from, to, state=false)
  if(x==from)
    state = true
  end
  
  if(x > to)
    state = false
  end 
  state
end
state = false
(1..10).each{|x| state = from_to(x, 3, 5, state); print x if state;}

