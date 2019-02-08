library(tsShiny);
library(shiny);
data('ui_inputs');
ui_inputs;
res <- getArgList(ui_inputs);
library(openxlsx);
write.xlsx(res,"function_arg_list.xlsx");
