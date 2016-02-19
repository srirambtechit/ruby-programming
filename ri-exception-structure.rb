def excep_demo
  begin
  #---
  #---
    raise StandardError, 'input is too big' unless i > 2
  #---
  #---
  rescue OneTypeOfException
  #---
  rescue AnohterTypeOfException
  #---
  else # if no exception occured
  #---this block get executed
  ensure # similar to finally in java
  #---
  end
end
