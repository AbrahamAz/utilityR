#' Load the 'choices' tab from a Kobo tool.
#'
#' @param filename_tool This is the path to the file that contains the tool
#' @param label_colname This is the variable of the label colname
#'
#' @return A dataframe: tool.choices, it's the same as the 'choices' tab from the tool, filtered to include only distinct rows.
#' @export
#'
#' @examples
#' \dontrun{
#' filename_tool <- "tool.xlsx"
#' tool_choices <- load.tool.choices(filename_tool)
#' }

load.tool.choices <- function(filename_tool, label_colname){
  readxl::read_xlsx(filename_tool, sheet = "choices", col_types = "text") %>%
    dplyr::select(all_of(c("list_name", "name")), !!rlang::sym(label_colname)) %>%
    filter(!is.na(list_name)) %>% dplyr::distinct()
}
