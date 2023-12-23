import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

function checkAll(bx) {
    console.log('wkwk');
    var cbs = document.getElementsByTagName('input');
    for(var i=0; i < cbs.length; i++) {
      if(cbs[i].type == 'checkbox') {
        cbs[i].checked = bx.checked;
      }
    }
  }