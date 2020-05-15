require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "@fortawesome/fontawesome-free/js/all";
import "../stylesheets/sessions/sessions";
import 'core-js/stable';
import 'regenerator-runtime/runtime';

//import "../components/sessions_script";


// Images
require.context('../images', true)