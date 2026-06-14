; =========================================================
; Game Engine Function: sub_134038
; Address            : 0x134038 - 0x1340C6
; =========================================================

134038:  PUSH            {R4-R7,LR}
13403A:  ADD             R7, SP, #0xC
13403C:  PUSH.W          {R8}
134040:  SUB             SP, SP, #0x28
134042:  LDRD.W          R6, R4, [R0,#0x2C]
134046:  MOV             R5, R0
134048:  LDRB.W          R0, [R0,#0x51]
13404C:  VMOV.F32        S2, #1.0
134050:  VLDR            S0, =0.49804
134054:  MOV             R8, R1
134056:  CMP             R0, #0
134058:  MOV.W           R0, #0x3F800000
13405C:  STRD.W          R6, R4, [SP,#0x38+var_18]
134060:  IT EQ
134062:  VMOVEQ.F32      S0, S2
134066:  STR             R0, [SP,#0x38+var_1C]
134068:  ADD             R0, SP, #0x38+var_28
13406A:  VSTR            S0, [SP,#0x38+var_20]
13406E:  VSTR            S0, [SP,#0x38+var_24]
134072:  VSTR            S0, [SP,#0x38+var_28]
134076:  BL              sub_165778
13407A:  VMOV            S0, R4
13407E:  VLDR            S4, [R5,#0x18]
134082:  VLDR            S2, [R5,#0x14]
134086:  VMOV            S6, R6
13408A:  VADD.F32        S0, S4, S0
13408E:  LDR             R1, [R5,#0x70]
134090:  VADD.F32        S2, S2, S6
134094:  ADD.W           R2, R5, #0x7C ; '|'
134098:  ADD.W           R3, R5, #0x74 ; 't'
13409C:  LDR             R1, [R1]
13409E:  STRD.W          R3, R2, [SP,#0x38+var_38]
1340A2:  ADD             R2, SP, #0x38+var_18
1340A4:  ADD             R3, SP, #0x38+var_28
1340A6:  STR             R0, [SP,#0x38+var_30]
1340A8:  MOV             R0, R8
1340AA:  VSTR            S0, [SP,#0x38+var_24]
1340AE:  VSTR            S2, [SP,#0x38+var_28]
1340B2:  BL              sub_12B2C0
1340B6:  MOV             R0, R5
1340B8:  MOV             R1, R8
1340BA:  BL              sub_12C0B6
1340BE:  ADD             SP, SP, #0x28 ; '('
1340C0:  POP.W           {R8}
1340C4:  POP             {R4-R7,PC}
