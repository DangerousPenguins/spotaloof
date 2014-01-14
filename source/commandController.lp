<?

	--[[
	 Copyright (c) 2013, Dangerous Penguins Inc.
	All rights reserved.

	Redistribution and use in source and binary forms, with or without
	modification, are permitted provided that the following conditions are met:
		* Redistributions of source code must retain the above copyright
		  notice, this list of conditions and the following disclaimer.
		* Redistributions in binary form must reproduce the above copyright
		  notice, this list of conditions and the following disclaimer in the
		  documentation and/or other materials provided with the distribution.
		* Neither the name of Dangerous Penguins Inc. nor the
		  names of its contributors may be used to endorse or promote products
		  derived from this software without specific prior written permission.

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
	ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
	WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
	DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
	DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
	(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
	ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
	SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	]]

	-- Send the web request to the autohotkey executable with the request as an argument
	urlQuery = mg.request_info.query_string
	if urlQuery == "command=PlayOrPause" then
		os.execute('spotifyController.exe PlayOrPause')
	end
	if urlQuery == "command=NextSong" then
		os.execute('spotifyController.exe NextSong')
	end
	if urlQuery == "command=PreviousSong" then
		os.execute('spotifyController.exe PreviousSong')
	end
	if urlQuery == "command=VolumeUp" then
		os.execute('spotifyController.exe VolumeUp')
	end
	if urlQuery == "command=VolumeDown" then
		os.execute('spotifyController.exe VolumeDown')
	end
	if urlQuery == "command=GetCurrentSong" then
		os.execute('spotifyController.exe GetCurrentSong')
	end
	
	-- The autohotkey request will place the current playing song and performer in a text file.
	-- Open it, read it, and return it to the user.
	local songFile = assert(io.open('currentSong.txt', "r"))
	local currentSong = songFile:read("*all")
	songFile:close()
	mg.write(currentSong)
 ?>