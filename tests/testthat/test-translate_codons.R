test_that("translation works", {
  expect_equal(translate_codons(c("CAA", "CGA", "CUG", "CCG")), "QRLP")
})

test_that("gives NA for codons not in codon_dict", {
  expect_equal(translate_codons(c("CAA", "CGA", "CUG", "CC")), "QRLNA")
})

