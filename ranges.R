
func=function(vec)
{
    vBuckets <- replicate(length(vec), "Average")
    vBuckets[vec > 7] <- "High"
    vBuckets[vec < 7] <- "Low"
    return(vBuckets)
}
a=func(hotelSurvey$overallCustSat)
a
b=func(hotelSurvey$checkInSat)
b
c=func(hotelSurvey$hotelClean)
c
d=func(hotelSurvey$hotelFriendly)
d
e=func(hotelSurvey$lengthOfStay)
e
