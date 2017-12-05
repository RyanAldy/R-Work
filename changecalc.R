Input_amount <- as.numeric(readline(prompt = "Input amount: "))
item_price <- as.numeric(readline(prompt = "Price amount: "))


coins <- c(5000, 2000, 1000, 500, 200, 100, 50, 20, 10, 5, 2, 1)

change <- as.numeric((Input_amount - item_price) * 100)

# Float division as we want the monetary/decimal figure
print(paste("Change Owed:", (change/100)))

# Use % signs for integer division
i <- 1
while (i < length(coins)) {

  change_left <- change %/% coins[i]
  if (change_left > 0) {
    print(trimws(paste("£", (coins[i] / 100), "amount:", change_left)))
    change <- change - (change_left * coins[i])
  }
  i <- i + 1
}