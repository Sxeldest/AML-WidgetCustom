; =========================================================
; Game Engine Function: sub_102A94
; Address            : 0x102A94 - 0x102AEC
; =========================================================

102A94:  SUB             SP, SP, #0x10
102A96:  PUSH            {R4-R7,LR}
102A98:  ADD             R7, SP, #0xC
102A9A:  PUSH.W          {R11}
102A9E:  SUB             SP, SP, #0x148
102AA0:  LDR             R4, =(off_234A74 - 0x102AA8)
102AA2:  STR             R3, [R7,#var_s14]
102AA4:  ADD             R4, PC; off_234A74
102AA6:  STRD.W          R1, R2, [R7,#var_sC]
102AAA:  STR             R0, [R7,#var_s8]
102AAC:  LDR             R3, [R4]; dword_2402E4
102AAE:  LDR             R1, [R3]
102AB0:  LDR             R0, [R1]
102AB2:  CBZ             R0, loc_102AB8
102AB4:  MOVS            R0, #0
102AB6:  B               loc_102ADE
102AB8:  LDR             R0, =(off_25C934 - 0x102ACA)
102ABA:  ADD.W           R3, R7, #8
102ABE:  ADD.W           LR, R3, #0x10
102AC2:  MOVW            R4, #0x148
102AC6:  ADD             R0, PC; off_25C934
102AC8:  MOV             R5, SP
102ACA:  LDR.W           R12, [R0]
102ACE:  LDM             R3, {R0-R3}
102AD0:  LDR.W           R6, [LR],#4
102AD4:  SUBS            R4, #4
102AD6:  STR.W           R6, [R5],#4
102ADA:  BNE             loc_102AD0
102ADC:  BLX             R12
102ADE:  ADD             SP, SP, #0x148
102AE0:  POP.W           {R11}
102AE4:  POP.W           {R4-R7,LR}
102AE8:  ADD             SP, SP, #0x10
102AEA:  BX              LR
