#how to use: ${execi 60 python ~cwitter.py | fold -w45}
import os
import string
import twitter
#set your user name and password here.
username=''
password=''

api = twitter.Api(username, password)
status = api.GetFriendsTimeline()
#how many tweets you want displayed at a time
twitterSize = 5;
i = 0
for s in status:
	i = i+1
print s.user.name, "(@"+s.user.screen_name+")"
print s.text
print
if i == twitterSize:
	break
