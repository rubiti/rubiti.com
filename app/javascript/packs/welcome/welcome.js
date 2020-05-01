//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require ../welcome

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'core-js/stable';
import 'regenerator-runtime/runtime';
import "@fortawesome/fontawesome-free/js/all";
import "../../stylesheets/welcome/welcome";
import "./welcome_script";

require.context('../../images', true)