; =========================================================
; Game Engine Function: sub_12ECB4
; Address            : 0x12ECB4 - 0x12ECF0
; =========================================================

12ECB4:  PUSH            {R4,R6,R7,LR}
12ECB6:  ADD             R7, SP, #8
12ECB8:  LDR             R0, =(off_234A24 - 0x12ECBE)
12ECBA:  ADD             R0, PC; off_234A24
12ECBC:  LDR             R4, [R0]; dword_23DEEC
12ECBE:  LDR             R0, [R4]
12ECC0:  CBZ             R0, locret_12ECEE
12ECC2:  LDR             R0, =(off_2349A8 - 0x12ECCA)
12ECC4:  MOVS            R1, #0
12ECC6:  ADD             R0, PC; off_2349A8
12ECC8:  LDR             R0, [R0]; dword_381BF4
12ECCA:  LDR             R0, [R0]
12ECCC:  BL              sub_17C1DA
12ECD0:  CBNZ            R0, locret_12ECEE
12ECD2:  LDR             R0, [R4]
12ECD4:  LDR             R4, [R0,#0x7C]
12ECD6:  LDRB.W          R0, [R4,#0x50]
12ECDA:  CMP             R0, #1
12ECDC:  BEQ             loc_12ECE8
12ECDE:  LDR             R0, [R4]
12ECE0:  MOVS            R1, #1
12ECE2:  LDR             R2, [R0,#0x24]
12ECE4:  MOV             R0, R4
12ECE6:  BLX             R2
12ECE8:  MOVS            R0, #1
12ECEA:  STRB.W          R0, [R4,#0x50]
12ECEE:  POP             {R4,R6,R7,PC}
