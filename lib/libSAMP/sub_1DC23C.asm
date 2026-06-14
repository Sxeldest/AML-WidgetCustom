; =========================================================
; Game Engine Function: sub_1DC23C
; Address            : 0x1DC23C - 0x1DC26C
; =========================================================

1DC23C:  CMP             R2, #0xD
1DC240:  BNE             loc_1DC260
1DC244:  LDR             R2, [R3]
1DC248:  CMP             R2, #2
1DC24C:  STRBCC          R2, [R0,#0x34]
1DC250:  BXCC            LR
1DC254:  MOV             R0, R1
1DC258:  MOVW            R1, #0xA003
1DC25C:  B               j_alSetError
1DC260:  MOV             R0, R1
1DC264:  MOVW            R1, #0xA002
1DC268:  B               j_alSetError
