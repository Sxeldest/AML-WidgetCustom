; =========================================================
; Game Engine Function: sub_134200
; Address            : 0x134200 - 0x13428E
; =========================================================

134200:  PUSH            {R4-R7,LR}
134202:  ADD             R7, SP, #0xC
134204:  PUSH.W          {R8}
134208:  SUB             SP, SP, #0x28
13420A:  LDRD.W          R6, R4, [R0,#0x2C]
13420E:  MOV             R5, R0
134210:  LDRB.W          R0, [R0,#0x51]
134214:  VMOV.F32        S2, #1.0
134218:  VLDR            S0, =0.49804
13421C:  MOV             R8, R1
13421E:  CMP             R0, #0
134220:  MOV.W           R0, #0x3F800000
134224:  STRD.W          R6, R4, [SP,#0x38+var_18]
134228:  IT EQ
13422A:  VMOVEQ.F32      S0, S2
13422E:  STR             R0, [SP,#0x38+var_1C]
134230:  ADD             R0, SP, #0x38+var_28
134232:  VSTR            S0, [SP,#0x38+var_20]
134236:  VSTR            S0, [SP,#0x38+var_24]
13423A:  VSTR            S0, [SP,#0x38+var_28]
13423E:  BL              sub_165778
134242:  VMOV            S0, R4
134246:  VLDR            S4, [R5,#0x18]
13424A:  VLDR            S2, [R5,#0x14]
13424E:  VMOV            S6, R6
134252:  VADD.F32        S0, S4, S0
134256:  LDR             R1, [R5,#0x70]
134258:  VADD.F32        S2, S2, S6
13425C:  ADD.W           R2, R5, #0x7C ; '|'
134260:  ADD.W           R3, R5, #0x74 ; 't'
134264:  LDR             R1, [R1]
134266:  STRD.W          R3, R2, [SP,#0x38+var_38]
13426A:  ADD             R2, SP, #0x38+var_18
13426C:  ADD             R3, SP, #0x38+var_28
13426E:  STR             R0, [SP,#0x38+var_30]
134270:  MOV             R0, R8
134272:  VSTR            S0, [SP,#0x38+var_24]
134276:  VSTR            S2, [SP,#0x38+var_28]
13427A:  BL              sub_12B2C0
13427E:  MOV             R0, R5
134280:  MOV             R1, R8
134282:  BL              sub_12C0B6
134286:  ADD             SP, SP, #0x28 ; '('
134288:  POP.W           {R8}
13428C:  POP             {R4-R7,PC}
