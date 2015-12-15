# Description
### Best in the Land helps users find the best item in any category.  Users find other people's favorites, vote on them, and create their own.  
 
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

![Login/Signup](image1.JPG) <!-- THIS DOESNT WORK -->

<!-- Inline-style: 
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")
 -->

#Entity Relationship Diagrams

#Unsolved Problems/Major Hurdles