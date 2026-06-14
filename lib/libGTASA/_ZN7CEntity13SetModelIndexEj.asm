; =========================================================
; Game Engine Function: _ZN7CEntity13SetModelIndexEj
; Address            : 0x3EAFBC - 0x3EAFD6
; =========================================================

3EAFBC:  PUSH            {R4,R6,R7,LR}
3EAFBE:  ADD             R7, SP, #8
3EAFC0:  MOV             R4, R0
3EAFC2:  LDR             R0, [R4]
3EAFC4:  LDR             R2, [R0,#0x1C]
3EAFC6:  MOV             R0, R4
3EAFC8:  BLX             R2
3EAFCA:  LDR             R0, [R4]
3EAFCC:  LDR             R1, [R0,#0x20]
3EAFCE:  MOV             R0, R4
3EAFD0:  POP.W           {R4,R6,R7,LR}
3EAFD4:  BX              R1
