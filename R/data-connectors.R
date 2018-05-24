#' Easily Connect to RStudio SFDC Data
#'
#' @param token By default, we'll use RStudio to prompt and store the SFDC token
#' @param pwd By default, we'll use RStudio to prompt and store the SFDC token
#' @param uid Your SFDC username
#' @return An odbc connection object, see db.rstudio.com
#' @export
get_sales_data <- function(
  token = rstudioapi::askForSecret('SFDCtoken',
                                     'Enter SFDC token, it will be securely cached!',
                                     'SalesForce'),
  pwd = rstudioapi::askForSecret('SFDCpassword',
                                 'Enter SFDC Password, it will be securely cached!',
                                 'SalesForce'),
  uid) {
  con <- DBI::dbConnect(odbc::odbc(),
         'SFDC DSN',
         UID = uid,
         PWD = pwd,
         SecurityToken = token
         )
  con
}
