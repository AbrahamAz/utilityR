testthat::test_that("load.tool.choices colnames are correct", {
  testdata <- system.file("extdata","tool.xlsx", package = "utilityR")
  label_colname <- "label::English"
  actual_output <- load.tool.choices(testdata,label_colname) %>% names
  expected_output <- data.frame(list_name = c("test","test","test2","test2"),
                                name = c("yes","no","dont_know","dont_know"),
                                `label::English` = c("Yes", "No", "Dont know", "Dont know")) %>%
    rename("label::English" = `label..English`)%>% names

  testthat::expect_equal(actual_output,expected_output)

})



