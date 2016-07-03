{ button, div, h2, hr, i, li, p, ul } = React.DOM

ModalContent = React.createClass
  displayName: "ModalContent"

  render: ->
    div {className: 'modal-content'} ,
      div {className: 'close-modal', 'data-dismiss': 'modal'} ,
        div {className: 'lr'} ,
          div {className: 'rl'}

modalContent = React.createFactory(ModalContent)

ModalBody = React.createClass
  displayName: "ModalBody"

  listElem: (item) ->
    li {}, item

  render: ->
    div {className: 'modal-body'},
      div {className: 'container'},
        div {className: 'row'},
          div {className: 'col-lg-8 col-lg-offset-2'},
            h2 {}, @props.title
            hr {className: 'colored'}, null
            p {}, @props.description
          div {className: 'col-lg-8 col-lg-offset-2'},
            ul {className: 'list-inline item-details'},
              @listElem(@props.customer)
            button {
              className: 'btn btn-default'
              'data-dismiss': 'modal'
              type: 'button'},
              i {className: 'fa fa-times'}, 'Close'

modalBody = React.createFactory(ModalBody)

PortfolioModal = React.createClass
  displayName: "PortfolioModal"

  render: ->
    div {
      id: 'portfolioModal' + @props.id
      className: 'portfolio-modal modal fade'
      'aria-hidden': 'true'
      role: 'dialog'
      style: {'background-image': 'url(\''+ @props.bg_img_url + '\')'}
      tabIndex: '-1'                                                            
      },
      modalContent

      modalBody {
        title: @props.title
        description: @props.description
        customer: @props.customer
      }

CustomComponents.PortfolioModal = PortfolioModal
window.portfolioModal =  React.createFactory(PortfolioModal)