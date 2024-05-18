DeedeegMyNewPackage19823402 = require '../lib/deedeeg-my-new-package-19823402'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "DeedeegMyNewPackage19823402", ->
  [workspaceElement, activationPromise] = []

  beforeEach ->
    workspaceElement = atom.views.getView(atom.workspace)
    activationPromise = atom.packages.activatePackage('deedeeg-my-new-package-19823402')

  describe "when the deedeeg-my-new-package-19823402:toggle event is triggered", ->
    it "hides and shows the modal panel", ->
      # Before the activation event the view is not on the DOM, and no panel
      # has been created
      expect(workspaceElement.querySelector('.deedeeg-my-new-package-19823402')).not.toExist()

      # This is an activation event, triggering it will cause the package to be
      # activated.
      atom.commands.dispatch workspaceElement, 'deedeeg-my-new-package-19823402:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        expect(workspaceElement.querySelector('.deedeeg-my-new-package-19823402')).toExist()

        deedeegMyNewPackage19823402Element = workspaceElement.querySelector('.deedeeg-my-new-package-19823402')
        expect(deedeegMyNewPackage19823402Element).toExist()

        deedeegMyNewPackage19823402Panel = atom.workspace.panelForItem(deedeegMyNewPackage19823402Element)
        expect(deedeegMyNewPackage19823402Panel.isVisible()).toBe true
        atom.commands.dispatch workspaceElement, 'deedeeg-my-new-package-19823402:toggle'
        expect(deedeegMyNewPackage19823402Panel.isVisible()).toBe false

    it "hides and shows the view", ->
      # This test shows you an integration test testing at the view level.

      # Attaching the workspaceElement to the DOM is required to allow the
      # `toBeVisible()` matchers to work. Anything testing visibility or focus
      # requires that the workspaceElement is on the DOM. Tests that attach the
      # workspaceElement to the DOM are generally slower than those off DOM.
      jasmine.attachToDOM(workspaceElement)

      expect(workspaceElement.querySelector('.deedeeg-my-new-package-19823402')).not.toExist()

      # This is an activation event, triggering it causes the package to be
      # activated.
      atom.commands.dispatch workspaceElement, 'deedeeg-my-new-package-19823402:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        # Now we can test for view visibility
        deedeegMyNewPackage19823402Element = workspaceElement.querySelector('.deedeeg-my-new-package-19823402')
        expect(deedeegMyNewPackage19823402Element).toBeVisible()
        atom.commands.dispatch workspaceElement, 'deedeeg-my-new-package-19823402:toggle'
        expect(deedeegMyNewPackage19823402Element).not.toBeVisible()
