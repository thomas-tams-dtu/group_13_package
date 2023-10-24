test_that("formating works", {
  expect_equal(dogmaVis::format_to_codons("AUCUUC", start = 1), c("AUC","UUC"))
})
