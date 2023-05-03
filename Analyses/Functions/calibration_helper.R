calibration_plots <- function(calibration_data){
  # With this code calibration curves are obtained for 4 models. These models are randomly chosen, jsut to get an impression of the calibration results.
  
cal_obj <- calibration(outcome ~ original + original_own + smote_own + up_own,
                       data = calibration_data,
                       cuts = 10,
                       class = "Hypo")
plot(cal_obj, type = "l", auto.key = list(columns = 3,
                                          lines = TRUE,
                                          points = FALSE))
}
