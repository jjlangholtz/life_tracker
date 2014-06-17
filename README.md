# Summary

This is a Rails web application with two RESTful resources, Schools and Life
Events. Users can add, edit, and delete records of these two resources and view
them online.

# Usage

- Clone the repo
-     rails server
- Navigate to localhost:3000/schools to modify your list of schools
- Navigate to localhost:3000/life\_events to modify your list of life events

# TODO

- Validate life event description must be less than or equal to 140 characters
- Validate school's beginning year cannot be greater than ending year
- Create a new controller, HomeController, that shows both views on root
