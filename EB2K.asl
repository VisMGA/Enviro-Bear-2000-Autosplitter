// Enviro-Bear 2000 Autosplitter V 1.2 by Zic3 & VisMajor
state("EnviroBear") {
	byte	gameState : "EnviroBear.exe", 0xBF3D8, 0xC;
	uint    level : "EnviroBear.exe", 0xBF3D8, 0x2C;
}
start {
	return (old.gameState == 0 && current.gameState == 1 && current.level == 1);
}
split {
	return (current.level > old.level);
}
reset {
	return (current.gameState == 0 && current.level == 1);
}
