; =========================================================
; Game Engine Function: _ZN11CPlayerInfo16DeletePlayerSkinEv
; Address            : 0x40C27A - 0x40C296
; =========================================================

40C27A:  PUSH            {R4,R6,R7,LR}
40C27C:  ADD             R7, SP, #8
40C27E:  MOV             R4, R0
40C280:  LDR.W           R0, [R4,#0x188]
40C284:  CMP             R0, #0
40C286:  IT EQ
40C288:  POPEQ           {R4,R6,R7,PC}
40C28A:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
40C28E:  MOVS            R0, #0
40C290:  STR.W           R0, [R4,#0x188]
40C294:  POP             {R4,R6,R7,PC}
