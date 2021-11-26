# track_ip
## You need to have installed:

- Ruby version 2.7.2
- Bundler version 2.2.24

## To run the script do the following:
  From the terminal enter the address of the folder <br>
  Now install the necessary gems with bundle, for it run from the terminal: ``$ bundle install`` <br>
  To run the script, run: ``$ ruby track_ip.rb``.
## Questions
### What would you do differently if you had more time?
  I would look for a gem that would help me simplify my code more and also lower the execution time.
### What is the execution complexity of each function?
  I don't know the exact terms but for top100 I just do one iteration with max(100) to get the ips and then I do another iteration but only to show the ip without the score.
### How does your code work?
  after initializing the class it receives the data where I store it in a hash where the ip is the key and the value will be its score (+=1), after that I extract the 100 that has the highest score and print its key which would be the ip
### What other approaches have you decided not to follow?
  Well, I didn't follow my idea of saving the data in array because it was too complex to manipulate all that data.
### How would you test it?
  I put an example below, I used Faker to get test ips and then I call the request_handle function 20million times and it saves it in a hash and then I call the top100 function. I used benchmark to see the execution time of each function.
