; =========================================================
; Game Engine Function: sub_11B850
; Address            : 0x11B850 - 0x11B8CE
; =========================================================

11B850:  PUSH            {R4-R7,LR}
11B852:  ADD             R7, SP, #0xC
11B854:  PUSH.W          {R8,R9,R11}
11B858:  SUB             SP, SP, #8
11B85A:  MOV.W           R8, #0x17
11B85E:  MOV             R9, R0
11B860:  MOV             R4, R2
11B862:  MOV             R5, R1
11B864:  LDR             R0, [R1,#0x1C]
11B866:  MLA.W           R1, R2, R8, R0
11B86A:  MUL.W           R2, R2, R8
11B86E:  LDR.W           R3, [R1,#0x13]
11B872:  LDR             R6, [R1,#4]
11B874:  MOV             R1, R5
11B876:  LDR             R2, [R0,R2]
11B878:  MOV             R0, R9
11B87A:  STR             R6, [SP,#0x20+var_20]
11B87C:  BL              sub_11B9E8
11B880:  CBZ             R0, loc_11B8BA
11B882:  LDR             R1, =(off_23494C - 0x11B892)
11B884:  MOVW            R3, #0x818C
11B888:  LDR             R2, [R5,#0x1C]
11B88A:  MOVT            R3, #0x67 ; 'g'
11B88E:  ADD             R1, PC; off_23494C
11B890:  MLA.W           R2, R4, R8, R2
11B894:  LDR             R0, [R0]
11B896:  LDR             R1, [R1]; dword_23DF24
11B898:  STR             R2, [R0,#0x2C]
11B89A:  LDR             R1, [R1]
11B89C:  LDR             R1, [R1,R3]
11B89E:  MOVS            R3, #3
11B8A0:  LDR             R1, [R1]
11B8A2:  LDR             R0, [R0,R1]
11B8A4:  LDRD.W          R1, R0, [R0,#4]
11B8A8:  MULS            R0, R1
11B8AA:  LDRH            R1, [R2,#8]
11B8AC:  BFI.W           R1, R3, #0xC, #0x14
11B8B0:  STRH            R1, [R2,#8]
11B8B2:  ADD             SP, SP, #8
11B8B4:  POP.W           {R8,R9,R11}
11B8B8:  POP             {R4-R7,PC}
11B8BA:  LDR.W           R2, [R9]
11B8BE:  MOV             R0, R5
11B8C0:  MOV             R1, R4
11B8C2:  ADD             SP, SP, #8
11B8C4:  POP.W           {R8,R9,R11}
11B8C8:  POP.W           {R4-R7,LR}
11B8CC:  BX              R2
