DeedeegMyNewPackage19823402View = require './deedeeg-my-new-package-19823402-view'
{CompositeDisposable} = require 'atom'

module.exports = DeedeegMyNewPackage19823402 =
  deedeegMyNewPackage19823402View: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @deedeegMyNewPackage19823402View = new DeedeegMyNewPackage19823402View(state.deedeegMyNewPackage19823402ViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @deedeegMyNewPackage19823402View.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'deedeeg-my-new-package-19823402:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @deedeegMyNewPackage19823402View.destroy()

  serialize: ->
    deedeegMyNewPackage19823402ViewState: @deedeegMyNewPackage19823402View.serialize()

  toggle: ->
    console.log 'DeedeegMyNewPackage19823402 was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
