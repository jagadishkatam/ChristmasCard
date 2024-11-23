

# Coordinates of the vertices of the triangle
x <- c(1, 4, 2.5)
y <- c(1, 1, 4)

# Coordinates of the center of the circle
circle_x <- 2.5
circle_y <- 4

# Create a data frame with the coordinates
triangle_data <- data.frame(x, y)

geompoint <- data.frame(x=seq(1,4,0.1),
                        y=rep(1,31))

set.seed(100)
# Number of snowflakes
num_snowflakes <- 250

# Generate random coordinates for snowflakes
snowflakes_data <- data.frame(
  snowflake_x = runif(num_snowflakes, min = 0, max = 5),
  snowflake_y = runif(num_snowflakes, min = 0, max = 5),
  snowflake=1
)


geomtext <- data.frame(xt='May the yuletide season bring happiness, joy, peace \nand prosperity to you and your family')

# Plotting the triangle and circle using ggplot2
ggplot(triangle_data, aes(x, y)) +
  geom_polygon(fill = "red", color = "red") +
  geom_point(aes(circle_x, circle_y), size = 17, color = "white", fill='white') +
  geom_point(data=geompoint,aes(x, y), size = 17, color = "white", fill='white') +
  # transition_states(geompoint$y, transition_length = 1, state_length = 1) +
  # enter_fly() +
  # exit_fade() +
  geom_text(x = 2.5, y = 0.3, label = "Merry Christmas", size = 12, color = "orange") +
  geom_text(data=geomtext,aes(x = 2.5, y = 4.8, label = xt), size = 12, color = "orange") +
  # transition_reveal(geomtext$xt) +
  # enter_fly() +
  xlim(0, 5) +
  ylim(0, 5) +
  # ggtitle("Triangle with Circle in R using ggplot2") +
  theme_classic() +
  theme(panel.background = element_rect(fill = "#0e1c2e"),
        legend.position = 'none',
        panel.border = element_blank(),
        panel.grid = element_blank(),
        axis.ticks.x = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.y = element_blank(),
        axis.text.y = element_blank()
  ) +
  labs(x='',y='') +
  geom_polygon(
    data = data.frame(
      x = c(0, 0.5,0.25),
      y = c(3, 3,3.5)
    ),
    mapping = aes(x = x, y = y),
    fill = "darkgreen",
    colour = "darkgreen"
  ) +
  geom_polygon(
    data = data.frame(
      x = c(0, 0.5,0.25),
      y = c(2.5, 2.5,3)
    ),
    mapping = aes(x = x, y = y),
    fill = "darkgreen",
    colour = "darkgreen"
  ) +
  geom_polygon(
    data = data.frame(
      x = c(0, 0.5,0.25),
      y = c(2, 2,2.5)
    ),
    mapping = aes(x = x, y = y),
    fill = "darkgreen",
    colour = "darkgreen"
  ) +
  geom_polygon(
    data = data.frame(
      x = c(0, 0.5,0.25),
      y = c(1.5, 1.5,3.5)
    ),
    mapping = aes(x = x, y = y),
    fill = "darkgreen",
    colour = "darkgreen"
  ) +
  annotate(
    geom = "rect",
    xmin = 0.2,
    xmax = 0.3,
    ymin = 1.0,
    ymax = 1.5,
    fill = "brown"
  ) +
  geom_polygon(
    data = data.frame(
      x = c(4.5, 5,4.75),
      y = c(3, 3,3.5)
    ),
    mapping = aes(x = x, y = y),
    fill = "darkgreen",
    colour = "darkgreen"
  ) +
  geom_polygon(
    data = data.frame(
      x = c(4.5, 5,4.75),
      y = c(2.5, 2.5,3)
    ),
    mapping = aes(x = x, y = y),
    fill = "darkgreen",
    colour = "darkgreen"
  ) +
  geom_polygon(
    data = data.frame(
      x = c(4.5, 5,4.75),
      y = c(2, 2,2.5)
    ),
    mapping = aes(x = x, y = y),
    fill = "darkgreen",
    colour = "darkgreen"
  ) +
  geom_polygon(
    data = data.frame(
      x = c(4.5, 5,4.75),
      y = c(1.5, 1.5,3.5)
    ),
    mapping = aes(x = x, y = y),
    fill = "darkgreen",
    colour = "darkgreen"
  ) +
  annotate(
    geom = "rect",
    xmin = 4.7,
    xmax = 4.8,
    ymin = 1.0,
    ymax = 1.5,
    fill = "brown"
  ) + 
  annotate(
    geom = "text",
    x = 4.5,
    y = 0.07,
    label = "\n From : Jagadish",
    colour = "red3",
    fontface = "bold",
    size = 7
  ) +
  geom_point(aes(x=2.5,y=2.9), size=25, color='white', fill='white') +
  geom_point(aes(x=2.5,y=2.5), size=35, color='white', fill='white') +
  geom_point(aes(x=2.5,y=2), size=50, color='white', fill='white') +
  geom_point(aes(x=2.5,y=1.8), size=3, color='black', fill='black') +
  geom_point(aes(x=2.5,y=2), size=3, color='black', fill='black') +
  geom_point(aes(x=2.5,y=2.2), size=3, color='black', fill='black') +
  geom_point(aes(x=2.5,y=2.4), size=3, color='black', fill='black') +
  # geom_point(aes(x=2.5,y=2.6), size=3, color='black', fill='black') +
  geom_point(aes(x=2.49,y=2.69), shape='>' ,size=9, color='black', fill='black') +
  geom_point(aes(x=2.52,y=2.69), shape='<' ,size=9, color='black', fill='black') +
  geom_point(aes(x=2.45,y=2.98), size=3, color='black', fill='black') +
  geom_point(aes(x=2.55,y=2.98), size=3, color='black', fill='black') +
  geom_point(aes(x=2.50,y=2.88), size=4, color='red', fill='red') +
  geom_point(aes(x=2.50,y=2.90), size=4, color='white', fill='white') +
  annotate(
    geom = "segment",
    x = 2.35,
    xend = 2.25,
    y = 2.5,
    yend = 2.8,
    color = "black",
    size = 2
  ) +
  annotate(
    geom = "segment",
    x = 2.8,
    xend = 2.65,
    y = 2.75,
    yend = 2.5,
    color = "black",
    size = 2
  ) +
  annotate(
    geom = "rect",
    xmin = 2.4,
    xmax = 2.6,
    ymin = 3.1,
    ymax = 3.15,
    fill = "black",
    size = 2
  ) +
  annotate(
    geom = "rect",
    xmin = 2.45,
    xmax = 2.55,
    ymin = 3.15,
    ymax = 3.35,
    fill = "black",
    size = 2
  ) +
  geom_point(data = snowflakes_data, aes(snowflake_x, snowflake_y), size = 6, shape = "*", color = "white") #+
# transition_states(snowflakes_data$snowflake, transition_length = 1, state_length = 1) +
# enter_fly() 

ggsave(
  "christmas_card.png",
  plot = last_plot(),
  width = 6,
  height = 6,
  units = "in",
  dpi = 300
)

