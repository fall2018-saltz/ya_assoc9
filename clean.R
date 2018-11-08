
#load the dataset
library(jsonlite)
hotelSurvey=fromJSON("hotelSurveyBarriot.json")

#convert it into a dataframe
hotelSurvey=data.frame(hotelSurvey)

#to view the structure of the dataset
str(hotelSurvey)
hotelSurvey
