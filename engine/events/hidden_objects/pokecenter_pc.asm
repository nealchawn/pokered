OpenPokemonCenterPC:
	ld a, [wSpriteStateData1 + 9]
	cp SPRITE_FACING_UP ; check to see if player is facing up
	ret nz
	call EnableAutoTextBoxDrawing
	ld a, $1
	ld [wAutoTextBoxDrawingControl], a
	tx_pre_jump PokemonCenterPCText

PokemonCenterPCText::
	TX_POKECENTER_PC
