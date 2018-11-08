
#load the dataset
library(jsonlite)
hotelSurvey=fromJSON("hotelSurveyBarriot.json")

#convert it into a dataframe
hotelSurvey=data.frame(hotelSurvey)
str(hotelSurvey)
hotelSurvey
