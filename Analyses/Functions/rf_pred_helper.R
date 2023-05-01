rf_pred <- function(model, test=full_data_test, cost=2, threshold=FALSE, boundary=0.5){
  library(pROC)
  library(caret)
  
  pred_original  <- predict(model, newdata = test, "prob")
  pred_original <- as.numeric(pred_original$"Hypo")
  
  roc <- roc(test$Night_class_hypo_out,pred_original)
  
  thres <-as.numeric(pROC::coords(roc, "best", input= "threshold", best.method="closest.topleft", best.weights=c(as.numeric(cost), 0.5))[1,1])
  
  if(threshold == FALSE){
  rf_test <-  ifelse(pred_original  > thres, 1, 0)}
  
  else{rf_test <-  ifelse(pred_original  > as.numeric(boundary), 1, 0)}

  cmat <- table(true = as.factor(test$Night_class_hypo_out),predicted = as.factor(rf_test))

  conf <- confusion(cmat)
  auc <- roc$auc[1]
  
  return(list(matrix=cmat,metrics=conf,auc=auc,plot=plot(roc),sel_thres =thres, class_probs = pred_original))
}