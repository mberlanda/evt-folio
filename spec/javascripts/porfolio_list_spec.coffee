PortfolioListElem = React.createFactory(CustomComponents.PortfolioListElem)

describe 'PortfolioListElem component', ->

  beforeEach ->
    ReactTest = React.addons.TestUtils
    porfolioListElem =  ReactTest.renderIntoDocument(PortfolioListElem(img_url: '#', title: 'A title', category: 'oenology', category_name: 'Enologia'))
    @html = ReactDOM.findDOMNode(porfolioListElem)

  it 'should render a portfolio list elem', ->
    
    expect($(@html).attr('class')).toEqual('portfolio oenology')
    expect($(@html).attr('data-cat')).toEqual('oenology')