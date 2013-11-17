books_percentages
=================

Getting this to run on your local machine:

    git clone git@github.com:cohitre/books_percentages.git
    cd books_percentages

    gem install bundler
    bundle install
    ruby application.rb

BOOK PERCENTAGES

what percentage of word count does book A share with book B?

number of (UNIQUE) words book A shares with book B / total word count (EXCLUDING repeat words) of 			book A

how to deal with repeat words?

if book A has: whatever whatever whatever whatever bubble

if book B has: whatever spoon



then do books A and B have 50% in common, even though 'whatever' comprises 80% of book A by word count and 50% ob book B by word count? 

Maybe we should collapse word repetition to begin with. That's probably a good idea because books contain a lot of word repetition.

So in the above example book A is 50% book B.