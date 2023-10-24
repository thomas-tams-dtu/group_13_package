#' Divide RNA sequence into codons.
#'
#' @param rna_seq RNA sequence as a string
#' @param start start position of the RNA sequence
#'
#' @return a vector of codons
#' @export
#'
#' @examples
#' rna_seq <- "AUCUUACUG"   # examples rna sequence
#' format_to_codons(rna_seq, start = 1)
#'
format_to_codons <- function(rna_seq, start = 1){
  seq_length <- nchar(rna_seq)
  codons <- substring(rna_seq,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
