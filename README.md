# Welcome to alis.exchange playground for R

> To open the `README.md` file in preview mode press down `⇧ + ⌘ + v` for Mac or ` shift + ctrl + v` for Windows.

This repo houses the [quickstart example](https://docs.alis.exchange/getting-started/quick-start.html) part of the **alis.exchange** documentation for R.

We have preconfigured the development environment for you to easily make your first request without having to worry about any setup.

## Make a request using R

1. Open up the terminal (Mac: `⌘ + j`, Windows: `ctrl + j` ) and ensure that you are in the `playground-R` directory.

If executing this example on Gitpod, run the following command from the terminal if you are not in the `playground-R` directory:

```bash
$ cd playground-R
```

2. Run the code by running the terminal command:

```bash
$ Rscript booksConsume.r
```
## Get a feel for the **alis.exchange** experience

Interested in trying something for yourself?

We suggest creating your own function and incorporating a request to the `BooksClient`. Some suggestions of things to try:

* Loop through all the books and print out the author.
* Get a book and wrangle the response to be printed out in a sentence structure.
* Use the response of `ListBooks` to make multiple `GetBook` requests.

# Next steps

**Ready to join alis.exchange?** [Get in touch](https://alis.exchange/signup).