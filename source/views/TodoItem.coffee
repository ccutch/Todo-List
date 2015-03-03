

module.exports = TodoItem = React.createClass
	render: ->
		item = @props.item

		<li key={ @props.key } 
			data-complete={item.get('complete')}
			data-archived={item.get('archived')}
			className='todo-item'>		

			<div className='todo-item-body'
				onClick={ @props.check } >	
				
				<input type='checkbox' 
					className='checkbox'
					readOnly={true} 
					checked={item.get 'complete'}/>

				<h3 className='title'>{ item.get('title') }</h3>

			</div>

			<div className='todo-item-archive' 
				onClick={ @props.archive }>X</div>

		</li>