getwd()
setwd('C:/Users/hp/Desktop/DATA SCIENCE/DATA SCIENCE SPECIALIZATION COURSE')
getwd()

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
 head(outcome)
 
 names(output)
 outcome[, 11] <- as.numeric(outcome[, 11])
  hist(outcome[, 11])

  ?any
  best<- function( state,outcome) {
    if (isFALSE(any(outcome$State == state))){
      stop("invalid state")
    }
    if( outcome == "heart attack"){
      outcome$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack <- as.numeric(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
      v<- na.exclude(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
      #v
    minn <-min(v)
    #minn
    sol<- subset.data.frame(outcome,Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack == minn)
    #sol
     
    
    sortedSol <- sol[order(sol$Hospital.Name),]
    #sortedSol
    names(sortedSol)
    final<- sortedSol$Hospital.Name
    final[1]
    }
    if( outcome == "pneumonia"){
      outcome$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia <- as.numeric(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
      v<- na.exclude(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
      #v
      minn <-min(v)
      #minn
      sol<- subset.data.frame(outcome,Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia == minn)
      #sol
      
      sortedSol <- sol[order(sol$Hospital.Name),]
      #sortedSol
      
      final<- sortedSol$Hospital.Name
      final[1]
      
    }
    if( outcome == "heart failure"){
      outcome$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure <- as.numeric(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
      v<- na.exclude(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
      #v
      minn <-min(v)
      #minn
      sol<- subset.data.frame(outcome,Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure == minn)
      #sol
      #sortedSol<- 
      #?order
      sortedSol <- sol[order(sol$Hospital.Name),]
      #sortedSol
      names(sortedSol)
      final<- sortedSol$Hospital.Name
      final[1]
    }
    
    else{
      stop("invalid output")
      
      
      
    }
    
}
best("TX", "heart attack")  
  
  




