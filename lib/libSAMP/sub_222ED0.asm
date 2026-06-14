; =========================================================
; Game Engine Function: sub_222ED0
; Address            : 0x222ED0 - 0x222EF0
; =========================================================

222ED0:  PUSH            {R11,LR}
222ED4:  MOV             R11, SP
222ED8:  LDR             R1, [R0]
222EDC:  LDR             R1, [R1,#0x28]
222EE0:  BLX             R1
222EE4:  MOV             R0, #0xFFFFE674
222EEC:  POP             {R11,PC}
