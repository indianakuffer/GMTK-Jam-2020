/// @description Insert description here
// You can write your code in this editor

var countBroken = 0
for (var i = 0; i < ds_list_size(aocList); i++) {
	if (ds_list_find_value(aocList,i).broken) countBroken++	
}
aocsBroken = countBroken
counter++

if (counter > room_speed * threshold) {
	var length = ds_list_size(aocList)
	if (aocsBroken < maxAocsBroken) {
		var aocID
		do {
			aocID = ds_list_find_value(aocList,irandom(length - 1))
		} until (!variable_instance_get(aocID,"broken"))
		var newWarning = instance_create_depth(aocID.x,aocID.y,global.uiDepth+100,obj_warning)
		variable_instance_set(aocID,"broken", true)
		variable_instance_set(aocID,"warning", newWarning)
		variable_instance_set(newWarning,"owner",aocID)
	}
	counter = 0
	threshold = random_range(minThreshold, maxThreshold)
}