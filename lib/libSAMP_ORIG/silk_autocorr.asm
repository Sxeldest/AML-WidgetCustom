; =========================================================
; Game Engine Function: silk_autocorr
; Address            : 0xCE018 - 0xCE042
; =========================================================

CE018:  PUSH            {R4,R6,R7,LR}
CE01A:  ADD             R7, SP, #8
CE01C:  SUB             SP, SP, #0x10; int
CE01E:  MOV             R4, R1
CE020:  MOV             R1, R0; int
CE022:  LDRD.W          R0, R12, [R7,#arg_0]
CE026:  CMP             R3, R0
CE028:  IT LT
CE02A:  MOVLT           R0, R3
CE02C:  SUBS            R0, #1
CE02E:  STMEA.W         SP, {R0,R3,R12}
CE032:  MOV             R0, R2; src
CE034:  MOVS            R2, #0; int
CE036:  MOVS            R3, #0; int
CE038:  BLX             j__celt_autocorr
CE03C:  STR             R0, [R4]
CE03E:  ADD             SP, SP, #0x10
CE040:  POP             {R4,R6,R7,PC}
