# Specifications for the Sinatra Assessment

USER
Specs:
login
- [x] User can login
        - [x] if user info is wrong or blank user receive flash :error message 
        - [x] if user info is correct user is sent to and  user receives flash :welcome message 

While logged_in
- [x] User can Create
- [x] User can Read/View greetup (upon creation)
- [x] User can Read/View all greetups (as a list)
- [] User can ONLY Read/view greetups created by user
- [] User can ONLY UPDATE/edit greetups created by user
- [] User can ONLY DESTROY/delete greetups created by user

        - [x] if user info is wrong or blank user receives flash :error message 

logout
- [x] User can logout
        - [] User cannot CRUD while logged_out
        - [] User cannot C while logged_out
        - [] User cannot R while logged_out
        - [] User cannot U while logged_out
        - [] User cannot D while logged_out

- [x]  Use ActiveRecord for storing information in a database
- [x]  Include more than one model class (e.g. User, Post, Category)
- [x]  Include at least one has_many relationship on your User model (e.g. User has_many Posts)
- [x]  Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
- [ ] Include user accounts with unique login attribute (username or email)
- [ ] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
        - [x]  Ensure that the belongs_to resource has routes for Creating
        - [ ] Ensure that the belongs_to resource has routes for Reading
     