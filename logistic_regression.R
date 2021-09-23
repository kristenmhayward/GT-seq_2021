#Logistic regression (binomial) to investigate relationship between qPCR-determined DNA quantities (ng/uL) & genotyping success (success, fail)
#genotyping success = >50% of 322 loci genotyped 

MyData=read.csv("/User/path/to/file/FF_qpcr_logist_regress_nodups.csv")

View(MyData)
#column Genotyping_success is genotyping success (1) or failure (0)
#column qPCR_quant is qPCR-determined DNA quantity (ng/uL)

#Run the model
logit_model <- glm(Genotyping_success ~ qPCR_quant,data=MyData,family="binomial")
summary(logit_model)
#significant 

#Plot data using ggplot2
library(ggplot2)
MyData$Genotyping_success <- as.numeric(MyData$Genotyping_success)
class(MyData$Genotyping_success) #confirm 

coolbeans<- theme(
  legend.position= "right",
  legend.title= element_text(size = 15),
  legend.text= element_text(size = 12),
  axis.text.x= element_text(size=12, colour="black", face= "bold"),
  axis.text.y= element_text(size=12, colour="black", face= "bold"),
  axis.title.x= element_text(size=15, colour="black", vjust= +0.5, face= "bold"),
  axis.title.y= element_text(size=15, colour="black", vjust=+0.5, face= "bold"),
  panel.background= element_rect(fill="white", colour=NULL),
  axis.line= element_line(colour="black", size=0.5),
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank()
)

ggplot(MyData, aes(x=qPCR_quant, y= Genotyping_success)) + 
  geom_point(colour = "gray25", size = 2.5, alpha=.5) +
  scale_x_continuous(name = "qPCR-determined FF DNA quantity (ng/µl)",
     breaks = seq(0,40,by=5), limits=c(0,40)) +
  scale_y_continuous(name = "Genotyping success (0,1)")+
  stat_smooth(method = "glm", 
              method.args = list(family="binomial"),
              formula= y~x, 
              se = FALSE,
              colour = "firebrick") +
  coolbeans
