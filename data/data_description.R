#' United States Presidential Debate Transcripts Data File
#'
#' A tibble containing transcripts for presidential debates hosted on The American Presidency Project.
#' Most Presidential and Vice Presidential debates since 1960 are included though 1964, 1968, 1972 are missing.
#' Primary debates are included for 2008, 2012, 2016, and 2020.
#'
#' @format An object of class \code{tibble} with 40,038 rows and 6 columns.
#' \describe{
#' \item{speaker}{Uppercase name of the speaker}
#' \item{text}{The text of the speaker's statement}
#' \item{date}{The date the debate took place}
#' \item{candidate}{Indicates if the speaker is a candidate in the election that year}
#' \item{year}{The election year associated with the debate}
#' \item{type}{The election type. Possible values include Presidential, Vice Presidential, Democratic, and Republican Primary}
#' }
#'
#' @docType data
#' @usage data(pres_debates)
#' @keywords datasets
#' @name pres_debates
#' @format A tibble.
#' @source The American Presidency Project \href{Debate Archive}{https://www.presidency.ucsb.edu/documents/presidential-documents-archive-guidebook/presidential-campaigns-debates-and-endorsements-0}
'pres_debates'