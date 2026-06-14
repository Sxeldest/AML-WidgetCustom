; =========================================================
; Game Engine Function: sub_8CBC8
; Address            : 0x8CBC8 - 0x8CC06
; =========================================================

8CBC8:  LDR             R0, =(dword_1ACF68 - 0x8CBD2)
8CBCA:  MOVW            R2, #0x1A9C
8CBCE:  ADD             R0, PC; dword_1ACF68
8CBD0:  LDR             R1, [R0]
8CBD2:  LDR             R0, [R1,R2]
8CBD4:  CMP             R0, #1
8CBD6:  BLT             loc_8CC02
8CBD8:  ADD             R1, R2
8CBDA:  ADD.W           R2, R0, R0,LSL#3
8CBDE:  LDR             R1, [R1,#8]
8CBE0:  ADD.W           R1, R1, R2,LSL#2
8CBE4:  ADDS            R2, R0, #1
8CBE6:  SUBS            R1, #0x20 ; ' '
8CBE8:  B               loc_8CBFA
8CBEA:  LDRB            R3, [R0,#0xB]
8CBEC:  LSLS            R3, R3, #0x1C
8CBEE:  IT MI
8CBF0:  BXMI            LR
8CBF2:  SUBS            R2, #1
8CBF4:  SUBS            R1, #0x24 ; '$'
8CBF6:  CMP             R2, #1
8CBF8:  BLS             loc_8CC02
8CBFA:  LDR             R0, [R1]
8CBFC:  CMP             R0, #0
8CBFE:  BNE             loc_8CBEA
8CC00:  B               loc_8CBF2
8CC02:  MOVS            R0, #0
8CC04:  BX              LR
