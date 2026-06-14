; =========================================================
; Game Engine Function: sub_47BC96
; Address            : 0x47BC96 - 0x47BCD6
; =========================================================

47BC96:  PUSH            {R4-R7,LR}
47BC98:  ADD             R7, SP, #0xC
47BC9A:  PUSH.W          {R11}
47BC9E:  MOV             R4, R0
47BCA0:  MOVS            R1, #1; size
47BCA2:  LDR             R5, [R4,#0x18]
47BCA4:  MOV.W           R2, #0x1000; n
47BCA8:  MOV.W           R6, #0x1000
47BCAC:  LDRD.W          R3, R0, [R5,#0x14]; s
47BCB0:  BLX             fwrite
47BCB4:  CMP.W           R0, #0x1000
47BCB8:  BEQ             loc_47BCC8
47BCBA:  LDR             R0, [R4]
47BCBC:  MOVS            R1, #0x25 ; '%'
47BCBE:  STR             R1, [R0,#0x14]
47BCC0:  LDR             R0, [R4]
47BCC2:  LDR             R1, [R0]
47BCC4:  MOV             R0, R4
47BCC6:  BLX             R1
47BCC8:  LDR             R0, [R5,#0x18]
47BCCA:  STRD.W          R0, R6, [R5]
47BCCE:  MOVS            R0, #1
47BCD0:  POP.W           {R11}
47BCD4:  POP             {R4-R7,PC}
