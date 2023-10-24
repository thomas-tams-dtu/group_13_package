plot_aa_dist <- function(data){
  # Find the unique amino acids of the input string
  amino_acids <- data |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count the number of amino acids in the string
  counts <- sapply(amino_acids, function(amino_acid) stringr::str_count(string = data, pattern =  amino_acid)) |>
    as.data.frame()

  # Rename the column to "counts" and add a column with the amino acid names
  colnames(counts) <- c("counts")
  counts[["amino_acids"]] <- rownames(counts)

  # Create a count distribution plot of the number of amino acids in the string
  dist_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = amino_acids, y = counts, fill = amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none") +
    ggplot2::labs(
      x = "Amino Acids",
      y = "Counts",
      title = "Count distribution of the amino acids in the sequence"
    )

  return(dist_plot)
}
