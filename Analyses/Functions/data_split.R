data_split <- function(dataset,seed=123, train_size= 0.8) {

set.seed(as.numeric(seed))
# test and train
n <- nrow(dataset)
splits <- c(rep("train", round(as.numeric(train_size)*n)), rep("test", round((1-as.numeric(train_size))*n)))
full_data_split <- dataset %>% mutate(splits = sample(splits))

train <- full_data_split %>% filter(splits == "train") %>% dplyr::select(-splits)
test <- full_data_split %>% filter(splits == "test") %>% dplyr::select(-splits)

return(list(train=train, test= test))
}