class_name IncomingData


var _data: Dictionary


func _init(data: Dictionary) -> void:
	_data = data


func get_full_data() -> Dictionary:
	return _data.duplicate(true)


func get_string(name: String, default: String = "") -> String:
	var value = _data.get(name, default)
	if value is not String:
		value = default

	return value


func get_number(name: String, default: float = 0.0) -> float:
	return get_float(name, default)


func get_object(name: String, default: Dictionary = {}) -> IncomingData:
	var value = _data.get(name, default)
	if value is not Dictionary:
		value = default

	return IncomingData.new(value)


func get_array(name: String, default: Array) -> Array:
	var value = _data.get(name, default)
	if value is not Array:
		value = default

	return value


func get_boolean(name: String, default: bool = false) -> bool:
	var value = _data.get(name, default)
	if value is not bool:
		value = default

	return value


func get_int(name: String, default: int = 0) -> int:
	var value = _data.get(name, default)
	if value is not int and value is not float:
		value = default

	return int(value)


func get_float(name: String, default: float = 0.0) -> float:
	var value = _data.get(name, default)
	if value is not int and value is not float:
		value = default

	return float(value)
