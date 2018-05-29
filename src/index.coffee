component = () ->
  element = document.createElement('div')
  element.innerHTML = 'Foo'
  element

document.body.appendChild(component());