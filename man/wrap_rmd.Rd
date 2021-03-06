\name{wrap_rmd}
\alias{wrap_rmd}
\title{Wrap long lines in Rmd files}
\usage{
wrap_rmd(file, width = 80, text = NULL, backup)
}
\arguments{
  \item{file}{the input Rmd file}

  \item{width}{the expected line width}

  \item{text}{an alternative to \code{file} to input the
  text lines}

  \item{backup}{the path to back up the original file (in
  case anything goes wrong); if \code{NULL}, it is ignored;
  by default it is constructed from \code{file} by adding
  \code{__} before the base filename}
}
\value{
If \code{file} is provided, it is overwritten; if \code{text} is
  provided, a character vector is returned.
}
\description{
This function wraps long paragraphs in an R Markdown file. Other elements are
not wrapped: the YAML preamble, fenced code blocks, section headers and
indented elements. The main reason for wrapping long lines is to make it
easier to review differences in version control.
}
\note{
Currently it does not wrap blockquotes or lists (ordered or unordered).
  This feature may or may not be added in the future.
}
\examples{
wrap_rmd(text = c("```", "1+1", "```", "- a list item", "> a quote", "", 
    paste(rep("this is a normal paragraph", 5), collapse = " ")))
}
