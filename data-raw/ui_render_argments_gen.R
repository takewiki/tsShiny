ui_renders <-c(
  'renderDataTable',
  'renderImage',
  'renderPlot',
  'renderPrint',
  'renderTable',
  'renderText',
  'renderUI'
)

devtools::use_data(ui_renders,overwrite = T);
library(DT);
library(shiny);
res <- getArgList(ui_renders);
library(openxlsx);
write.xlsx(res,"./data-raw/ui_render_function_arg_list.xlsx");
