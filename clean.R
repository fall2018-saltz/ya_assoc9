
#load the dataset
library(jsonlite)
hotelSurvey=fromJSON("hotelSurveyBarriot.json")

#convert it into a dataframe
hotelSurvey=data.frame(hotelSurvey)

#clean the dataframe
#remove the unwanted column
hotelSurvey=hotelSurvey[,-11]
#to view the structure of the dataset
str(hotelSurvey)
hotelSurvey
