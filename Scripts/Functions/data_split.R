data_split <- function(dataset,seed=123, train_size= 0.8) {
  # Functins like this already exist, but to be sure to have it exactly the way I want it, I wrote the function myself. Especially, in order to be able to change the seeds accordingly

set.seed(as.numeric(seed)) # choose a seed
# test and train
n <- nrow(dataset)
splits <- c(rep("train", round(as.numeric(train_size)*n)), rep("test", round((1-as.numeric(train_size))*n))) #split the data with a split however you want it. Default is 20/80 split
full_data_split <- dataset %>% mutate(splits = sample(splits))

train <- full_data_split %>% filter(splits == "train") %>% dplyr::select(-splits)
test <- full_data_split %>% filter(splits == "test") %>% dplyr::select(-splits)

return(list(train=train, test= test))
}