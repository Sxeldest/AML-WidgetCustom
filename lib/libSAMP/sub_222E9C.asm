; =========================================================
; Game Engine Function: sub_222E9C
; Address            : 0x222E9C - 0x222ED0
; =========================================================

222E9C:  PUSH            {R4,R10,R11,LR}
222EA0:  ADD             R11, SP, #8
222EA4:  MOV             R4, R1
222EA8:  LDR             R1, [R0]
222EAC:  LDR             R2, [R1,#0x24]
222EB0:  MOV             R1, R4
222EB4:  BLX             R2
222EB8:  LDR             R1, [R4,#4]
222EBC:  MOV             R0, #0
222EC0:  CMP             R1, #0
222EC4:  MOVEQ           R0, #0xFFFFE66B
222ECC:  POP             {R4,R10,R11,PC}
