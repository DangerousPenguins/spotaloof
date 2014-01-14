spotaloof
=========

Spot Aloof

Spot Aloof: Web controls for Spotify is a lightweight, portable and open source, web based way to control Spotify remotely. 

From a smart phone or any other local web enabled device, the user can see the current song playing, control pause/play, skip tracks forwards/backwards, as well as raise/lower and mute the volume on Spotify.

Spot Aloof runs a Mongoose webserver (http://code.google.com/p/mongoose/) and uses AutoHotkey (http://www.autohotkey.com/) to control the local instance of Spotify on a Windows computer.

Run the server, create a firewall exception, and then on any computer browse to http://IPADDRESS:8080/ and you will see what is currently playing and the controls.

Setup:

1)  Uncompress Spot Aloof

2)  Run mongoose.exe and allow it permissions to receive incoming requests (i.e. through a firewall)

3a) --Find the local ip address of your machine--

3b) Browse to http://IPADDRESS:8080/ on your device