KEY=AAAA7_T3eKY:APA91bEv09m7eNggahtpK04BZJzoEfs192slwhmMdyuWB0xJJDszWyTOLwk9ALyVdUsUml5fXYLFdl34dkwE38-o8L815AT259WJJhVBrVjNJrA1kAlnxfCMU6HHQtfjJOwCHhDOmdA0GKaDimld4qUEqgovyCBzfg
TOKEN=fjRIz244Jq0:APA91bHUP8mci4b9J0piviyMwsSCngDyk2fD6i28dAI0Lto6GWYGTZhpwaTvN8g1iUVL5ZTkOJQM9LVk_D45za1WV8noc-sZIiCEBxtidYclHTua7y9pMQ8zGUT7QkmmTWHn0lTKg9vS

MESSAGE_ICON="https://pbs.twimg.com/profile_images/702151967729127424/PTcKVQsN_400x400.png"
MESSAGE_TITLE="Hackathon day 2"
MESSAGE_BODY="🦄 Bonjour, je suis FCM service! 🚀"

# Make sure the current website is in inactive tab
send_message:
	 curl -X POST \
	   https://fcm.googleapis.com/fcm/send \
	   -H 'Authorization: key=$(KEY)' \
	   -H 'Content-Type: application/json' \
	   -d '{"notification": {"title": $(MESSAGE_TITLE), "body": $(MESSAGE_BODY), "icon": $(MESSAGE_ICON)},"to" : "$(TOKEN)"}'
