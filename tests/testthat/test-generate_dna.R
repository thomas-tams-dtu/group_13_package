
test_that("dna_is_generated", {
  set.seed(1)
  expect_equal(generate_dna(10), "ACGATAGGTT")
})

