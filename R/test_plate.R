library(ggplot2)

#define plate size
Nrow <- 8
Ncol <- 12
Nsample <- Nrow * Ncol

#create plate
plateRow <- LETTERS[1:Nrow]
plateCol <- 1:Ncol
#plate dataframe
plate <- data.frame(Row=rep(plateRow,Ncol),
                    Col=sort(rep(plateCol,Nrow)))
plate$Row <- factor(plate$Row, levels=LETTERS[Nrow:1])
plate$Var <- round(runif(Nsample,min=50,max=100))

#plot plate
ggplot(plate, aes(x=Col, y=Row)) +
   geom_point(size = 10, aes(colour=Var)) +
   scale_colour_gradient(low="red", high="green") +
  theme_bw() +
  scale_x_discrete(breaks=plateCol)+
  theme(plot.background = element_blank(),
        panel.grid.major = element_line(size=1),
        panel.grid.minor = element_blank()) 


