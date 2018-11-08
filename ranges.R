
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

func2=function(vec)
{
    Q<- quantile(vec, c(0.4, 0.6))
  vBuckets2<- replicate(length(vec), "Average")
  vBuckets2[vec<= Q[1]] <- "Low"
  vBuckets2[vec> Q[2]] <- "High"
  return(vBuckets2)
}
