F <- file.choose()

SalesDF <- read.csv(F)

# Get product name with highest revenue
print(unique(SalesDF[SalesDF[,"Revenue"]== max(SalesDF[,"Revenue"],na.rm = T), "Product"]))

#colMax <- function(data) sapply(data, max, na.rm = TRUE)
#colMax(SalesDF)
#print(unique(SalesDF$Product))

# Removes NA's
completeSalesDF <- SalesDF[complete.cases(SalesDF),]
print(completeSalesDF)

sunscreenDF <- completeSalesDF[completeSalesDF[,"Product.type"]== "Sunscreen", ]
print(sunscreenDF)

italysunscreenDF <- sunscreenDF[sunscreenDF[,"Retailer.country"]== "Italy", ]
print(italysunscreenDF)

sunscreen_cost <- sum(italysunscreenDF[,"Quantity"] * italysunscreenDF[,"Unit.price"])
print(sunscreen_cost)

# Just to check the figure is correct as the Product cost column is the same as this calculation
print(sum(italysunscreenDF[,"Product.cost"]))

# Or - Quicker way! - Using the & operator

italysunscreenDF2 <- completeSalesDF[completeSalesDF[,"Product.type"]== "Sunscreen" & completeSalesDF[,"Retailer.country"]== "Italy", ]
sunscreen_cost2 <- sum(italysunscreenDF2[,"Quantity"] * italysunscreenDF2[,"Unit.price"])
print(sunscreen_cost2)
                                     

koreaeyewear <- completeSalesDF[completeSalesDF[, "Product.type"]== "Eyewear" & completeSalesDF[,"Retailer.country"]== "Korea", ]
print(paste("Sum of quantity:", (sum(koreaeyewear[,"Quantity"]))))


countrypopproduct <- function(CompleteDF, country) {
  
  # Previous working query until found issue with multiple products of same name with same country
  
  #CountryDF <- CompleteDF[CompleteDF[,"Retailer.country"]== country, ]
  #resultDF <- CountryDF[CountryDF[,"Quantity"]== max(CountryDF[,"Quantity"]), ]
  
  # Print as.character to just get the string and not the factors
  #print(as.character(resultDF$Product))
  
  # New Query
  aggdata <- aggregate(Quantity ~ Product, CompleteDF[CompleteDF$Retailer.country == country,], sum)
  
  print(as.character(aggdata[aggdata[,"Quantity"]== max(aggdata[, "Quantity"]), "Product"]))
  print(max(aggdata[,"Quantity"]))

  
}

countrypopproduct(completeSalesDF, "Canada")
countrypopproduct(completeSalesDF, "China")
countrypopproduct(completeSalesDF, "Singapore")
countrypopproduct(completeSalesDF, "United States")



productcountry <- function(CompleteDF, product) {
  
  # Old way until issue was realised
  #productdf <- CompleteDF[CompleteDF[,"Product"]== product, ]
  #prodresultDF <- productdf[productdf[, "Quantity"]== max(productdf[, "Quantity"]), ]
  #print(as.character(prodresultDF$Retailer.country))

  aggdata <- aggregate(Quantity ~ Retailer.country, CompleteDF[CompleteDF$Product == product,], sum)
  
  print(as.character(aggdata[aggdata[,"Quantity"]== max(aggdata[, "Quantity"]), "Retailer.country"]))
  print(max(aggdata[,"Quantity"]))
  
    
}

productcountry(completeSalesDF, "TrailChef Water Bag")



popproducteverycountry <- function(CompleteDF) {
  
  popprodalldf <- data.frame()
  str(popprodalldf)
  
  
  for (country in unique(CompleteDF$Retailer.country)) {
    aggdata <- aggregate(Quantity ~ Product, CompleteDF[CompleteDF$Retailer.country == country, ], sum)
    max_value <- max(aggdata$Quantity)
    popprodalldf <- rbind(popprodalldf, data.frame(country, as.character(aggdata$Product[aggdata$Quantity == max_value]), max_value))
  }
  return(popprodalldf)
}


popproducteverycountry(completeSalesDF)

