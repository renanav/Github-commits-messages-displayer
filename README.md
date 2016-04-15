#Github commits displayer

In this (very cool if I may add) ruby script that I created, a user is being prompted for his Github username and for the repository name.
Afterwards, using the [Github API](https://developer.github.com/v3/) he is presented only with the  **massages**  of the last and third to last commits of the chosen repository.  
In this script the messages were disisplayed as values inside an array of hashes.  By calling the value of the message I was able to display the message content itself rather than the entire, hard to read commit hash.  
I used _HTTParty_ gem to `get` an HTTP response from the Github API, and _JSON_ module so I can change the the `response.class` from `HTTParty::Response` to `hash` and extracted the required messages.
