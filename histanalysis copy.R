histt <- read.csv("/Users/benedictadadson/Desktop/Benedicta Dadson - MAT 450 copy.csv")
histt
str(histt)
histt$X <- NULL
histt
summary(histt)
library(ggplot2)
ggplot(histt, 
       aes(x = histt$`Final Grade`, 
           fill = histt$`Major/Minor`)) + 
  geom_bar(position = "stack")
ggplot(histt, 
       aes(x = histt$`Final Grade`, 
           fill = histt$Semester)) + 
  geom_bar(position = "stack")
ggplot(histt) + geom_bar(aes(x = histt$Year))
ggplot(histt) + geom_bar(aes(x = histt$`Course Level`))
ggplot(histt, aes(histt$`Final Grade`, histt$Papers, fill = histt$Papers)) + geom_bar(position = "dodge", stat = "identity")
ggplot(histt, aes(histt$`Final Grade`, histt$`Class Level`, fill = histt$`Class Level`)) + geom_bar(position = "dodge", stat = "identity")
ggplot(histt, aes(histt$`Final Grade`, histt$Exams, fill = histt$Exams)) + geom_bar(position = "dodge", stat = "identity")
ggplot(histt, 
       aes(x = histt$`Final Grade`, 
           fill = histt$`Class Level`)) + 
  geom_bar(position = "stack")
ggplot(histt, 
       aes(x = histt$`Course Level`, 
           fill = histt$`Class Level`)) + 
  geom_bar(position = "stack")
hist_factor_fg <- as.factor(histt$Final.Grade)
hist_factor_class <- as.factor(histt$Class.Level)
hist_factor_mm <- as.factor(histt$Major.Minor)
hist_factor_sem <- as.factor(histt$Semester)
hist_factor_year <- as.factor(histt$Year)
hist_factor_course <- as.factor(histt$Course.Level)
hist_factor_pap <- as.factor(histt$Papers)
hist_factor_ex <- as.factor(histt$Exams)
model <-lm(histt$Final.Grade~
             hist_factor_class
           +hist_factor_mm
           +hist_factor_sem
           +hist_factor_year
           +hist_factor_course
           +hist_factor_pap
           +hist_factor_ex)
any(is.na(histt))
class(histt)
