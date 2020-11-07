import React, {Fragment, useState, useEffect} from 'react'
import axios from 'axios'

const Restaurants = () => {
    const [restaurants, setRestaurants] = useState([])

    useEffect(() => {
        //get restaurants using api AND update restaurants in state
        axios.get('/api/v1/restaurants')
        .then(function (response) {
            console.log(response);
            //update restaurants value in state
            setRestaurants(response.data.data)
        })
        .catch(function (error) {
            console.log(error);
        });
        //use effect requires list so effect only fires when value changes (restaurants.length)
    }, [restaurants.length]);

    const list = restaurants.map( item => {
    return (<li key={item.attributes.name}>{item.attributes.name} : {item.attributes.image_url} : {item.attributes.slug}</li>)
    })

    return (
        <Fragment>
            <div>This is the Restaurants#index view</div>
            <ul>
                {list}
            </ul>
        </Fragment>
        
    )
}

export default Restaurants