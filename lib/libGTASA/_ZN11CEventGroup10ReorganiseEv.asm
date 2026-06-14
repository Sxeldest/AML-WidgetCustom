; =========================================================
; Game Engine Function: _ZN11CEventGroup10ReorganiseEv
; Address            : 0x36F770 - 0x36F7C8
; =========================================================

36F770:  PUSH            {R4,R5,R7,LR}
36F772:  ADD             R7, SP, #8
36F774:  SUB             SP, SP, #0x40
36F776:  LDR             R3, [R0,#8]
36F778:  CMP             R3, #1
36F77A:  BLT             loc_36F7C0
36F77C:  ADD.W           R1, R0, #0xC
36F780:  MOV.W           R12, #0
36F784:  MOV             LR, SP
36F786:  MOVS            R2, #0
36F788:  MOVS            R4, #0
36F78A:  LDR.W           R5, [R1,R4,LSL#2]
36F78E:  CMP             R5, #0
36F790:  ITTTT NE
36F792:  STRNE.W         R5, [LR,R2,LSL#2]
36F796:  STRNE.W         R12, [R1,R4,LSL#2]
36F79A:  LDRNE           R3, [R0,#8]
36F79C:  ADDNE           R2, #1
36F79E:  ADDS            R4, #1
36F7A0:  CMP             R4, R3
36F7A2:  BLT             loc_36F78A
36F7A4:  CMP             R2, #1
36F7A6:  STR             R2, [R0,#8]
36F7A8:  BLT             loc_36F7BC
36F7AA:  MOVS            R2, #0
36F7AC:  LDR.W           R3, [LR,R2,LSL#2]
36F7B0:  STR.W           R3, [R1,R2,LSL#2]
36F7B4:  ADDS            R2, #1
36F7B6:  LDR             R3, [R0,#8]
36F7B8:  CMP             R2, R3
36F7BA:  BLT             loc_36F7AC
36F7BC:  ADD             SP, SP, #0x40 ; '@'
36F7BE:  POP             {R4,R5,R7,PC}
36F7C0:  MOVS            R1, #0
36F7C2:  STR             R1, [R0,#8]
36F7C4:  ADD             SP, SP, #0x40 ; '@'
36F7C6:  POP             {R4,R5,R7,PC}
