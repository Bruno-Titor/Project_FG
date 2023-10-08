// movimentação
direita = keyboard_check(ord("D"))
esquerda = keyboard_check(ord("A"))
cima = keyboard_check_pressed(ord("W"))

if direita{
	direc = 0;
}else if esquerda{
	direc = 1;
}

hveloc = (direita - esquerda) * veloc;


//gravidade
if !place_meeting(x, y + 0.5, Obj_floor){
	vveloc += gravidade
}else{
	if cima{
		vveloc = -3
	}
}


//colisão
if place_meeting(x + hveloc, y, Obj_floor){
	while !place_meeting(x + sign(hveloc), y, Obj_floor){
		x += hveloc
	}
	
	hveloc = 0;

}

x += hveloc;

if place_meeting(x, y + vveloc, Obj_floor){
	while!place_meeting(x, y + sign(vveloc), Obj_floor){
		y += vveloc	
	}
	
	vveloc = 0;
	
}

y += vveloc