import React, {useState, useEffect} from 'react'
import axios from 'axios'

const Restaurant = () => {
    const [restaurants, setRestaurants] = useState([])

    useEffect(() => {
        //get restaurants using api AND update restaurants in state
        axios.get('/api/v1/restaurants')
        .then(function (response) {
            console.log(response);
        })
        .catch(function (error) {
            console.log(error);
        });
        //use effect requires list so effect only fires when value changes (restaurants.length)
    }, [restaurants.length]);

    return (
        <div>This is the Restaurants#show view</div>
    )
}

export default Restaurant