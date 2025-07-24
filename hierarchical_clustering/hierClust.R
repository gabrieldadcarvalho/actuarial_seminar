# Data of heights, weights, and ages
set.seed(42)
X <- matrix(c(
  180, 79, runif(n=1, min=18, max=40),
  175, 75, runif(n=1, min=18, max=40),
  170, 70, runif(n=1, min=18, max=40),
  167, 63, runif(n=1, min=18, max=40),
  180, 71, runif(n=1, min=18, max=40),
  165, 60, runif(n=1, min=18, max=40)
), ncol = 3, byrow = TRUE)

rownames(X) <- c("Wilton", "Rennier", "C", "Ingrind", "Glaybson", "Gabriel")

# List of clusters
clusters <- as.list(rownames(X))
names(clusters) <- rownames(X)

# List of Hierarchical Clustering
hierClust <- list()

while (length(clusters) > 1) {
  # Matrix of distances
  distMatrix <- as.matrix(dist(X))

  # Add NaN for diagonal
  diag(distMatrix) <- NA
  min_idx <- which(distMatrix == min(distMatrix, na.rm = TRUE), arr.ind = TRUE)[1, ]

  i <- rownames(distMatrix)[min_idx[1]]
  j <- colnames(distMatrix)[min_idx[2]]

  # New cluster name
  newCluster <- paste0("(", i, "+", j, ")")

  # New vector with average values
  newVector <- (X[i, ] + X[j, ]) / 2
  X <- rbind(X, newVector)
  rownames(X)[nrow(X)] <- newCluster

  # Remove old clusters
  X <- X[!rownames(X) %in% c(i, j), ]

  # Save history
  hierClust[[length(hierClust) + 1]] <- newCluster

  # Update cluster list
  clusters <- clusters[!names(clusters) %in% c(i, j)]
  clusters[[newCluster]] <- newCluster
}

# Show merge history
print(hierClust)

# Data of heights, weights, and ages
set.seed(42)
X <- matrix(c(
  180, 79, runif(n = 1, min = 18, max = 40),
  175, 75, runif(n = 1, min = 18, max = 40),
  170, 70, runif(n = 1, min = 18, max = 40),
  167, 63, runif(n = 1, min = 18, max = 40),
  180, 71, runif(n = 1, min = 18, max = 40),
  165, 60, runif(n = 1, min = 18, max = 40)
), ncol = 3, byrow = TRUE)

rownames(X) <- c("Wilton", "Rennier", "André", "Ingrind", "Glaybson", "Gabriel")
print(X)

distMatrix <- dist(X)

# Clustering hierárquico com ligação média (average linkage)
hc <- hclust(distMatrix, method = "average")

# Dendrograma
plot(hc, main = "Hierarchical Clustering Dendrogram", xlab = "", sub = "")
