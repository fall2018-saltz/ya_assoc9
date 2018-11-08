
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

func2=function(vec1)
{
    q=quantile(vec1, c(0.4, 0.6))
  vBuckets2<- replicate(length(vec1), "Average")
  vBuckets2[vec1<= q[1]] <- "Low"
  vBuckets2[vec1> q[2]] <- "High"
  return(vBuckets2)
}

a2=func2(hotelSurvey$guestAge)
a2
b2=func2(hotelsurvey$hotelSize)
b2
c2=func2(hotelSurvey$whenBookedTrip)
c2
