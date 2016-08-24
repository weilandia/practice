def multiply(n,factor)
  if n == 0 then 0
  else factor + multiply(n-1,factor)
  end
end
