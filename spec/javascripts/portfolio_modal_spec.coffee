PortfolioModal = React.createFactory(CustomComponents.PortfolioModal)

describe 'PortfolioModal component', ->

  beforeEach ->
    ReactTest = React.addons.TestUtils
    porfolioModal =  ReactTest.renderIntoDocument(PortfolioModal(id: 1, bg_img_url: '#', title: 'A title', description: 'A description', customer: 'A customer'))
    @html = ReactDOM.findDOMNode(porfolioModal)

  it 'should render a portfolio modal', ->
    
    expect($(@html).attr('id')).toEqual('portfolioModal1')
    expect($(@html).attr('style')).toEqual('background-image:url(\'#\');' )

  it 'should render a portfolio body', ->
    portfolioBody = $(@html).find('.modal-body')
    expect(portfolioBody.length).toEqual(1)

    rows = portfolioBody.find('.container').find('.row').find('.col-lg-8.col-lg-offset-2')
    expect(rows.length).toEqual(2)

    expect(rows.find('h2').text()).toEqual('A title')
    expect(rows.find('hr').attr('class')).toEqual('colored')
    expect(rows.find('p').text()).toEqual('A description')

    expect(rows.find('ul').find('li').text()).toEqual('A customer')
    expect(rows.find('button').attr('class')).toEqual('btn btn-default')