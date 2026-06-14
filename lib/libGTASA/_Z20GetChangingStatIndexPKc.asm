; =========================================================
; Game Engine Function: _Z20GetChangingStatIndexPKc
; Address            : 0x35FABC - 0x35FB2E
; =========================================================

35FABC:  PUSH            {R4,R6,R7,LR}
35FABE:  ADD             R7, SP, #8
35FAC0:  MOV             R4, R0
35FAC2:  ADR             R0, dword_35FB30; char *
35FAC4:  MOV             R1, R4; char *
35FAC6:  BLX             strcmp
35FACA:  CBZ             R0, loc_35FB14
35FACC:  ADR             R0, dword_35FB34; char *
35FACE:  MOV             R1, R4; char *
35FAD0:  BLX             strcmp
35FAD4:  CBZ             R0, loc_35FB1A
35FAD6:  ADR             R0, aRespect; "respect"
35FAD8:  MOV             R1, R4; char *
35FADA:  BLX             strcmp
35FADE:  CBZ             R0, loc_35FB1E
35FAE0:  ADR             R0, aSexy; "sexy"
35FAE2:  MOV             R1, R4; char *
35FAE4:  BLX             strcmp
35FAE8:  CBZ             R0, loc_35FB22
35FAEA:  ADR             R0, aHealth; "health"
35FAEC:  MOV             R1, R4; char *
35FAEE:  BLX             strcmp
35FAF2:  CBZ             R0, loc_35FB26
35FAF4:  ADR             R0, aStamina; "stamina"
35FAF6:  MOV             R1, R4; char *
35FAF8:  BLX             strcmp
35FAFC:  CBZ             R0, loc_35FB2A
35FAFE:  ADR             R0, aCalories; "calories"
35FB00:  MOV             R1, R4; char *
35FB02:  BLX             strcmp
35FB06:  MOV             R1, R0
35FB08:  MOV.W           R0, #0xFFFFFFFF
35FB0C:  CMP             R1, #0
35FB0E:  IT EQ
35FB10:  MOVEQ           R0, #5
35FB12:  POP             {R4,R6,R7,PC}
35FB14:  MOV.W           R0, #0xFFFFFFFF
35FB18:  POP             {R4,R6,R7,PC}
35FB1A:  MOVS            R0, #0
35FB1C:  POP             {R4,R6,R7,PC}
35FB1E:  MOVS            R0, #1
35FB20:  POP             {R4,R6,R7,PC}
35FB22:  MOVS            R0, #2
35FB24:  POP             {R4,R6,R7,PC}
35FB26:  MOVS            R0, #3
35FB28:  POP             {R4,R6,R7,PC}
35FB2A:  MOVS            R0, #4
35FB2C:  POP             {R4,R6,R7,PC}
