# Q1: Load igraph and create network graph
library(igraph)

edges <- data.frame(
  From = c("A", "A", "B", "C", "C", "D", "E", "F", "G", "H"),
  To   = c("B", "C", "D", "D", "E", "E", "F", "G", "H", "A")
)

# Create undirected graph object
g <- graph_from_data_frame(edges, directed = FALSE)

# Basic Network Plot
plot(g, main = "Network Graph")
# Q2: Customized Network Visualization
plot(g, 
     vertex.label = V(g)$name,
     vertex.color = "lightblue",
     vertex.frame.color = "navy",
     vertex.size = 30,
     vertex.label.color = "black",
     vertex.label.font = 2,
     edge.color = "gray50",
     edge.width = 2,
     main = "Customized Network Graph")
# Q3: Calculate Degree of Each Node
node_degrees <- degree(g)
print(node_degrees)

# Output:
# A B C D E F G H 
# 3 2 3 3 3 2 2 2
# Q4: Find Node(s) with Maximum Connections
max_degree <- max(node_degrees)
max_nodes <- names(node_degrees[node_degrees == max_degree])
cat("Node(s) with highest connections (Degree =", max_degree, "):", paste(max_nodes, collapse=", "), "\n")
# Q5: Plot Network using Circular Layout
plot(g, 
     layout = layout_in_circle(g),
     vertex.color = "lightgreen",
     vertex.size = 28,
     vertex.label.color = "darkgreen",
     vertex.label.font = 2,
     edge.color = "darkgray",
     main = "Network Graph - Circular Layout")
