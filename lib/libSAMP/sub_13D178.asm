; =========================================================
; Game Engine Function: sub_13D178
; Address            : 0x13D178 - 0x13D1EE
; =========================================================

13D178:  PUSH            {R4,R5,R7,LR}
13D17A:  ADD             R7, SP, #8
13D17C:  SUB             SP, SP, #0x28
13D17E:  MOV             R5, R0
13D180:  LDR             R0, =(off_234A5C - 0x13D18C)
13D182:  VLDR            S0, [R5,#0x2C]
13D186:  MOV             R4, R1
13D188:  ADD             R0, PC; off_234A5C
13D18A:  VLDR            S2, [R5,#0x30]
13D18E:  ADD             R3, SP, #0x30+var_28; int
13D190:  ADD             R1, SP, #0x30+var_10; int
13D192:  LDR             R0, [R0]; dword_238EC4
13D194:  ADD             R2, SP, #0x30+var_18; int
13D196:  VLDR            S4, [R0]
13D19A:  ADR             R0, dword_13D1F0
13D19C:  VLD1.64         {D16-D17}, [R0]
13D1A0:  MOVS            R0, #0
13D1A2:  VADD.F32        S6, S4, S2
13D1A6:  VADD.F32        S8, S4, S0
13D1AA:  VST1.64         {D16-D17}, [R3]
13D1AE:  VSTR            S6, [SP,#0x30+var_C]
13D1B2:  VSTR            S8, [SP,#0x30+var_10]
13D1B6:  VLDR            S6, [R5,#0x14]
13D1BA:  VLDR            S8, [R5,#0x18]
13D1BE:  VADD.F32        S0, S0, S6
13D1C2:  STR             R0, [SP,#0x30+var_30]; int
13D1C4:  VADD.F32        S2, S2, S8
13D1C8:  MOV             R0, R4; int
13D1CA:  VSTR            S4, [SP,#0x30+var_2C]
13D1CE:  VSUB.F32        S0, S0, S4
13D1D2:  VSUB.F32        S2, S2, S4
13D1D6:  VSTR            S0, [SP,#0x30+var_18]
13D1DA:  VSTR            S2, [SP,#0x30+var_14]
13D1DE:  BL              sub_12AB98
13D1E2:  MOV             R0, R5
13D1E4:  MOV             R1, R4
13D1E6:  BL              sub_12C0B6
13D1EA:  ADD             SP, SP, #0x28 ; '('
13D1EC:  POP             {R4,R5,R7,PC}
