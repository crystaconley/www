randomInt = (minValue, maxValue) ->
  Math.floor(Math.random() * (maxValue - minValue + 1)) + minValue

document.addEventListener 'DOMContentLoaded', ->
    l = window.location.pathname
    if l is '/'
        bg = document.getElementsByClassName('bg')[0]
        bg.style.backgroundImage = "url('/img/" + randomInt(1, 3) + ".jpg')"
    return
