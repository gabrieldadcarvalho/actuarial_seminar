library(plotly)

set.seed(42)
n = 500
theta = runif(n, 0, 2 * pi)

r1 = sqrt(runif(n, 0, 1))
x1 = r1 * cos(theta)
y1 = r1 * sin(theta)

r2 = sqrt(runif(n, 1, 2))
x2 = r2 * cos(theta)
y2 = r2 * sin(theta)


data = data.frame(
  x = c(x1, x2),
  y = c(y1, y2),
  label = factor(rep(0:1, each = n))
)

plot_ly(data, x = ~x, y = ~y, color = ~label, colors = c("blue", "red")) %>%
  add_markers() %>%
  layout(
    title = "SVM Data Visualization",
    xaxis = list(title = "X-axis"),
    yaxis = list(title = "Y-axis"),
    showlegend = TRUE
  )

# Kernel SVM 3D Visualization
data$z = data$x^2 + data$y^2

plot_ly(
  data,
  x = ~x,
  y = ~y,
  z = ~z,
  color = ~label,
  colors = c("blue", "red")
) %>%
  add_markers() %>%
  layout(
    title = "Kernel SVM 3D Visualization",
    scene = list(
      xaxis = list(title = "X-axis"),
      yaxis = list(title = "Y-axis"),
      zaxis = list(title = "Z-axis")
    )
  ) %>%
  add_surface(
    x = c(-2, 2),
    y = c(-2, 2),
    z = matrix(1, nrow = 2, ncol = 2),
    showscale = FALSE,
    opacity = 0.5
  )
