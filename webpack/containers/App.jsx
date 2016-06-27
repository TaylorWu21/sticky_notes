import React from 'react';

class App extends React.Component {
	constructor(props) {
		super(props);
		this.state = { stickies: [] };
	}

	componentWillMount() {
		$.ajax({
			url: '/api/notes',
			type: 'GET'
		}).done( stickies => {
			this.setState({ stickies });
		}).fail( data => {
			console.log(data);
		})
	}

	render() {
		return(
			<div>
				<h1>Sticky Notes</h1>
				<div className="row">
	        <div className="col s12 m3">
	          <div className="card lime accent-1">
	            <div className="card-content">
	              <p>NOTES</p>
	            </div>
	            <div className="card-action">
	              <a href="#">Edit</a>
	              <a href="#">Delete</a>
	            </div>
	          </div>
	        </div>
	      </div>
			</div>
		)
	}
}

export default App;

