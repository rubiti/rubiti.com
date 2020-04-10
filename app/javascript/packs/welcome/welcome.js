//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require ../welcome

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "../../stylesheets/welcome/welcome";
import "./welcome_script";