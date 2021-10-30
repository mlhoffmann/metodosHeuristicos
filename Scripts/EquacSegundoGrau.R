
equacaoSegund <- function(a,b,c) {
  delta <- (b * b) - (4 * a * c)
  x1 <- (-b + sqrt(delta)) /(2 * a)
  x2 <- (-b - sqrt(delta)) /(2 * a)
  return(c(x1,x2))
  
}

equacaoSegund(2,2,2)


equacaoSegund <- function(a,b,c) {
  if(a == 0)
    print("A equação não é de segundo grau")
  else {
    delta <- (b * b) - (4 * a * c)
    if(delta < 0)
      print("Não existe raiz real")
    
    if(delta > 0){
      print("Existem duas raizes reais e diferentes")
      x1 <- (-b + sqrt(delta)) /(2 * a)
      x2 <- (-b - sqrt(delta)) /(2 * a)
      return(c(x1,x2))
    }
    
    if(delta == 0){
      print("Existem duas raizes reais e iguais")
      x1 <- (-b + sqrt(delta)) /(2 * a)
      return(x1)
    }
  }
}

equacaoSegund(2,-10,2)
