import React, { Component } from 'react';

/*
 * In a land shrouded in mystery ...
 */

class DarkCyberComponent extends Component {
  render() {
    return (
      <div className="dark-cyber-component">
        <h1>Welcome to Dark Hollow Fortress</h1>
        <p>
          This cyber stood from <span className="year">980</span> to <span className="year">1503</span>.
        </p>
        <ul className="features">
          <li>Eerie Glow</li>
          <li>High Battlements</li>
        </ul>
        <input type="number" placeholder="Enter a number" />
      </div>
    );
  }
}

export default DarkCyberComponent;
