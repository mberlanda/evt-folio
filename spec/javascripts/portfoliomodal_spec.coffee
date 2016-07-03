PortfolioModal = React.createFactory(CustomComponents.PortfolioModal)

describe 'PortfolioModal component', ->
  beforeEach ->
    ReactTest = React.addons.TestUtils
    @porfolioModal =  ReactTest.renderIntoDocument(PortfolioModal(id: 1, bg_img_url: '#', title: 'A title', description: 'A description', customer: 'A customer'))

  it 'should render a modal body', ->

    html = ReactDOM.findDOMNode(@porfolioModal)
    expect(1 + 1).toBe(2)    