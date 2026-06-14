; =========================================================
; Game Engine Function: _ZN11CPlayerInfo13SetPlayerSkinEPKc
; Address            : 0x40C228 - 0x40C256
; =========================================================

40C228:  PUSH            {R4,R5,R7,LR}
40C22A:  ADD             R7, SP, #8
40C22C:  MOV             R4, R0
40C22E:  ADDW            R5, R4, #0x165
40C232:  MOVS            R2, #0x20 ; ' '; size_t
40C234:  MOV             R0, R5; char *
40C236:  BLX             strncpy
40C23A:  LDR.W           R0, [R4,#0x188]
40C23E:  CBZ             R0, loc_40C24A
40C240:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
40C244:  MOVS            R0, #0
40C246:  STR.W           R0, [R4,#0x188]
40C24A:  MOV             R0, R5; this
40C24C:  BLX             j__ZN11CPlayerSkin14GetSkinTextureEPKc; CPlayerSkin::GetSkinTexture(char const*)
40C250:  STR.W           R0, [R4,#0x188]
40C254:  POP             {R4,R5,R7,PC}
