; =========================================================
; Game Engine Function: sub_13B7E4
; Address            : 0x13B7E4 - 0x13B892
; =========================================================

13B7E4:  PUSH            {R4,R5,R7,LR}
13B7E6:  ADD             R7, SP, #8
13B7E8:  VPUSH           {D8}
13B7EC:  SUB             SP, SP, #0x10
13B7EE:  MOV             R4, R0
13B7F0:  LDR             R0, =(off_234BC0 - 0x13B7FA)
13B7F2:  VLDR            S0, =0.7
13B7F6:  ADD             R0, PC; off_234BC0
13B7F8:  LDR             R1, [R4,#0x24]
13B7FA:  LDR             R0, [R0]; dword_238F38
13B7FC:  VLDR            S2, [R0,#4]
13B800:  LDR             R0, [R4,#0x54]
13B802:  VMUL.F32        S16, S2, S0
13B806:  VLDR            S0, [R4,#0x28]
13B80A:  STR             R1, [R0,#0x24]
13B80C:  VSUB.F32        S0, S0, S16
13B810:  VSTR            S0, [R0,#0x28]
13B814:  VLDR            S0, [R4,#0x20]
13B818:  LDR             R0, [R4,#0x54]
13B81A:  VSUB.F32        S0, S0, S16
13B81E:  LDR             R1, [R4,#0x1C]
13B820:  STR             R1, [R0,#0x1C]
13B822:  VSTR            S0, [R0,#0x20]
13B826:  LDR             R0, [R4,#0x54]
13B828:  LDR             R1, [R0]
13B82A:  LDR             R1, [R1,#8]
13B82C:  BLX             R1
13B82E:  LDR             R0, [R4,#0x54]
13B830:  ADD             R1, SP, #0x20+var_18
13B832:  VLDR            S0, [R0,#0x18]
13B836:  LDR             R0, [R0,#0x14]
13B838:  VADD.F32        S0, S16, S0
13B83C:  STR             R0, [SP,#0x20+var_18]
13B83E:  MOV             R0, R4
13B840:  VSTR            S0, [SP,#0x20+var_14]
13B844:  BL              sub_12BD38
13B848:  LDR             R0, [R4,#0x58]
13B84A:  LDR             R1, [SP,#0x20+var_18]
13B84C:  STR             R1, [SP,#0x20+var_20]
13B84E:  MOV             R1, SP
13B850:  VSTR            S16, [SP,#0x20+var_1C]
13B854:  BL              sub_12BD38
13B858:  LDR             R0, [R4,#0x58]
13B85A:  LDR             R1, [R0]
13B85C:  LDR             R1, [R1,#8]
13B85E:  BLX             R1
13B860:  LDR             R0, [R4,#0x54]
13B862:  MOVS            R5, #0
13B864:  MOV             R1, SP
13B866:  STRD.W          R5, R5, [SP,#0x20+var_20]
13B86A:  BL              sub_12BD92
13B86E:  LDRD.W          R1, R0, [R4,#0x54]
13B872:  STR             R5, [SP,#0x20+var_20]
13B874:  VLDR            S0, [R1,#0x10]
13B878:  VLDR            S2, [R1,#0x18]
13B87C:  MOV             R1, SP
13B87E:  VADD.F32        S0, S0, S2
13B882:  VSTR            S0, [SP,#0x20+var_1C]
13B886:  BL              sub_12BD92
13B88A:  ADD             SP, SP, #0x10
13B88C:  VPOP            {D8}
13B890:  POP             {R4,R5,R7,PC}
