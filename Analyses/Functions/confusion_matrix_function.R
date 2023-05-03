confusion <- function(matrix){
  TN <- matrix[1, 1]
  FN <- matrix[2, 1]
  FP <- matrix[1, 2]
  TP <- matrix[2, 2]
  
  # Caluclates the evaluation metrics wanted and some extra metrics as well to see how the results are for multiple metrics
  sens <- TP / (TP + FN)  # sensitivity 
  spec <- TN / (TN + FP) # specificity
  precision <- TP/(TN+FP)
  NPV <- TN/(TN+FN) # negative predictive value
  
  f1 <- 2 * ((precision*sens)/(precision+sens)) # f1 score
  accur <- (TP + TN)/(TP+TN+FP+FN) # accuracy
  gmean <- sqrt(sens*spec) # G-mean score
  
  return(list(sensitivity=sens, specificity=spec, f1_score = f1, accuaracy = accur, gmean = gmean))
}