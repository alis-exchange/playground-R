
#Require the packages so you can use them
require("httr")
require("jsonlite")

# Create a 'GetBookRequest' class with name field
setClass("GetBookRequest", representation(name="character"))

# ListBooks() function making a GET request to the books/ endpoint
booksClient.ListBooks <- function() {
  # Base URL
  base <- "https://foo-br-prod-b10-4nk5yo6t.ew.gateway.dev/resources/store/"
  # Endpoint which is our defined resource
  endpoint <- "v1/books"
  # Concatenate the base URL and the endpoint
  url <- paste(base, endpoint, sep="")
  
  # Make a GET request to the endpoint
  books <- GET(url, add_headers("Content-Type" = "application/json"))
  
  return(content(books, type = "application/json"))
}

# GetBook() function making a GET request to the books/:id endpoint
booksClient.GetBook <- function(req) {
  # Base URL
  base <- "https://foo-br-prod-b10-4nk5yo6t.ew.gateway.dev/resources/store/v1"
  # Endpoint which is our defined resource's name
  endpoint <- paste("/", req@name, sep="")
  # Concatenate the base URL and the endpoint 
  url <- paste(base, endpoint, sep="")
  
  # Make a GET request to the endpoint
  book <- GET(url, add_headers("Content-Type" = "application/json"))
  
  return(content(book, as = "parsed", type = "application/json"))
}