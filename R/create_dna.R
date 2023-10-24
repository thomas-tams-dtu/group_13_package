#' generate_dna
#'
#' @description generate a dna string by the given length
#'
#' @param length_of_dna  Length of dna string to generate
#'
#' @return Returns a random generated string of DNA of the given length
#' @export
#'
#' @examples
#'
#' #Generates a dba string of length 10
#' generate_dna(10)
#'
#' #Generates a dba string of length 20
#' generate_dna(20)
#'
generate_dna <- function(length_of_dna){
  dna_vector <- sample(c("A", "T", "G", "C"), size = length_of_dna, replace = TRUE)
  dba_string <- paste0(dna_vector, collapse = "")
  print(dba_string)
  return(dba_string)
}
