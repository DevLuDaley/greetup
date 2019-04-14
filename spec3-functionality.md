# Specifications for the Sinatra Assessment
***User must be able to see a list of only their resources
***User must only be able to CRUD their resources
***Extra**Password should be invisble during login

****want = "your page" 
###when on "/greetups" the program doesn't know who the user is.. user = nil...why though? 


USER
Specs:

signup
- [x] User can signup/create an account(new_user)
        - [x] user is logged_in upon sign-up 
        - [x] user is taken to their dashboard/homepage upon sign-up


login
- [x] User can login
        - [x] if user info is wrong or blank user receive flash :error message 
        - [x] if user info is correct user is sent to and  user receives flash :welcome message 

While logged_in
- [x] User can Create
- [x] User can Read/View greetup (upon creation)
- [x] User can Read/View all greetups (as a list)
- [] User can ONLY Read/view greetups created by user
- [x] User can ONLY UPDATE/edit greetups created by user
- [x] User can ONLY DESTROY/delete greetups created by user

        - [x] if user info is wrong or blank user receives flash :error message 

logout
- [x] User can logout
        - [] User cannot CRUD while logged_out
        - [x] User cannot C while logged_out
        - [x] User cannot R while logged_out
        - [x] User cannot U while logged_out
        - [x] User cannot D while logged_out


greetup
- [x] User cannot create an empty greetup
        - [x] User receives flash error message 
        - [x] User redirected to create page aka greetups/new 









- [x]  Use ActiveRecord for storing information in a database
- [x]  Include more than one model class (e.g. User, Post, Category)
- [x]  Include at least one has_many relationship on your User model (e.g. User has_many Posts)
- [x]  Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
- [ ] Include user accounts with unique login attribute (username or email)
- [x ] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
        - [x]  Ensure that the belongs_to resource has routes for Creating
        - [x ] Ensure that the belongs_to resource has routes for Reading
     