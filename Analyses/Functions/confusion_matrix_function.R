confusion <- function(matrix){
  TN <- matrix[1, 1]
  FN <- matrix[2, 1]
  FP <- matrix[1, 2]
  TP <- matrix[2, 2]
  
  sens <- TP / (TP + FN)  # sensitivity 
  spec <- TN / (TN + FP) # specificity
  precision <- TP/(TN+FP)
  NPV <- TN/(TN+FN)
  
  f1 <- 2 * ((precision*sens)/(precision+sens))
  accur <- (TP + TN)/(TP+TN+FP+FN)
  gmean <- sqrt(sens*spec)
  
  return(list(sensitivity=sens, specificity=spec, f1_score = f1, accuaracy = accur, gmean = gmean))
}