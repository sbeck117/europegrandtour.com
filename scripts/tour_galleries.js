Parse.initialize('jhND5bqg2Li6i6miUI5u01zLfU4TNzWZv0EkOIk9', 'CfyiRpbDfoUgaWlYIwAsL0fLYjFIjZzf9y9kIXzF')

var Photo = Parse.Object.extend('Photo')
var photosQuery = new Parse.Query(Photo).include('destination')

var destinations = []
var photos = []

photosQuery.find().then(function (photos) {
  photos = photos

  photos.forEach(function (photo) {
    var sortOrder = photo.get('destination').get('sortOrder')

    if (!destinations[sortOrder]) {
      destinations[sortOrder] = photo.get('destination')
      destinations[sortOrder].set('photos', [ photo ])
    } else {
      destinations[sortOrder].get('photos').push(photo)
    }
  })

  destinations.forEach(function (destination) {
    var destinationSection = document.createElement('section')
    destinationSection.setAttribute('id', destination.get('name').toLowerCase())

    var destinationHeader = document.createElement('header')
    destinationHeader.innerHTML = '<h1>' + destination.get('name') + ', ' + destination.get('country') + '</h1>'
    destinationHeader.innerHTML += '<p>' + destination.get('description') + '</p>'

    var slideshow = document.createElement('div')
    slideshow.className='slideshow'

    destination.get('photos').forEach(function (photo) {
      var url = photo.get('file').url()
      slideshow.innerHTML += '<img src="' + url + '" />'
    })

    destinationSection.appendChild(destinationHeader)
    destinationSection.appendChild(slideshow)
    document.querySelector('div#tour').appendChild(destinationSection)
  })

  Galleria.loadTheme('scripts/galleria/themes/classic/galleria.classic.min.js')
  Galleria.configure({
    debug: false,
    thumbnails: false,
    autoplay: 4000
  })
  Galleria.run('.slideshow')

  $('.bubbles li:first-child a').trigger('click')
})
