extends Area2D


@export var value: int = 1
func _on_body_entered(body: Node2D) -> void:
# Check if the node that touched us is the player
	if body.name == "Player": # Or check using a group like: if body.is_in_group("player"):
	# Add score to the player if they have a score variable
		if "score" in body:
			body.score += value
		
		#remove the coin from the game
		queue_free()


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
