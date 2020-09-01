import React from "react"; 
import { BrowserRouter as Router, Switch, Route, Redirect } from "react-router-dom"; 

/** 
 * @requires Pages 
 */ 
import HomePage from './HomePage'; 

/**
 * Routes 
 * 
 * @export 
 * @returns {Switch} Routes 
 **/ 
export default function Routes(): React.ReactElement{
    return ( 
        <Router>
            <Switch> 
                <Route path='/' component={HomePage} />
            </Switch> 
            <Redirect from='/oauth/callback' to='/' />
        </Router>
    ); 
} 
