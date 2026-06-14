; =========================================================
; Game Engine Function: sub_15E8B8
; Address            : 0x15E8B8 - 0x15E8EC
; =========================================================

15E8B8:  PUSH            {R4,R6,R7,LR}
15E8BA:  ADD             R7, SP, #8
15E8BC:  SUB             SP, SP, #0x20
15E8BE:  MOV             R4, R3
15E8C0:  STR             R2, [SP,#0x28+var_1C]
15E8C2:  BL              sub_15E798
15E8C6:  LDR             R3, =(unk_BA757 - 0x15E8DA)
15E8C8:  ADD.W           R12, SP, #0x28+var_18
15E8CC:  MOV             R1, R0
15E8CE:  ADD             R0, SP, #0x28+var_14
15E8D0:  ADD             R2, SP, #0x28+var_1C
15E8D2:  STRD.W          R0, R12, [SP,#0x28+var_28]
15E8D6:  ADD             R3, PC; unk_BA757
15E8D8:  ADD             R0, SP, #0x28+var_10
15E8DA:  STR             R2, [SP,#0x28+var_14]
15E8DC:  BL              sub_15F2EE
15E8E0:  LDR             R0, [SP,#0x28+var_10]
15E8E2:  MOVS            R1, #1
15E8E4:  STR             R4, [R0,#0x10]
15E8E6:  STRB            R1, [R0,#0x15]
15E8E8:  ADD             SP, SP, #0x20 ; ' '
15E8EA:  POP             {R4,R6,R7,PC}
