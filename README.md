# Installation


## Overview

This repo is used to create the simple sinatra server for flat file front-end projects. It gets around having to use a stupid tool like MAMP or XAMMP to emmulate a local server environment. It also allows for quick and dirty deployment to a free heroku instance for client sharing and internal review.

### Password Protection
By default, the password protection is absent from this project. Uncomment it and add username and password:

	[username, password] == ['admin', 'password']

### Installation via dt Rake Task
If you have installed the dt rake tasks, you can install this via:
	
	rake new_flat_project

That will run a task that installs a default html5 boiler plate, a config file for migration to the interactive file server and pulls this project and starts the server.

#### Dependencies
It's advised that you install ruby 1.9 + on your machine.

N.B. you will need XCODE installed on a mac or whatever C compiler is standard for your platform (don't forget as of XCODE 4 you need to go into it and activate install command line tools - dumb apple, dumb).

If you using a mac, the easiest route to do this is via home brew package manager.
<http://mxcl.github.com/homebrew/>

It is also advised that you use RVM for gemset and dependancy management:
<http://beginrescueend.com/rvm/install/>

Also install bundler into your global gemsets as it's used in the script to setup the project.



