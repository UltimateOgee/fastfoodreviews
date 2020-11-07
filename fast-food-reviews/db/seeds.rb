# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

restaurants = Restaurant.create([
  { 
    name: "McDonalds",
    image_url: "https://1000logos.net/wp-content/uploads/2017/03/Mcdonalds-Logo-1024x640.png"
  }, 
  { 
    name: "Chic-fil-a",
    image_url: "https://1000logos.net/wp-content/uploads/2018/01/chick-fil-a-logo-768x432.png"
  },
  { 
    name: "KFC",
    image_url: "https://1000logos.net/wp-content/uploads/2017/03/KFC-Logo.png" 
  }, 
  { 
    name: "Taco Bell",
    image_url: "https://1000logos.net/wp-content/uploads/2017/06/Taco-Bell-Logo-1024x640.png" 
  },  
  { 
    name: "Chipotle",
    image_url: "https://1000logos.net/wp-content/uploads/2017/11/Chipotle-Logo-768x563.png" 
  }
])

reviews = Review.create([
    { 
        title: 'mcdonalds is nice',
        description: 'they served me some nice food!', 
        score: 5,
        restaurant: restaurants.first
    },
    { 
        title: 'mcdonalds is bad',
        description: 'they served me some bad food!', 
        score: 1,
        restaurant: restaurants.first
    }
])