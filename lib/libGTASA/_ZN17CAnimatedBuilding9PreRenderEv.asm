; =========================================================
; Game Engine Function: _ZN17CAnimatedBuilding9PreRenderEv
; Address            : 0x280194 - 0x2801B8
; =========================================================

280194:  PUSH            {R4,R6,R7,LR}
280196:  ADD             R7, SP, #8
280198:  MOV             R4, R0
28019A:  LDR             R0, [R4,#0x18]
28019C:  CMP             R0, #0
28019E:  IT EQ
2801A0:  POPEQ           {R4,R6,R7,PC}
2801A2:  MOV             R0, R4; this
2801A4:  BLX             j__ZN7CEntity9PreRenderEv; CEntity::PreRender(void)
2801A8:  MOV             R0, R4; this
2801AA:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
2801AE:  MOV             R0, R4; this
2801B0:  POP.W           {R4,R6,R7,LR}
2801B4:  B.W             j_j__ZN7CEntity13UpdateRpHAnimEv; j_CEntity::UpdateRpHAnim(void)
