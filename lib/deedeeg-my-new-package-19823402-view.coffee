module.exports =
class DeedeegMyNewPackage19823402View
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('deedeeg-my-new-package-19823402')

    # Create message element
    message = document.createElement('div')
    message.textContent = "The DeedeegMyNewPackage19823402 package is Alive! It's ALIVE!"
    message.classList.add('message')
    @element.appendChild(message)

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element
