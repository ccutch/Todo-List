


module.exports = CookieNotification = React.createClass
	getInitialState: ->
		active: false

	componentDidMount: ->
		setTimeout (=>
			@setState
				active: true
			), 500

	close: ->
		@setState
			active: false

	render: ->
		<div className='cookie-notification' data-active={@state.active}>

			<span className='cookie-notification-text'>
				We are using your browsers local storage to store data that is essencial for this app. If you would like more information please 
				<a href='mailto:connormccutcheon95@gmail.com'>send me an email.</a>
			</span>
			
			<button className='cookie-notification-close'
				onClick={@close}>X</button>

		</div>