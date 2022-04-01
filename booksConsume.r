source("booksClient.r")

# List all books
books <- booksClient.ListBooks()
print(books)

# Create a GetBookRequest
req <- new("GetBookRequest", name="books/00c3")

# Get the book with request
book <- booksClient.GetBook(req)
print(book)
