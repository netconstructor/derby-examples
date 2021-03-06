# Scripts required to properly render the page can be put in a file called
# "inline.js". This file will be automatically inserted before the external
# scripts are included.

messages = document.getElementById 'messages'
messageList = document.getElementById 'messageList'
commentInput = document.getElementById 'commentInput'
do window.onresize = ->
  # Scroll the message list to the bottom
  messages.scrollTop = messageList.offsetHeight
# Use HTML5 autofocus if supported. Otherwise, focus manually
commentInput.focus()  unless 'autofocus' of commentInput
