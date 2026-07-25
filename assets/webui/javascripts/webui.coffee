do ->  
  # Array of core javascript files required for WebUI to function
  scripts = [
    'jquery',         # Everything is built on jQuery
    'template',       # Javascript powered template library
    'underscore',     # Underscore
    'webui-helper',   # Misc helper and utility functions
    'webui-core',     # WebUI base functions, required for everything
    'webui-api',      # Comunicates with our server API
    'webui-action',   # Handle communication with the client via action passing
    'webui-touch',    # Multi-touch handling to make elements tappable
    'webui-analytics' # Google Analytics handling
  ]
  
  # If our browser environment oes not support native JSON support, then
  # include json2.js to handle that for us.
  scripts.push('json2') unless JSON?
  
  # Use the current time to ensure the assets are pulled fresh from the
  # disk and not some cache blocking us form the up to date versions. On
  # the client these are stored locally on disk anyway, so there is little
  # performance gain from a cache that might serve up a stale file.
  cacheBuster = new Date().getTime()
  
  # Write a script tag for each core script to the document
  for script in scripts
    document.write "<script type='text/javascript' src='javascripts/#{ script }.js?#{ cacheBuster }'></scr"+"ipt>"
  
  # After loading those scripts, go ahead and load up the main css file.
  # Use the JS loader so the relative urls come fom the root of webui, and not
  # the stylesheet's location.
  document.write '<script type="text/javascript"> $.loadCss("webui"); </scr'+'ipt>'