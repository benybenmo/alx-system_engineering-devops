Postmortem Report - Learnings from a Midnight 504 Error
Hey Team,

So, on that fateful night of September 11th, 2018, the server decided to take a midnight siesta, leaving everyone trying to access our website with a not-so-warm 504 error. Picture this: the world is asleep, and our server decides it's the perfect time for a digital nap.

The Drama Unfolds
00:00 PST - Panic mode activated. The website is throwing a 500 error. Cue collective gasps.

00:05 PST - Quick server check: Apache and MySQL are up and running. Crisis averted? Not quite.

00:10 PST - The website is still not playing nice. Cue detective mode.

00:12 PST - A swift Apache restart brings a momentary sigh of relief. Status: 200 and OK.

00:18 PST - Error logs become our bedtime story. Something's shutting down Apache prematurely.

00:25 PST - Apache's logs whisper secrets. PHP error logs? Nowhere to be found.

00:30 PST - Surprise, surprise! PHP error logging is on vacation. We turn it back on.

00:32 PST - Another Apache restart. Fingers crossed, we dive into PHP error logs.

00:36 PST - A mistyped file name in wp-settings.php! Mystery solved.

00:38 PST - File name fixed. Apache restarts, and we're on the edge of our seats.

00:40 PST - Victory! The server is back to its nocturnal duties, and the website is alive and kicking.

The Heart of the Matter
Turns out, a tiny typo in a file name was the elusive culprit. The server was crying for help, but with PHP error logging off, it was like talking to a wall. Once we turned on the lights, the logs spilled the beans about the misspelled file extension.

Aftermath and Future-proofing
Lessons learned? Plenty.

Error Logging is Your Friend: Always keep those error logs on. It's like having a superhero sidekick, ready to save the day.

Test, Test, Test: Before sending our creations into the wild world of multi-server setups, let’s give them a dress rehearsal. Local testing is our safety net.

Moving Forward
To prevent future midnight escapades, let’s embrace these golden rules:

Log All the Things: Turn on error logs across all servers and sites. It's not paranoia; it's preparedness.

Test Like You Mean It: Local tests are not just for show. They are our shield against unexpected errors in the real world.

And there you have it, the saga of the 504 error and how we tamed the midnight beast. Here's to smoother nights and error-free days ahead!

Cheers,
[benybenmo]
