data <- read.csv2("C:\\Users\\Kevin\\Downloads\\SUSsvarNy23.csv")


odd_even  <- seq_len(ncol(data)) %% 2

odd_data <- data[, odd_even==1]

even_data <- data[, odd_even==0]

x = rowSums(odd_data)

y= rowSums(even_data)

x <- x[1:length(x)] - 5

y <- 25 - y[1:length(y)]

SUS_score <- (x + y) * 2.5