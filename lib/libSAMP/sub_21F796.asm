; =========================================================
; Game Engine Function: sub_21F796
; Address            : 0x21F796 - 0x21F7D0
; =========================================================

21F796:  PUSH            {R4-R7,LR}
21F798:  ADD             R7, SP, #0xC
21F79A:  PUSH.W          {R11}
21F79E:  SUB             SP, SP, #8
21F7A0:  LDR             R6, [R0,#4]
21F7A2:  LSLS            R5, R6, #0x1F
21F7A4:  MOV.W           LR, R6,ASR#8
21F7A8:  LDRD.W          R5, R12, [R7,#arg_0]
21F7AC:  ITT NE
21F7AE:  LDRNE           R4, [R3]
21F7B0:  LDRNE.W         LR, [R4,LR]
21F7B4:  LDR             R0, [R0]
21F7B6:  ADD             R3, LR
21F7B8:  LSLS            R6, R6, #0x1E
21F7BA:  LDR             R4, [R0]
21F7BC:  LDR             R4, [R4,#0x14]
21F7BE:  IT PL
21F7C0:  MOVPL           R5, #2
21F7C2:  STRD.W          R5, R12, [SP,#0x18+var_18]
21F7C6:  BLX             R4
21F7C8:  ADD             SP, SP, #8
21F7CA:  POP.W           {R11}
21F7CE:  POP             {R4-R7,PC}
