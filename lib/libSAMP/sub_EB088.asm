; =========================================================
; Game Engine Function: sub_EB088
; Address            : 0xEB088 - 0xEB0AA
; =========================================================

EB088:  PUSH            {R7,LR}
EB08A:  MOV             R7, SP
EB08C:  SUB             SP, SP, #0x10
EB08E:  MOV             R1, R2
EB090:  LDR             R2, =(aU4x - 0xEB09C); "<U+%.4X>" ...
EB092:  ADD.W           R3, R7, #8
EB096:  STR             R3, [SP,#0x18+var_C]
EB098:  ADD             R2, PC; "<U+%.4X>"
EB09A:  STRD.W          R2, R3, [SP,#0x18+var_18]
EB09E:  MOVS            R2, #0
EB0A0:  MOVS            R3, #9
EB0A2:  BLX             __vsnprintf_chk
EB0A6:  ADD             SP, SP, #0x10
EB0A8:  POP             {R7,PC}
