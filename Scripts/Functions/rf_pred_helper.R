rf_pred <- function(model, test=full_data_test, cost=2, threshold=FALSE, boundary=0.5){
  # packages needed if not loaded before
  library(pROC)
  library(caret)
  
  # This function can be used for each classifier!!
  
  pred_original  <- predict(model, newdata = test, "prob") # predict probabilities on test set
  pred_original <- as.numeric(pred_original$"Hypo") # make sure the values are numeric
  
  roc <- roc(test$Night_class_hypo_out,pred_original) # get roc curves. With this information the threshold moving is performed
  
  thres <-as.numeric(pROC::coords(roc, "best", input= "threshold", best.method="closest.topleft", best.weights=c(as.numeric(cost), 0.5))[1,1]) # here the threshold moving is performed. The default for the higher cost is set to 2, but can be lowered or raised
  
  if(threshold == FALSE){
  rf_test <-  ifelse(pred_original  > thres, 1, 0)} # based on a condition the cost-sensitive learning is applied.
  
  else{rf_test <-  ifelse(pred_original  > as.numeric(boundary), 1, 0)} # otherwise a boundary can be chosen. The default is set to be 0.5, if a prediction has 0 correctly identified, the threshold is moved to a value where at least 1 observation is correctly predcited.

  cmat <- table(true = as.factor(test$Night_class_hypo_out),predicted = as.factor(rf_test)) # confusion matrix is obtained

  conf <- confusion(cmat) # with this helper function exactly the needed evaluation metrics are obtained
  auc <- roc$auc[1] # auc value is obtained based on ROC
  
  return(list(matrix=cmat,metrics=conf,auc=auc,plot=plot(roc),sel_thres =thres, class_probs = pred_original)) # everything is saved in a list and used later to get the estimates
}