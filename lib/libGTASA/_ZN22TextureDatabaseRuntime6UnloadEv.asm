; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime6UnloadEv
; Address            : 0x1EAC54 - 0x1EAC8A
; =========================================================

1EAC54:  PUSH            {R4-R7,LR}
1EAC56:  ADD             R7, SP, #0xC
1EAC58:  PUSH.W          {R11}
1EAC5C:  MOV             R4, R0
1EAC5E:  LDR             R1, [R4,#0x18]
1EAC60:  CBZ             R1, loc_1EAC84
1EAC62:  MOVS            R5, #0
1EAC64:  MOVS            R6, #0
1EAC66:  LDR             R0, [R4,#0x1C]
1EAC68:  ADD             R0, R5
1EAC6A:  LDRB            R2, [R0,#0xA]
1EAC6C:  LSLS            R2, R2, #0x1D
1EAC6E:  BMI             loc_1EAC7C
1EAC70:  LDR.W           R0, [R0,#0x13]
1EAC74:  CBZ             R0, loc_1EAC7C
1EAC76:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
1EAC7A:  LDR             R1, [R4,#0x18]
1EAC7C:  ADDS            R6, #1
1EAC7E:  ADDS            R5, #0x17
1EAC80:  CMP             R6, R1
1EAC82:  BCC             loc_1EAC66
1EAC84:  POP.W           {R11}
1EAC88:  POP             {R4-R7,PC}
