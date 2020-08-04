

######

lras3 <- tibble(y = c(8,0), x = c(3,3))
lras1 <- tibble(y = c(8,0), x = c(1,1))
lras5 <- tibble(y = c(8,0), x = c(5,5))
lras4 <- tibble(y = c(8,0), x = c(4,4))
lras2 <- tibble(y = c(8,0), x = c(2,2))
ad5 <- tibble(y = c(0,5), x = c(5,0))
ad7 <- tibble(y = c(0,7), x = c(7,0))
ad3 <- tibble(y = c(0,3), x = c(3,0))
ad4 <- tibble(y = c(0,4), x = c(4,0))
ad6 <- tibble(y = c(0,6), x = c(6,0))
sras2 <- function(x) 1+x^5/243
sras4 <- function(x) 3+x^5/243
sras6 <- function(x) 5+x^5/243

## Base Graph, edit titles and axis points as needed
ggplot() +
  scale_y_continuous(expand = c(0,0), limits = c(0,8), breaks = c(2), labels = c("2%")) +
  scale_x_continuous(expand = c(0,0), limits = c(0,8), breaks = c(3), labels = c("3%")) +
  labs(x = expression(dot(Y) ~ "= Real GDP Growth"), 
       y = expression(dot(P) ~ "= Inflation"),
       title = "Aggregate Demand Aggregate Supply",
       subtitle = "Subtitle") + # Subtitle
## LRAS = 3
  geom_path(data = lras3, mapping = aes(x = x, y = y), color = color2, size = 1.2) +
  annotate("text", x = 3.7, y = 7.5, label = "LRAS", color = color2, size = 6, parse = TRUE) +
## LRAS = 1
  geom_path(data = lras1, mapping = aes(x = x, y = y), color = color2, size = 1.2) +
  annotate("text", x = 1.7, y = 7.5, label = "LRAS", color = color2, size = 6, parse = TRUE) +
## LRAS = 5
  geom_path(data = lras5, mapping = aes(x = x, y = y), color = color2, size = 1.2) +
  annotate("text", x = 5.7, y = 7.5, label = "LRAS", color = color2, size = 6, parse = TRUE) +
## LRAS = 4
  geom_path(data = lras4, mapping = aes(x = x, y = y), color = color2, size = 1.2) +
  annotate("text", x = 4.7, y = 7.5, label = "LRAS", color = color2, size = 6, parse = TRUE) +  
## LRAS = 2
  geom_path(data = lras2, mapping = aes(x = x, y = y), color = color2, size = 1.2) +
  annotate("text", x = 2.7, y = 7.5, label = "LRAS", color = color2, size = 6, parse = TRUE) +
## AD = 5  
  geom_path(data = ad5, mapping = aes(x = x, y = y), color = color3, size = 1.2) +
  annotate("text", x = 5.5, y = 1.5 , label = expression("AD (5%="*dot(M)+dot(V)*")"), 
           color = color3, size = 6, parse = TRUE) +
## AD = 3  
  geom_path(data = ad3, mapping = aes(x = x, y = y), color = color3, size = 1.2) +
  annotate("text", x = 3.5, y = 1.5 , label = expression("AD (3%="*dot(M)+dot(V)*")"), 
           color = color3, size = 6, parse = TRUE) +
## AD = 7  
  geom_path(data = ad7, mapping = aes(x = x, y = y), color = color3, size = 1.2) +
  annotate("text", x = 7.5, y = 1.5 , label = expression("AD (7%="*dot(M)+dot(V)*")"), 
           color = color3, size = 6, parse = TRUE) +
## AD = 4  
  geom_path(data = ad4, mapping = aes(x = x, y = y), color = color3, size = 1.2) +
  annotate("text", x = 4.5, y = 1.5 , label = expression("AD (4%="*dot(M)+dot(V)*")"), 
           color = color3, size = 6, parse = TRUE) +
## AD = 6  
  geom_path(data = ad6, mapping = aes(x = x, y = y), color = color3, size = 1.2) +
  annotate("text", x = 6.5, y = 1.5 , label = expression("AD (6%="*dot(M)+dot(V)*")"), 
           color = color3, size = 6, parse = TRUE) +
## SRAS = 2
  stat_function(fun=sras2, color=color4, size = 1.2) +
  annotate("text", x = 5.3, y = 6, label = expression("SRAS("*pi^e*"=2%)"),
           color = color4, size = 6, parse = TRUE) +
## SRAS = 4
  stat_function(fun=sras4, color=color4, size = 1.2) +
  annotate("text", x = 5, y = 6.5, label = expression("SRAS("*pi^e*"=4%)"),
           color = color4, size = 6, parse = TRUE) +
## SRAS = 6
  stat_function(fun=sras6, color=color4, size = 1.2) +
  annotate("text", x = 4.7, y = 7, label = expression("SRAS("*pi^e*"=6%)"),
           color = color4, size = 6, parse = TRUE) +
## Dashed Lines for equilibria
  annotate("segment", x=0, xend = 3, y = 2, yend = 2, linetype = "dotted") + # horizontal line
  annotate("segment", x=3.58, xend = 3.58, y = 0, yend = 8, linetype = "dotted") + # vertical line
## Arrows if needed (delete if no changes, edit points otherwise. 
 
  annotate("segment", x = 3.2, xend = 3.6, y = 2.1, yend = 3.1,
           arrow = arrow(length = unit(.5, "lines")), colour = color5, size = 1) +
  theme(plot.title = element_text(size = rel(1.4))) +
  theme_classic()
  
  
  


 