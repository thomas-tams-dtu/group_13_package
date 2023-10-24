#' Visualize the distribution of amino acids in a protein sequence string
#'
#' @param data A character string with amino acids without spaces
#'
#' @return The function will return a ggplot plot object visualizing the count
#' distribution of the amino acids from the input string
#'
#' @export
#'
#' @examples
#'
plot_aa_dist <- function(data){
  amino_acids <- data |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(amino_acids, function(amino_acid) stringr::str_count(string = data, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("counts")
  counts[["amino_acids"]] <- rownames(counts)

  dist_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = amino_acids, y = counts, fill = amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none") +
    ggplot2::labs(
      x = "Amino Acids",
      y = "Counts"
    )

  return(dist_plot)
}
