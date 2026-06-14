; =========================================================
; Game Engine Function: deflateInit_
; Address            : 0x20AA88 - 0x20AAAA
; =========================================================

20AA88:  PUSH            {R7,LR}
20AA8A:  MOV             R7, SP
20AA8C:  SUB             SP, SP, #0x10
20AA8E:  MOV.W           R12, #0
20AA92:  MOV.W           LR, #8
20AA96:  STRD.W          LR, R12, [SP,#0x18+var_18]
20AA9A:  STRD.W          R2, R3, [SP,#0x18+var_10]
20AA9E:  MOVS            R2, #8
20AAA0:  MOVS            R3, #0xF
20AAA2:  BLX             j_deflateInit2_
20AAA6:  ADD             SP, SP, #0x10
20AAA8:  POP             {R7,PC}
