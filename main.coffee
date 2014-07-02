$ ->
  video = document.getElementById 'main'
  video.autoplay = true

  navigator.webkitGetUserMedia
    audio: false
    video: true
  , (stream) ->
    video.src = window.webkitURL.createObjectURL stream
  , (err) ->
    console.error err

