adjacency.adj <- adjacency/tot.adjacency - 0.5

adjacency.adj <- adjacency.adj[eligible.judges, eligible.judges]

adjacency.adj[is.nan(adjacency.adj)] <- 0
