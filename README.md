# Description
Best in the Land helps users find the best item in any category.  Users can find other people's favorites, vote on them, and create their own.  
 
# Technologies
### Ruby on Rails, JavaScript

# Approach
My aim was to create a clean and simple app that had minimal, but effective styling, and was extremely functional.  I started by deciding how I wanted the basic CRUD and views to work. I wrote user stories and drew wireframes to use as guides.  
When the CRUD functionality for all of the resources was built, I spent a lot of time styling and working on authorization.  I only added new features when the basic CRUD was fully functional with error messages and validations, it worked great on heroku, and it looked professional.

# Installation
- clone this repo
- bundle install
- rake db:migrate
- rails server
- make sure you have Postgres running!

#User Stories
- Jimbo is looking for the best burrito in SF. He navigates to Best in the Land. From here, Jimbo can search for his category of interest, signup, login, and see new, active, and popular posts. Jimbo searches for burrito and finds it in the search results. He can see that it currently lists taqueria cancun as the most popular burrito. Jimbo closes his browser and heads out to go eat.
- Savannah goes to Bestof and searches for burrito. She finds the list but disagress with the assessment. She wants to add her own burrito choice to the list but the search bar is missing and she in unable to downvote current burritos. Savannah signs up for Bestof and the search bar appears on the burrito show page. Savannah adds el Metate to the list and upvotes it. She downvotes all other burritos
- Cliff goes to best of and searches for ice oolong tea but he gets back no results. However, he is prompted to create an oolong category with press of a button, which he does, but "oh no!, Cliff is not signed in" A validation tooltip pops up when he presses the button telling him to please login or signup to create category. Cliff signs up and goes to the oolong page where he puts in his favorite tea and upvotes it.

#Wireframes

![login](http://i.imgur.com/kQMljRI.jpg)
![login](http://i.imgur.com/G1Cqa3O.jpg)
![login](http://i.imgur.com/1JC9wgr.jpg)
![login](http://i.imgur.com/dUVua10.jpg)
![login](http://i.imgur.com/gogJRlD.jpg)

#Entity Relationship Diagram

![login](http://i.imgur.com/FjGcPY5.jpg)

#Unsolved Problems/Major Hurdles

The biggest hurdle I faced was deciding on a vision for the project.  I had a really tough time trying to decide how the app would work and what features were most important.  I still haven't decided where I want to go with it, but I think a feature that filtered results locally and globally would be useful.  Google Places autocomplete works but only for addresses and not for businesses.  I either need to use the geocoding feature with the geocomplete funciton and figure a work around for the autocomplete, or remove the geocomplete gem and just use autocomplete.

I'm still having some small problems with styling.  I don't like the way the searchbar collapses on mobile, best items display differently when users are not logged in, and list items on the user show page display differently towards the top of the list.

#Trello

https://trello.com/b/7gGYdVOx/final-project

#Heroku

https://bestintheland.herokuapp.com/