source("booksClient.r")

books = booksClient.ListBooks()
books

req <- new("GetBookRequest", name="books/00c3")

book = booksClient.GetBook(req)
book

