# install.packages("factoextra")
library(factoextra)

set.seed(42)
data(iris)
head(iris)

x <- iris[, 1:4]
k <- 3

kmeansResult <- kmeans(x, centers = k)

fviz_cluster(kmeansResult,
  data = x,
  main = "K-means Clustering of Iris Dataset",
  geom = "point",
  pointsize = 3,
  ellipse.type = "convex",
  repel = TRUE
) +
  geom_point(aes(color = iris$Species), size = 3, alpha = 1) +
  scale_color_manual(values = c(
    "setosa" = "#1b9e77",
    "versicolor" = "#d95f02",
    "virginica" = "#7570b3"
  )) +
  labs(color = "True Species") +
  theme_minimal(base_size = 14) +
  theme(legend.position = "right")

table(kmeansResult$cluster, iris$Species)
