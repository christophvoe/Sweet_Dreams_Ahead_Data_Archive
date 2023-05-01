calibration_plots <- function(calibration_data){
  
cal_obj <- calibration(outcome ~ original + original_own + smote_own + up_own,
                       data = calibration_data,
                       cuts = 10,
                       class = "Hypo")
plot(cal_obj, type = "l", auto.key = list(columns = 3,
                                          lines = TRUE,
                                          points = FALSE))
}
