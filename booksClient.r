
#Require the packages so you can use them
require("httr")
require("jsonlite")

setClass("GetBookRequest", representation(name="character"))

booksClient.ListBooks <- function() {
  base <- "https://foo-br-prod-b10-4nk5yo6t.ew.gateway.dev/resources/store/"
  endpoint <- "v1/books"
  url <- paste(base, endpoint, sep="")
  
  books <- GET(url, add_headers("Content-Type" = "application/json"))
  
  return(content(books, type = "application/json"))
}

booksClient.GetBook <- function(req) {
  base <- "https://foo-br-prod-b10-4nk5yo6t.ew.gateway.dev/resources/store/v1"
  endpoint <- paste("/", req@name, sep="") 
  url <- paste(base, endpoint, sep="")
  
  book <- GET(url, add_headers("Content-Type" = "application/json"))
  
  return(content(book, as = "parsed", type = "application/json"))
}