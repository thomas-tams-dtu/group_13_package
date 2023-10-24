#' Threonine to uracil
#'
#' @param DNA_sequence The DNA sequence that should have T converted to U.
#'
#' @return The RNA sequence (the DNA sequence with T converted to U)
#' @export
#'
#' @examples
#' DNA <- "ATCA"
#' RNA <- T_to_U(DNA)
#' RNA
T_to_U <- function(DNA_sequence){
  # Converts the DNA sequence (input) to RNA format (output)
  RNA_sequence <- base::gsub("T", "U", DNA_sequence)
  return(RNA_sequence)
}

