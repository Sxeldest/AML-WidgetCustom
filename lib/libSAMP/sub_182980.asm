; =========================================================
; Game Engine Function: sub_182980
; Address            : 0x182980 - 0x182A4C
; =========================================================

182980:  PUSH            {R4-R7,LR}
182982:  ADD             R7, SP, #0xC
182984:  PUSH.W          {R11}
182988:  SUB             SP, SP, #0x118
18298A:  MOV             R4, R0
18298C:  ADD             R0, SP, #0x128+var_CC
18298E:  STRD.W          R1, R2, [SP,#0x128+src]
182992:  BL              sub_18BA18
182996:  LDR.W           R5, [R4,#0x970]
18299A:  MOVS            R0, #0xF
18299C:  STRB.W          R0, [SP,#0x128+var_105]
1829A0:  BL              sub_17E2E4
1829A4:  CMP             R5, R0
1829A6:  BCS             loc_1829AE
1829A8:  MOV             R0, R4
1829AA:  BL              sub_17FF4A
1829AE:  ADD             R0, SP, #0x128+var_CC
1829B0:  BL              sub_18BA58
1829B4:  ADD             R0, SP, #0x128+var_CC; int
1829B6:  ADD             R1, SP, #0x128+src; src
1829B8:  MOVS            R2, #4
1829BA:  BL              sub_18C9EC
1829BE:  ADD             R0, SP, #0x128+src
1829C0:  ADDS            R1, R0, #4; src
1829C2:  ADD             R0, SP, #0x128+var_CC; int
1829C4:  MOVS            R2, #2
1829C6:  BL              sub_18C9EC
1829CA:  ADDW            R1, R4, #0x974; src
1829CE:  ADD             R0, SP, #0x128+var_CC; int
1829D0:  MOVS            R2, #0x14
1829D2:  BL              sub_18C9EC
1829D6:  ADD             R0, SP, #0x128+var_CC; int
1829D8:  BL              sub_18CA7C
1829DC:  ADD             R0, SP, #0x128+var_CC
1829DE:  BL              sub_18CB50
1829E2:  ADDW            R1, R4, #0x834
1829E6:  VLD1.8          {D18-D19}, [R0]!
1829EA:  VLD1.8          {D16-D17}, [R1]!
1829EE:  VLD1.8          {D20-D21}, [R1]
1829F2:  ADD.W           R1, SP, #0x128+var_105
1829F6:  ADDS            R3, R1, #1
1829F8:  VST1.8          {D18-D19}, [R3]!
1829FC:  LDR             R0, [R0]
1829FE:  STR             R0, [R3]
182A00:  ADD.W           R0, R1, #0x19
182A04:  LDRD.W          R5, R6, [SP,#0x128+src]
182A08:  VST1.8          {D16-D17}, [R0]!
182A0C:  LDR.W           R2, [R4,#0x814]
182A10:  VST1.8          {D20-D21}, [R0]
182A14:  STR             R2, [SP,#0x128+var_F0]
182A16:  BL              sub_17E2E4
182A1A:  MOVS            R1, #0
182A1C:  MOVS            R2, #6
182A1E:  STRD.W          R2, R1, [SP,#0x128+var_128]
182A22:  MOV.W           R2, #0x1C8
182A26:  STRD.W          R0, R1, [SP,#0x128+var_110]
182A2A:  MOV             R0, R4
182A2C:  STRD.W          R1, R1, [SP,#0x128+var_118]
182A30:  ADD.W           R1, SP, #0x128+var_105
182A34:  MOVS            R3, #0
182A36:  STRD.W          R5, R6, [SP,#0x128+var_120]
182A3A:  BL              sub_1825E8
182A3E:  ADD             R0, SP, #0x128+var_CC
182A40:  BL              sub_18BA88
182A44:  ADD             SP, SP, #0x118
182A46:  POP.W           {R11}
182A4A:  POP             {R4-R7,PC}
