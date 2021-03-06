curl --silent localhost:3000/heroes
# {"results":[{"id":"2b7d7ac7-3477-4fc0-9c04-c3844f7e8a57","name":"Batman","age":50,"power":"rich"},{"id":"3d51bb2d-f715-412a-a552-f1c23e6f3201","name":"Batman","age":50,"power":"rich"},{"id":"5832cc8c-41fc-4948-b5e7-debb335234e3","name":"Batman","age":50,"power":"rich"}]}

curl \
  --silent \
  -X POST \
  -d '{"name": "Flash", "age": 99, "power": "speed"}' \
  localhost:3000/heroes
# {"id":"27586f10-acc4-4c88-953c-d57141d90620","success":"User created with success!!"}

curl \
  --silent \
  -X POST \
  -d '{"invalid json data"}' \
  localhost:3000/heroes
# {"error":"internal server error!!"}