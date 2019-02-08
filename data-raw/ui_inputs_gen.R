ui_inputs <-c(
  'actionButton',
  'actionLink',
  'submitButton',
  'radioButtons',
  'selectInput',
  'checkboxInput',
  'checkboxGroupInput',
  'sliderInput',
  'numericInput',
  'textInput',
  'passwordInput',
  'dateInput',
  'dateRangeInput',
  'fileInput'
)
devtools::use_data(ui_inputs,overwrite = TRUE);
