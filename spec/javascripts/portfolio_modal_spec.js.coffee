Modal = React.createFactory(window.PortfolioModal)

describe 'PortfolioModal component', ->
  
  beforeEach ->
    ReactTest = React.addons.TestUtils
    @modal = ReactTest.renderIntoDocument(Modal(id: 1, bg_img_url: '#', title: 'A title', description: 'A description', customer: 'A customer'))

    it 'has paragraph which greets someone', ->
      html = ReactDOM.findDOMNode(@modal)
      
      expect($(html).find('p').length).toEqual(1)
      expect($(html).find('p').text()).toEqual("Hello, my first test!")