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
#' # As an example here is a randomly generated amino acid string
#' aa_string <- "SQRMHLPYRFHHPHPLCGKSNRWEAVFVIHEWQGSESTFPKQEWFFHQQSKVGTRNKPWKDG"
#'
#' # Plot the count distribution of the amino acids in the string
#' plot_aa_dist(aa_string)
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme labs
#' @importFrom stringr str_split boundary str_count
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
      y = "Counts",
      title = "Count distribution of the amino acids in the sequence"
    )

  return(dist_plot)
}
