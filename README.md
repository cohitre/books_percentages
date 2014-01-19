books_percentages
=================

Getting this to run on your local machine:

    git clone git@github.com:cohitre/books_percentages.git
    cd books_percentages

    gem install bundler
    bundle install
    ruby application.rb

BOOK PERCENTAGES

What percentage of word count does book A share with book B?

Number of unique words Book A shares with Book B / total word count (EXCLUDING repeat words) of Book A

How to deal with repeat words?

If Book A has: whatever whatever whatever whatever bubble

If Book B has: whatever spoon



Then do Books A and B have 50% in common, even though 'whatever' comprises 80% of book A by word count and 50% of book B by word count? 

Maybe we should collapse word repetition to begin with. That's probably a good idea because books contain a lot of word repetition.

So in the above example book A is 50% book B.
