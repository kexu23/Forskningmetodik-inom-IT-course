data <- read.csv2("C:\\Users\\Kevin\\Downloads\\RProjekt1\\SUSsvarNy23.csv")

odd_even  <- seq_len(ncol(data)) %% 2     #markerar udda columner som 1 och jämna som 0

odd_data <- data[, odd_even==1]       #delar alla kolumner med 1 i sin egen dataset

even_data <- data[, odd_even==0]      #delar alla kolumner med 0 i sin egen dataset

x = rowSums(odd_data)     #Tar summan av varenda udda rad

y = rowSums(even_data)    #Tar summan av varenda jämn rad

x <- x[1:length(x)] - 5     #Uträkning för udda frågor enligt SUS metoden

y <- 25 - y[1:length(y)]    #Uträkning för jämna frågor enligt SUS metoden

SUS_score <- (x + y) * 2.5  #Sista räkningen för att få poängen på en 0-100 skala

SUS_avg <- mean(SUS_score)    #räknar medelvärdet av alla frågor

SUS_median <- median(SUS_score)   #räknar medianen av alla frågor

SUS_dev <- sd(SUS_score)    #räknar standardavvikelsen av alla frågor

SUS_min <- min(SUS_score)   #räknar minimum av alla frågor

SUS_max <- max(SUS_score)   #räknar maximum av alla frågor

#Visar svaren
SUS_score
SUS_avg
SUS_median
SUS_dev
SUS_min
SUS_max
