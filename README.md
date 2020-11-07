# Fast Food Reviews
Shubh's take on a fast food review website using ruby on rails and react

# Prerequisites
- Must have PostgreSQL, yarn, Ruby, Rails, node (and npm) installed before starting

# Notes
- postgresql was setup with username 'ultimateogee' and password 'testpass'
- When adding the serializer(s) you need to reload the rails console if testing to see if it works there, stop spring (spring stop) and then enter the rails console again
- routes for react:
  - there is a strict folder where ruby on rails can pickup the correct route to index...
    - app/views/pages/index.html.erb

# Models (postgresql database entities)
1. Restaurant
    - name : string
    - image_url : string
    - slug : string
2. Review
    - title : string
    - description : string
    - score : integer
    - belongs_to : restuarant
