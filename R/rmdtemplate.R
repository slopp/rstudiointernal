
#' Return RStudio Logo URL
#'
#' @param color Specifies which logo, one of default, dark, white, or old.
#'
#' @return URL for the logo image
#' @export
get_logo_url <- function(color = 'default'){
  switch(color,
    default = 'https://www.rstudio.com/wp-content/uploads/2014/07/RStudio-Logo-Blue-Gray.png',
    dark = 'https://www.rstudio.com/wp-content/uploads/2014/07/RStudio-Logo-All-Gray.png',
    white = 'https://www.rstudio.com/wp-content/uploads/2014/07/RStudio-Logo-All-White.png',
    old  = 'https://www.rstudio.com/wp-content/uploads/2014/07/RStudio-Logo-Blue-Gradient.png'
  )
}

#' RStudio HTML RMD Theme
#'
#' @export
rstudio_doc <- function() {
  css <- system.file("rmarkdown/templates/rstudio_html_template/skeleton/styles.css", package = "rstudiointernal")

  rmarkdown::html_document(
    css = css
  )
}
