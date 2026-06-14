; =========================================================
; Game Engine Function: sub_1828B4
; Address            : 0x1828B4 - 0x182976
; =========================================================

1828B4:  PUSH            {R4-R7,LR}
1828B6:  ADD             R7, SP, #0xC
1828B8:  PUSH.W          {R8-R11}
1828BC:  SUB             SP, SP, #0x13C
1828BE:  MOV             R10, R0
1828C0:  ADD             R0, SP, #0x158+var_134; int
1828C2:  MOV             R4, R1
1828C4:  MOVS            R1, #0xB; size
1828C6:  MOV             R9, R3
1828C8:  STR             R2, [SP,#0x158+var_138]
1828CA:  BL              sub_17D4C0
1828CE:  MOVS            R1, #0x22 ; '"'
1828D0:  STRB.W          R1, [SP,#0x158+var_20]
1828D4:  ADD             R1, SP, #0x158+var_20
1828D6:  MOVS            R2, #8
1828D8:  MOVS            R3, #1
1828DA:  BL              sub_17D628
1828DE:  LDR             R0, [R4,#4]
1828E0:  STR             R0, [SP,#0x158+var_20]
1828E2:  ADD             R0, SP, #0x158+var_134
1828E4:  ADD             R1, SP, #0x158+var_20
1828E6:  MOVS            R2, #0x20 ; ' '
1828E8:  MOVS            R3, #1
1828EA:  BL              sub_17D628
1828EE:  LDRH            R0, [R4,#8]
1828F0:  STRH.W          R0, [SP,#0x158+var_20]
1828F4:  ADD             R0, SP, #0x158+var_134
1828F6:  ADD             R1, SP, #0x158+var_20
1828F8:  MOVS            R2, #0x10
1828FA:  MOVS            R3, #1
1828FC:  BL              sub_17D628
182900:  LDRD.W          R1, R2, [R4,#4]
182904:  MOV             R0, R10
182906:  MOVS            R3, #1
182908:  BL              sub_1811B4
18290C:  STRH.W          R0, [SP,#0x158+var_20]
182910:  ADD             R0, SP, #0x158+var_134
182912:  ADD             R1, SP, #0x158+var_20
182914:  MOVS            R2, #0x10
182916:  MOVS            R3, #1
182918:  BL              sub_17D628
18291C:  LDR.W           R11, [SP,#0x158+var_134]
182920:  LDR             R5, [SP,#0x158+var_128]
182922:  LDRD.W          R6, R8, [R4,#4]
182926:  BL              sub_17E2E4
18292A:  MOVS            R1, #0
18292C:  MOVS            R2, #8
18292E:  STRD.W          R2, R1, [SP,#0x158+var_158]
182932:  MOV             R2, R11
182934:  STRD.W          R0, R1, [SP,#0x158+var_140]
182938:  MOV             R0, R10
18293A:  STRD.W          R1, R1, [SP,#0x158+var_148]
18293E:  MOV             R1, R5
182940:  MOVS            R3, #0
182942:  STRD.W          R6, R8, [SP,#0x158+var_150]
182946:  BL              sub_1825E8
18294A:  CMP.W           R9, #0
18294E:  STRB.W          R9, [R4,#0x82C]
182952:  BEQ             loc_182968
182954:  LDR             R0, [SP,#0x158+var_138]
182956:  MOVS            R1, #0x20 ; ' '
182958:  VLD1.8          {D16-D17}, [R0]
18295C:  ADDW            R0, R4, #0x81C
182960:  VST1.8          {D16-D17}, [R0],R1
182964:  MOVS            R1, #7
182966:  STR             R1, [R0]
182968:  ADD             R0, SP, #0x158+var_134
18296A:  BL              sub_17D542
18296E:  ADD             SP, SP, #0x13C
182970:  POP.W           {R8-R11}
182974:  POP             {R4-R7,PC}
