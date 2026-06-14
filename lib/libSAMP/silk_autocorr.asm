; =========================================================
; Game Engine Function: silk_autocorr
; Address            : 0x1ABDD8 - 0x1ABE02
; =========================================================

1ABDD8:  PUSH            {R4,R6,R7,LR}
1ABDDA:  ADD             R7, SP, #8
1ABDDC:  SUB             SP, SP, #0x10; int
1ABDDE:  MOV             R4, R1
1ABDE0:  MOV             R1, R0; int
1ABDE2:  LDRD.W          R0, R12, [R7,#arg_0]
1ABDE6:  CMP             R3, R0
1ABDE8:  IT LT
1ABDEA:  MOVLT           R0, R3
1ABDEC:  SUBS            R0, #1
1ABDEE:  STMEA.W         SP, {R0,R3,R12}
1ABDF2:  MOV             R0, R2; src
1ABDF4:  MOVS            R2, #0; int
1ABDF6:  MOVS            R3, #0; int
1ABDF8:  BLX             j__celt_autocorr
1ABDFC:  STR             R0, [R4]
1ABDFE:  ADD             SP, SP, #0x10
1ABE00:  POP             {R4,R6,R7,PC}
