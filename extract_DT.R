## The pattern of `train` vs `test` path is predictable
## Hence it's better to write a seperate function to avoid code repetition

extract_DT <- function(path,feature_info,activities.dict){
  
  features.path <- paste0('data/UCI HAR Dataset/',path,'/X_',path,'.txt')
  activities.path <- paste0('data/UCI HAR Dataset/',path,'/y_',path,'.txt')
  subjects.path <- paste0('data/UCI HAR Dataset/',path,'/subject_',path,'.txt')
  
  features<-fread(features.path,sep= ' ')
  features <- features[,feature_info$V1 ,with=F]
  names(features) <- feature_info$V2
  
  activities <- fread(activities.path)$V1
  subjects <- fread(subjects.path)$V1
  
  mutate(features,subject = subjects,activity = activities.dict[activities])
  
}