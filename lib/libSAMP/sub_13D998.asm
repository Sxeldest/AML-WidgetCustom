; =========================================================
; Game Engine Function: sub_13D998
; Address            : 0x13D998 - 0x13DA46
; =========================================================

13D998:  PUSH            {R4-R7,LR}
13D99A:  ADD             R7, SP, #0xC
13D99C:  PUSH.W          {R8,R9,R11}
13D9A0:  VPUSH           {D8}
13D9A4:  SUB             SP, SP, #0x10
13D9A6:  LDRD.W          R5, R8, [R0,#0x44]
13D9AA:  MOV             R4, R0
13D9AC:  CMP             R5, R8
13D9AE:  BEQ             loc_13DA1A
13D9B0:  LDRD.W          R1, R2, [R4,#0x54]
13D9B4:  LDR.W           R0, [R5],#4
13D9B8:  VMOV            D16, R1, R2
13D9BC:  VMOV            D17, D16
13D9C0:  MOV             R3, R0
13D9C2:  LDR.W           R6, [R3],#0x14
13D9C6:  VST1.32         {D16-D17}, [R3]!
13D9CA:  STRD.W          R1, R2, [R3]
13D9CE:  LDR             R1, [R6,#8]
13D9D0:  BLX             R1
13D9D2:  CMP             R5, R8
13D9D4:  BNE             loc_13D9B0
13D9D6:  LDRD.W          R5, R9, [R4,#0x44]
13D9DA:  MOVS            R0, #0
13D9DC:  STRD.W          R0, R0, [SP,#0x30+var_28]
13D9E0:  CMP             R5, R9
13D9E2:  BEQ             loc_13DA26
13D9E4:  ADD.W           R8, SP, #0x30+var_28
13D9E8:  VLDR            S16, =0.0
13D9EC:  LDR.W           R6, [R5],#4
13D9F0:  MOV             R1, R8
13D9F2:  MOV             R0, R6
13D9F4:  BL              sub_12BD92
13D9F8:  VLDR            S0, [SP,#0x30+var_28]
13D9FC:  CMP             R5, R9
13D9FE:  VLDR            S2, [SP,#0x30+var_24]
13DA02:  VLDR            S4, [R6,#0x18]
13DA06:  VADD.F32        S6, S0, S16
13DA0A:  VADD.F32        S0, S4, S2
13DA0E:  VSTR            S6, [SP,#0x30+var_28]
13DA12:  VSTR            S0, [SP,#0x30+var_24]
13DA16:  BNE             loc_13D9EC
13DA18:  B               loc_13DA2A
13DA1A:  MOVS            R0, #0
13DA1C:  VLDR            S0, =0.0
13DA20:  STRD.W          R0, R0, [SP,#0x30+var_28]
13DA24:  B               loc_13DA2A
13DA26:  VLDR            S0, =0.0
13DA2A:  LDR             R0, [R4,#0x54]
13DA2C:  MOV             R1, SP
13DA2E:  STR             R0, [SP,#0x30+var_30]
13DA30:  MOV             R0, R4
13DA32:  VSTR            S0, [SP,#0x30+var_2C]
13DA36:  BL              sub_12BD38
13DA3A:  ADD             SP, SP, #0x10
13DA3C:  VPOP            {D8}
13DA40:  POP.W           {R8,R9,R11}
13DA44:  POP             {R4-R7,PC}
