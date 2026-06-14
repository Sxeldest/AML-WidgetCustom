; =========================================================
; Game Engine Function: sub_23C3A2
; Address            : 0x23C3A2 - 0x23C3E8
; =========================================================

23C3A2:  CMP             R1, #0
23C3A4:  MOV             R2, R0
23C3A6:  ITT LT
23C3A8:  MOVLT.W         R0, #0xFFFFFFFF
23C3AC:  BXLT            LR
23C3AE:  MOVW            R3, #0xB328
23C3B2:  MOVW            R12, #0xB32C
23C3B6:  LDR.W           R0, [R2,R12]
23C3BA:  ADD             R12, R2
23C3BC:  LDR             R3, [R2,R3]
23C3BE:  SUBS            R3, R3, R0
23C3C0:  CMP             R3, R1
23C3C2:  BGE             loc_23C3D4
23C3C4:  MOVW            R0, #0xB330
23C3C8:  LDR             R0, [R2,R0]
23C3CA:  STR.W           R0, [R12]
23C3CE:  MOV             R0, #0xFFFFFFF6
23C3D2:  BX              LR
23C3D4:  ADD             R0, R1
23C3D6:  STR.W           R0, [R12]
23C3DA:  CMP             R0, #0
23C3DC:  ITTT GE
23C3DE:  MOVWGE          R1, #0xB334
23C3E2:  LDRGE           R1, [R2,R1]
23C3E4:  ADDGE           R0, R1
23C3E6:  BX              LR
