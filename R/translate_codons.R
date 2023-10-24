#' Translates a vector of codons to amino acid string
#'
#' @param codons character vector containing codons of length 3
#'
#' @return Amino acid string translated from codons
#' @export
#'
#' @examples
#' codons <- c("CAA", "CGA", "CUG", "CCG") # example character vector of codons
#' translate_codons(test_codons)
translate_codons <- function(codons){
  codon_string <- paste0(codon_dict[codons], collapse = "")
  return(codon_string)
}


