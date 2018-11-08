
func=function(vec)
{
    vBuckets <- replicate(length(vec), "Average")
    vBuckets[vec > 7] <- "High"
    vBuckets[vec < 7] <- "Low"
    return(vBuckets)
}
a=func(hotelSurvey$overallCustSat)
