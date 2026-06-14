; =========================================================
; Game Engine Function: _ZN11FxManager_c19DestroyAllFxSystemsEv
; Address            : 0x36D196 - 0x36D1B4
; =========================================================

36D196:  PUSH            {R4,R5,R7,LR}
36D198:  ADD             R7, SP, #8
36D19A:  MOV             R4, R0
36D19C:  LDR             R1, [R4,#0xC]; FxSystem_c *
36D19E:  CMP             R1, #0
36D1A0:  IT EQ
36D1A2:  POPEQ           {R4,R5,R7,PC}
36D1A4:  MOV             R0, R4; this
36D1A6:  LDR             R5, [R1,#4]
36D1A8:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
36D1AC:  CMP             R5, #0
36D1AE:  MOV             R1, R5
36D1B0:  BNE             loc_36D1A4
36D1B2:  POP             {R4,R5,R7,PC}
