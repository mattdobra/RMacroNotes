

######

demand <- tibble(p= c(2,8), q=c(8,2))
demandright <- tibble(p = c(3,9), q = c(9,3))
demandleft <- tibble(p = c(1,7), q = c(7,1))
supply <- tibble(p=c(2,8), q=c(2,8))
supplyright <- tibble(p=c(1,7), q=c(3,9))
supplyleft <- tibble(p = c(3,9), q = c(1, 7))


##### Modifiable graph

ggplot(mapping = aes(x = q, y = p)) + 
    ## Base Graph Begin**
    geom_path(data = demand, color = "#00205B", size = 1.2) + 
    annotate("text", x=8.4, y=2, label = "D[1]", color = "#00205B", size = 6, parse = TRUE) +
    geom_path(data = supply, color = "#0A863D", size = 1.2) + 
    annotate("text", x=8.4, y=8, label = "S[1]", color = "#0A863D", size = 6, parse = TRUE) +
    coord_equal() +
    theme_classic(base_family = "sans") +
    theme(plot.title = element_text(size = rel(1.4))) +
    ## End Base Graph ##
    
    ## Demand Right Shift ##
    geom_path(data = demandright, color = "#00205B", size = 1.2, linetype = "dashed") + 
    annotate("text", x=9.4, y=3, label = "D[2]", color = "#00205B", size = 6, parse = TRUE) +
    annotate("segment", x = 3.2, xend = 3.8, y = 7.2, yend = 7.8,
             arrow = arrow(length = unit(.5, "lines")), colour = "#99999A", size = 1) +
    annotate("segment", x = 7.2, xend = 7.8, y = 3.2, yend = 3.8,
             arrow = arrow(length = unit(.5, "lines")), colour = "#99999A", size = 1) +
    
    ## Demand Left Shift ##
    geom_path(data = demandleft, color = "#00205B", size = 1.2, linetype = "dashed") + 
    annotate("text", x=7.4, y=1, label = "D[2]", color = "#00205B", size = 6, parse = TRUE) +
    annotate("segment", x = 2.8, xend = 2.2, y = 6.8, yend = 6.2,
             arrow = arrow(length = unit(.5, "lines")), colour = "#99999A", size = 1) +
    annotate("segment", x = 6.8, xend = 6.2, y = 2.8, yend = 2.2,
             arrow = arrow(length = unit(.5, "lines")), colour = "#99999A", size = 1) +
    
    ##SUpply Right Shift ##
    geom_path(data = supplyright, color = "#0A863D", size = 1.2, linetype = "dashed") + 
    annotate("text", x=9.4, y=7, label = "S[2]", color = "#0A863D", size = 6, parse = TRUE) +
    annotate("segment", x = 3.2, xend = 3.8, y = 2.8, yend = 2.2,
             arrow = arrow(length = unit(.5, "lines")), colour = "#99999A", size = 1) +
    annotate("segment", x = 7.2, xend = 7.8, y = 6.8, yend = 6.2,
             arrow = arrow(length = unit(.5, "lines")), colour = "#99999A", size = 1) +
    
    ##Supply Left Shift ##
    geom_path(data = supplyleft, color = "#0A863D", size = 1.2, linetype = "dashed") +
    annotate("text", x=7.4, y=9, label = "S[2]", color = "#0A863D", size = 6, parse = TRUE) +
    annotate("segment", x =2.8, xend = 2.2, y = 3.2, yend = 3.8,
             arrow = arrow(length = unit(.5, "lines")), colour = "#99999A", size = 1) +
    annotate("segment", x = 6.8, xend = 6.2, y = 7.2, yend = 7.8,
             arrow = arrow(length = unit(.5, "lines")), colour = "#99999A", size = 1) +
    
    ## Graph Labels -- Change title and subtitle as needed ##
    labs(x = "Quantity", y = "Price",
         title = "Supply and Demand Title",
         subtitle = "Subtitle") + # Subtitle
    
    ##editing the x and y axes for the equilibria.  If dots aren't needed, still need to keep limit and expand##
    scale_x_continuous(expand = c(0,0), limit = c(0,10), breaks = c(5,6), labels = expression(Q[1], Q[2])) + ## Set breaks = equilibrium Q
    scale_y_continuous(expand = c(0,0), limit = c(0,10), breaks = c(5,4), labels = expression(P[1], P[2])) + ## Set breaks = equilibrium Q
  
    ## P/Q Arrows (delete if no changes, edit points otherwise. 
    ## Leave .4 from axes and 0.2 from start/end point 
    annotate("segment", x = .4, xend = .4, y = 4.8, yend = 4.2,
             arrow = arrow(length = unit(.5, "lines")), colour = "#99999A", size = 1) +    
    annotate("segment", y = .4, yend = .4, x = 5.2, xend = 5.8,
             arrow = arrow(length = unit(.51, "lines")), colour = "#99999A", size = 1) +    
  
    ## Dashed Lines for equilibria
    annotate("segment", x=0, xend = 5, y = 5, yend = 5, linetype = "dotted") + # horizontal line
    annotate("segment", x=5, xend = 5, y = 0, yend = 5, linetype = "dotted") # vertical line

#########################################################################

##### Graph for Welfare Analysis

demand2 <- tibble(p= c(1,10), q= c(9,0))
supply2 <- tibble(p= c(0,9), q= c(0,9))

ggplot(mapping = aes(x = q, y = p)) + 
  ## Base Graph Begin**
  geom_path(data = demand2, color = "#00205B", size = 1.2) + 
  annotate("text", x=9.2, y=.9, label = "D", color = "#00205B", size = 6, parse = TRUE) +
  geom_path(data = supply2, color = "#0A863D", size = 1.2) + 
  annotate("text", x=9.2, y=9.1, label = "S", color = "#0A863D", size = 6, parse = TRUE) +
  coord_equal() +
  theme_classic(base_family = "sans") +
  theme(plot.title = element_text(size = rel(1.4))) +
  ## End Base Graph ##

    ## Graph Labels -- Change title and subtitle as needed ##
  labs(x = "Quantity", y = "Price",
       title = "Welfare Analysis",
       subtitle = "Subtitle") + # Subtitle
  
  ##editing the x and y axes for the equilibria.  If dots aren't needed, still need to keep limit and expand##
  scale_x_continuous(expand = c(0,0), limit = c(0,10), breaks = c(5,6), labels = expression(Q[1], Q[2])) + ## Set breaks = equilibrium Q
  scale_y_continuous(expand = c(0,0), limit = c(0,10), breaks = c(5,4), labels = expression(P[1], P[2])) + ## Set breaks = equilibrium Q
  
  ## P/Q Arrows (delete if no changes, edit points otherwise. 
  ## Leave .4 from axes and 0.2 from start/end point 
  annotate("segment", x = .4, xend = .4, y = 4.8, yend = 4.2,
           arrow = arrow(length = unit(.5, "lines")), colour = "#99999A", size = 1) +    
  annotate("segment", y = .4, yend = .4, x = 5.2, xend = 5.8,
           arrow = arrow(length = unit(.51, "lines")), colour = "#99999A", size = 1) +    
  
  ## Dashed Lines for initial equilibrium
  annotate("segment", x=0, xend = 5, y = 5, yend = 5, linetype = "dotted") + # horizontal line
  annotate("segment", x=5, xend = 5, y = 0, yend = 5, linetype = "dotted") # vertical line

