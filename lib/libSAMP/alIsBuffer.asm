; =========================================================
; Game Engine Function: alIsBuffer
; Address            : 0x1CE59C - 0x1CE600
; =========================================================

1CE59C:  PUSH            {R4,R5,R11,LR}
1CE5A0:  ADD             R11, SP, #8
1CE5A4:  MOV             R5, R0
1CE5A8:  BL              j_GetContextRef
1CE5AC:  MOV             R4, R0
1CE5B0:  CMP             R4, #0
1CE5B4:  BEQ             loc_1CE5E0
1CE5B8:  CMP             R5, #0
1CE5BC:  BEQ             loc_1CE5EC
1CE5C0:  LDR             R0, [R4,#0xFC]
1CE5C4:  MOV             R1, R5
1CE5C8:  ADD             R0, R0, #0x3C ; '<'
1CE5CC:  BL              j_LookupUIntMapKey
1CE5D0:  MOV             R5, R0
1CE5D4:  CMP             R5, #0
1CE5D8:  MOVWNE          R5, #1
1CE5DC:  B               loc_1CE5F0
1CE5E0:  MOV             R5, #0
1CE5E4:  MOV             R0, R5
1CE5E8:  POP             {R4,R5,R11,PC}
1CE5EC:  MOV             R5, #1
1CE5F0:  MOV             R0, R4
1CE5F4:  BL              j_ALCcontext_DecRef
1CE5F8:  MOV             R0, R5
1CE5FC:  POP             {R4,R5,R11,PC}
