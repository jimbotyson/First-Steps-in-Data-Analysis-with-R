```{r prepare-results}
resultsdf <- read_csv("http://www.ucl.ac.uk/~ccaajim/results.csv")
# resultsdf <- resultsdf %>% 
# 	mutate(sex, factor(sex))
# resultsdf <- resultsdf %>% 
# 	mutate(class, factor(class))
resultsdf <- resultsdf %>%
	mutate(average_exam=(maths+english+history)/3)
resultsdf<-resultsdf %>% 
	mutate(average_exam = round(average_exam)) %>% 
	mutate(stream = factor(cut(average_exam,
														 breaks = c(0,49,59,100)),
												 ordered = TRUE, 
												 labels =  c("three","two","one")))


```