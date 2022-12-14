#' 4.1.1 The poisson probability mass function familiy 
c_light <- c("#DCBCBC")
c_light_highlight <- c("#C79999")
c_mid <- c("#B97C7C")
c_mid_highlight <- c("#A25050")
c_dark <- c("#8F2727")
c_dark_highlight <- c("#7C0000")

plot_poisson <- function(l) {
  p <- hist(0, breaks=0:21-0.5, plot=FALSE)
  p$counts <- dpois(0:20, l)
  
  par(mar = c(8, 6, 0, 0.5))
  plot(p, main="", col="white", border=c_dark_highlight,
       xlab="x", xlim=c(-0.5, 20.5), 
       ylab="Probability Mass", ylim=c(0, 0.2), yaxt='n',
       cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5)
}

l <- 5
plot_poisson(l)








