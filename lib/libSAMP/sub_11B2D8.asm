; =========================================================
; Game Engine Function: sub_11B2D8
; Address            : 0x11B2D8 - 0x11B2F8
; =========================================================

11B2D8:  PUSH            {R7,LR}
11B2DA:  MOV             R7, SP
11B2DC:  SUB             SP, SP, #8
11B2DE:  LDR             R0, [R0,#0x10]
11B2E0:  STR             R2, [SP,#0x10+var_10]
11B2E2:  STR             R1, [SP,#0x10+var_C]
11B2E4:  CBZ             R0, loc_11B2F4
11B2E6:  LDR             R1, [R0]
11B2E8:  MOV             R2, SP
11B2EA:  LDR             R3, [R1,#0x18]
11B2EC:  ADD             R1, SP, #0x10+var_C
11B2EE:  BLX             R3
11B2F0:  ADD             SP, SP, #8
11B2F2:  POP             {R7,PC}
11B2F4:  BL              sub_DC92C
