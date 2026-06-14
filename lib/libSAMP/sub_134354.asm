; =========================================================
; Game Engine Function: sub_134354
; Address            : 0x134354 - 0x1343E2
; =========================================================

134354:  PUSH            {R4-R7,LR}
134356:  ADD             R7, SP, #0xC
134358:  PUSH.W          {R8}
13435C:  SUB             SP, SP, #0x28
13435E:  LDRD.W          R6, R4, [R0,#0x2C]
134362:  MOV             R5, R0
134364:  LDRB.W          R0, [R0,#0x51]
134368:  VMOV.F32        S2, #1.0
13436C:  VLDR            S0, =0.49804
134370:  MOV             R8, R1
134372:  CMP             R0, #0
134374:  MOV.W           R0, #0x3F800000
134378:  STRD.W          R6, R4, [SP,#0x38+var_18]
13437C:  IT EQ
13437E:  VMOVEQ.F32      S0, S2
134382:  STR             R0, [SP,#0x38+var_1C]
134384:  ADD             R0, SP, #0x38+var_28
134386:  VSTR            S0, [SP,#0x38+var_20]
13438A:  VSTR            S0, [SP,#0x38+var_24]
13438E:  VSTR            S0, [SP,#0x38+var_28]
134392:  BL              sub_165778
134396:  VMOV            S0, R4
13439A:  VLDR            S4, [R5,#0x18]
13439E:  VLDR            S2, [R5,#0x14]
1343A2:  VMOV            S6, R6
1343A6:  VADD.F32        S0, S4, S0
1343AA:  LDR             R1, [R5,#0x70]
1343AC:  VADD.F32        S2, S2, S6
1343B0:  ADD.W           R2, R5, #0x7C ; '|'
1343B4:  ADD.W           R3, R5, #0x74 ; 't'
1343B8:  LDR             R1, [R1]
1343BA:  STRD.W          R3, R2, [SP,#0x38+var_38]
1343BE:  ADD             R2, SP, #0x38+var_18
1343C0:  ADD             R3, SP, #0x38+var_28
1343C2:  STR             R0, [SP,#0x38+var_30]
1343C4:  MOV             R0, R8
1343C6:  VSTR            S0, [SP,#0x38+var_24]
1343CA:  VSTR            S2, [SP,#0x38+var_28]
1343CE:  BL              sub_12B2C0
1343D2:  MOV             R0, R5
1343D4:  MOV             R1, R8
1343D6:  BL              sub_12C0B6
1343DA:  ADD             SP, SP, #0x28 ; '('
1343DC:  POP.W           {R8}
1343E0:  POP             {R4-R7,PC}
