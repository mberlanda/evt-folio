{ div, img, a, span } = React.DOM

window.PortfolioListElem = React.createClass
  displayName: "PortfolioListElem"

  render: ->
    div
      className: 'portfolio ' + @props.category
      'data-cat': @props.category
      'data-toggle': 'modal'
      href: '#portfolioModal1'
      div 
        className: 'portfolio-wrapper'
        img { alt: '', src: @props.img_url }
        div {className: 'caption'}
          div {className: 'caption-text'},
            a {className: 'text-title'}, @props.title
            span {className: 'text-category'}, @props.category_name
          div {className: 'caption-bg'}

CustomComponents.PortfolioListElem = PortfolioListElem