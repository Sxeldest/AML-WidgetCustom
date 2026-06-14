; =========================================================
; Game Engine Function: sub_11AB84
; Address            : 0x11AB84 - 0x11ABAA
; =========================================================

11AB84:  PUSH            {R7,LR}
11AB86:  MOV             R7, SP
11AB88:  SUB             SP, SP, #0x10
11AB8A:  LDR             R0, [R0,#0x10]
11AB8C:  STRD.W          R2, R1, [SP,#0x18+var_10]
11AB90:  STR             R3, [SP,#0x18+var_14]
11AB92:  CBZ             R0, loc_11ABA6
11AB94:  LDR             R1, [R0]
11AB96:  ADD             R2, SP, #0x18+var_10
11AB98:  ADD             R3, SP, #0x18+var_14
11AB9A:  LDR.W           R12, [R1,#0x18]
11AB9E:  ADD             R1, SP, #0x18+var_C
11ABA0:  BLX             R12
11ABA2:  ADD             SP, SP, #0x10
11ABA4:  POP             {R7,PC}
11ABA6:  BL              sub_DC92C
