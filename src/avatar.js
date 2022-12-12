import React, { Component } from 'react';
import data from "./data"; 

class Avatar extends Component {
	render() {
		return (
                  data.usersGrade = data.usersGrade.sort((a, b) => (a.percentgrade < b.percentgrade) ? 1 : -1),
                    data.usersGrade.map((user, index) => {
                        if (user.username === 'test') {
                            return null;
                        }
                        return (
                            index++,
                            <div className='avatar'>
                                <span className="index">{index}</span>
                                <span className='username'>{user.username}</span>
                                <span className='grade'><span>{user.percentgrade}%</span></span>
                            </div>
                        )
                    })
        )
    }
} 
export default Avatar;