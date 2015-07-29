#Teacherbook

Because you don't know how to use Gmail.

###What it does

Teacherbook allows teachers to keep all their parent email addresses in one place. Its spartan design and limited functionality guarantee that teachers won't spend too much time using it.  Here are its basic functions:

* Login with email and password(secured by Bcrypt)
* View index of all parents (with associate email address and student name)
* Manage parent information: create, update, and delete records
* Manage personal information: update user password and name

###What it doesn't do

Teacherbook does have its limitations. Users are forbidden from doing the following:

* Viewing other teachers' parents
* Editing or deleting information about other teachers' parents
* Editing or deleting other teachers' personal information

###Check it out

After running `rails server`, `rake db:migrate`, and `rake db:seed`, login with the following seeded information:

* `email: seedy@seeds.seed`
* `password: seeds`


######*Assignment from Week 6 of the Iron Yard's Ruby on Rails course (Durham)*
