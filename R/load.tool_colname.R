#' Load the label column name from the tool survey
#'
#' It is better to assign this function to a variable called label_colname.
#' This variable will be the input to many other functions.
#'
#' @param filename_tool a link to the tool filename
#' @param language define the language of the label to be used
#'
#' @return the name of the label column
#' @export
#'
#' @examples
#' \dontrun{
#' filename_tool <- "tool.xlsx"
#' label_colname <- load.label_colname(filename_tool, language = "English")
#' }

load.label_colname <- function(filename_tool, language = "English"){
  tool_colnames <- readxl::read_xlsx(filename_tool, sheet = "survey", col_types = "text") %>% names
  return(tool_colnames[agrep(paste0("label::",language), tool_colnames)])
}




