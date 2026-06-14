; =========================================================
; Game Engine Function: sub_136F9C
; Address            : 0x136F9C - 0x13703A
; =========================================================

136F9C:  PUSH            {R4-R7,LR}
136F9E:  ADD             R7, SP, #0xC
136FA0:  PUSH.W          {R8,R9,R11}
136FA4:  SUB             SP, SP, #0x20
136FA6:  VLDR            S0, [R0,#0x14]
136FAA:  ADD.W           R8, SP, #0x38+var_30
136FAE:  VLDR            S4, [R0,#0x2C]
136FB2:  ADD.W           R6, R0, #0x2C ; ','
136FB6:  VLDR            S2, [R0,#0x18]
136FBA:  MOV             R4, R1
136FBC:  VLDR            S6, [R0,#0x30]
136FC0:  VADD.F32        S0, S4, S0
136FC4:  MOV             R5, R0
136FC6:  MOV             R0, R1
136FC8:  VADD.F32        S2, S6, S2
136FCC:  MOV             R1, R6
136FCE:  MOV             R2, R8
136FD0:  MOVS            R3, #1
136FD2:  MOV.W           R9, #1
136FD6:  VSTR            S0, [SP,#0x38+var_30]
136FDA:  VSTR            S2, [SP,#0x38+var_2C]
136FDE:  BL              sub_12B2DC
136FE2:  VLDR            S0, [R5,#0x14]
136FE6:  ADD             R2, SP, #0x38+var_20; int
136FE8:  VLDR            S4, [R5,#0x2C]
136FEC:  MOV             R1, R6; int
136FEE:  VLDR            S2, [R5,#0x18]
136FF2:  MOV             R3, R8; int
136FF4:  VLDR            S6, [R5,#0x30]
136FF8:  VADD.F32        S0, S4, S0
136FFC:  LDR             R0, =(off_234BF4 - 0x137006)
136FFE:  VADD.F32        S2, S6, S2
137002:  ADD             R0, PC; off_234BF4
137004:  LDR             R0, [R0]; unk_239008
137006:  VLD1.32         {D16-D17}, [R0]
13700A:  MOV.W           R0, #0x3F800000
13700E:  STRD.W          R9, R0, [SP,#0x38+var_38]; int
137012:  MOV             R0, R4; int
137014:  VSTR            S2, [SP,#0x38+var_1C]
137018:  VSTR            S0, [SP,#0x38+var_20]
13701C:  VST1.64         {D16-D17}, [R8]
137020:  BL              sub_12AB98
137024:  MOV             R0, R5
137026:  MOV             R1, R4
137028:  BL              sub_12C0B6
13702C:  MOV             R0, R4
13702E:  BL              sub_12B2FE
137032:  ADD             SP, SP, #0x20 ; ' '
137034:  POP.W           {R8,R9,R11}
137038:  POP             {R4-R7,PC}
