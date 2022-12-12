import React, { Component } from 'react';
import './App.css';
import data from "./data"; 
import Avatar from "./avatar";

class App extends Component {
    render() {
        return (
            <div className="App">
              <div className="mountain">
                <Avatar></Avatar>
              </div>
            </div>
        );
    }
}
 
export default App;