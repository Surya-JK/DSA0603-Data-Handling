traffic <- data.frame(
  Date = as.Date(c("2023-01-01","2023-01-02","2023-01-03","2023-01-04","2023-01-05")),
  PageViews = c(1500,1600,1400,1650,1800),
  CTR = c(2.3,2.7,2.0,2.4,2.6)
)

plot(traffic$Date,
     traffic$PageViews,
     type = "o",
     col = "blue",
     pch = 16,
     xlab = "Date",
     ylab = "Page Views",
     main = "Daily Page Views")

top <- traffic[order(-traffic$CTR), ]

barplot(top$CTR,
        names.arg = format(top$Date, "%d-%b"),
        col = "orange",
        xlab = "Date",
        ylab = "Click Through Rate (%)",
        main = "Top Days with Highest CTR")

likes <- c(500,550,520,600,650)
shares <- c(200,220,210,240,260)
comments <- c(100,120,110,130,150)

interaction <- rbind(likes, shares, comments)

x <- 1:5

plot(x, likes,
     type = "n",
     ylim = c(0, max(likes + shares + comments)),
     xlab = "Day",
     ylab = "Interactions",
     main = "User Interaction Distribution")

polygon(c(x, rev(x)),
        c(rep(0,5), rev(likes)),
        col = "lightblue",
        border = NA)

polygon(c(x, rev(x)),
        c(likes, rev(likes + shares)),
        col = "lightgreen",
        border = NA)

polygon(c(x, rev(x)),
        c(likes + shares, rev(likes + shares + comments)),
        col = "pink",
        border = NA)

legend("topleft",
       legend = c("Likes","Shares","Comments"),
       fill = c("lightblue","lightgreen","pink"))
