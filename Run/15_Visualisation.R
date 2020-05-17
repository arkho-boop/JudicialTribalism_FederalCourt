graph <- graph_from_adjacency_matrix(
  adjacency.adj,
  mode = "undirected",
  weighted = TRUE
)
plot(graph,
  vertex.label.cex = 0.3,
  vertex.label.family = "sans",
  vertex.size = 3,
  vertex.color = '#ffffff',
  vertex.label.color = "#000000",
  vertex.label.degree = pi/2,
  vertex.label.dist = 0.5,
  layout = layout.fruchterman.reingold
) 
