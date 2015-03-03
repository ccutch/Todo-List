

module.exports = TodoItem = React.createClass
	render: ->
		item = @props.item

		<li key={ @props.key } 
			onClick={ @props.check } 
			data-complete={item.get('complete')}
			className='todo-item'>			
			
			<input type='checkbox' 
				className='checkbox'
				readOnly={true} 
				checked={item.get 'complete'}/>

			<h3 className='title'>{ item.get('title') }</h3>
		</li>