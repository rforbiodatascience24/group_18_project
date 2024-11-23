box_plot <- function(df, x_col, y_col, x_label="", y_label="", title="") {
  b_plot <- ggplot(data = df,
                   mapping = aes(x = {{x_col}},
                                 y = {{y_col}})) + 
    geom_boxplot() +
    xlab(x_label) + 
    ylab(y_label) +
    ggtitle(title)
  
  return(b_plot)
}

density_plot <- function(df, x_col, y_col, z_color, x_label, y_label, title) {
  d_plot <- ggplot(data = df,
                   mapping = aes(x = {{x_col}})) + 
    geom_density() +
    xlab(x_label) + 
    ylab(y_label) +
    ggtitle(title)
  
  return(d_plot)
}


heatmap <- function(df, x_col, y_col, z_color, x_label, y_label, title) {
  h_map <- ggplot(data = df,
                   mapping = aes(x = {{x_col}},
                                 y = {{y_col}},
                                 fill = {{z_color}})) + 
    geom_tile() +
    xlab(x_label) + 
    ylab(y_label) +
    ggtitle(title)
  
  return(h_map)
}