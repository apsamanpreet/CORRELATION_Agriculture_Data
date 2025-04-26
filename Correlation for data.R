library(agricolae)
library(corrplot)
library(writexl)
data30 <- df
data30Corr <- correlation(data30[2:16], 
                          method = c("pearson"), alternative="two.sided")
# change # change # change
corrplot(
  data30Corr$correlation,
  method = c("ellipse"), type = c("lower"),
  col = COL1(sequential = c("YlOrRd"), n = 200), col.lim = NULL,
  p.mat = data30Corr$pvalue, insig = "label_sig",
  sig.level = 0.05, tl.cex = 1.1, tl.col = "black", cl.cex = 1.1, is.corr = TRUE,
  bg = "white",
  title = "", add = FALSE, diag = TRUE, outline = FALSE, mar = c(0, 0, 0, 0), addgrid.col = NULL,
  addCoef.col = NULL, addCoefasPercent = FALSE, order = c("original"),
  tl.pos = NULL, tl.offset = 0.4, tl.srt = 90, cl.pos = 'r', cl.length = NULL,
  cl.ratio = 0.18, cl.align.text = "c", cl.offset = 0.5, number.cex = 1,
  number.font = 2, number.digits = NULL, transKeepSign = TRUE, na.label = "?",
  na.label.col = "grey", win.asp = 1)

# change # change # change
df1 <- data.frame(data30Corr$correlation)
df2 <- data.frame(data30Corr$pvalue)
finalxlsheet <- list ('correlation_matrix' = df1, 'p_value' = df2)

##change
write_xlsx(finalxlsheet, '30sample sheet.xlsx')


#corrplot.mixed(CommanCorr$correlation, order = 'AOE')

data40Corr <- correlation(data40[2:5], 
                          method = c("pearson"), alternative="two.sided")

corrplot(data40Corr$correlation, method = 'square', 
         order = 'FPC', type = 'lower', diag = TRUE, 
         tl.cex = 0.8, number.cex = 0.8, addCoef.col = 'black',
         insig = 'p-value')
# change # change
df3 <- data.frame(data40Corr$correlation)
df4 <- data.frame(data40Corr$pvalue)
finalxlsheet1 <- list ('correlation_matrix' = df3, 'p_value' = df4)

##change
write_xlsx(finalxlsheet1, '40sample sheet.xlsx')

#order = 'FPC', type = 'lower', diag = FALSE, tl.cex = 0.5, insig = 'p-value', p.mat = OpenCorr$pvalue)

#
PolyCorr <- correlation(polydata[4:22], 
                        method = c("pearson"), alternative="two.sided")

corrplot(PolyCorr$correlation, method = 'square', 
         order = 'FPC', type = 'lower', diag = TRUE, 
         tl.cex = 0.6, number.cex = 0.3, addCoef.col = 'black',
         insig = 'p-value')
#order = 'FPC', type = 'lower', diag = FALSE, tl.cex = 0.5, sig.level = 0.10, insig = 'p-value')
