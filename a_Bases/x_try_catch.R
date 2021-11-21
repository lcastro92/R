#try catch
tryCatch(10+"a", error=function(e)
  print("error"))
tryCatch(10+20, error=function(e)
  print("error"))

tryCatch(10+"a", error=function(e)
  print(e))

tryCatch(
  for(i in 1:3){
    print(i+"a")
  }
  ,error = function(e) print ("Found error")
)

tryCatch ("A"+2,
  warning=function(e)
    print("ERROR FATAL"))

