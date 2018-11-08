
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
b2=func2(hotelSurvey$hotelSize)
b2
c2=func2(hotelSurvey$whenBookedTrip)
c2


#count of people in each category for the age
tab=table(a2)
tab

#percentage of people in each of categories for the age
pr1=prop.table(tab) 
pr1
#count of people in each category for the friendliness attribute.
tab2=table(d)
tab2

#percentage of people in each of categories frot the friendliness 
pr2=prop.table(tab2) 
pr2
