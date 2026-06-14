; =========================================================
; Game Engine Function: ReleaseALEffects
; Address            : 0x1DB5B0 - 0x1DB604
; =========================================================

1DB5B0:  PUSH            {R4-R7,R11,LR}
1DB5B4:  ADD             R11, SP, #0x10
1DB5B8:  MOV             R4, R0
1DB5BC:  LDR             R0, [R4,#0x64]
1DB5C0:  CMP             R0, #1
1DB5C4:  POPLT           {R4-R7,R11,PC}
1DB5C8:  MOV             R6, #0
1DB5CC:  MOV             R7, #0
1DB5D0:  LDR             R0, [R4,#0x60]
1DB5D4:  ADD             R0, R0, R7,LSL#3
1DB5D8:  LDR             R5, [R0,#4]
1DB5DC:  STR             R6, [R0,#4]
1DB5E0:  LDR             R0, [R5,#0xB4]
1DB5E4:  BL              j_FreeThunkEntry
1DB5E8:  MOV             R0, R5; ptr
1DB5EC:  BL              free
1DB5F0:  LDR             R0, [R4,#0x64]
1DB5F4:  ADD             R7, R7, #1
1DB5F8:  CMP             R7, R0
1DB5FC:  BLT             loc_1DB5D0
1DB600:  POP             {R4-R7,R11,PC}
