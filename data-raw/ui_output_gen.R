ui_outputs <-c(
  'dataTableOutput',
  'imageOutput',
  'plotOutput',
  'verbatimTextOutput',
  'tableOutput',
  'textOutput',
  'uiOutput',
  'htmlOutput'
)
devtools::use_data(ui_outputs,overwrite = TRUE);

library(tsShiny);
library(shiny);
res <- getArgList(ui_outputs)
library(openxlsx);
write.xlsx(res,"./data-raw/ui_output_function_arg_list.xlsx");
