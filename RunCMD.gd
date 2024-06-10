extends Node

func _ready():
	$HTTPRequest.request_completed.connect(_on_request_completed)
	$HTTPRequest.request("https://github.com/tiagoinaba/lswn.git")

	var output = []
	var exit_code = OS.execute("python", ["-m", "lswn"], output)
	print(output)

func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse_string(body.get_string_from_utf8())
	print(json["name"])
	pass
