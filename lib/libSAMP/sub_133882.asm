; =========================================================
; Game Engine Function: sub_133882
; Address            : 0x133882 - 0x1338EA
; =========================================================

133882:  PUSH            {R4,R5,R7,LR}
133884:  ADD             R7, SP, #8
133886:  SUB             SP, SP, #0x30
133888:  MOV             R5, R0
13388A:  LDR             R0, [R0,#0x2C]
13388C:  LDR             R2, [R5,#0x30]
13388E:  MOV             R4, R1
133890:  VLDR            S2, [R5,#0x14]
133894:  ADD             R3, SP, #0x38+var_20
133896:  VMOV            S6, R0
13389A:  VLDR            S4, [R5,#0x18]
13389E:  VMOV            S0, R2
1338A2:  LDR             R1, [R5,#0x54]
1338A4:  VADD.F32        S2, S2, S6
1338A8:  STRD.W          R0, R2, [SP,#0x38+var_10]
1338AC:  VADD.F32        S0, S4, S0
1338B0:  MOVS            R0, #0
1338B2:  ADD             R2, SP, #0x38+var_28
1338B4:  LDR             R1, [R1]
1338B6:  STRD.W          R0, R0, [SP,#0x38+var_20]
1338BA:  MOV.W           R0, #0x3F800000
1338BE:  STRD.W          R3, R2, [SP,#0x38+var_38]
1338C2:  ADD             R2, SP, #0x38+var_10
1338C4:  STRD.W          R0, R0, [SP,#0x38+var_28]
1338C8:  MOV.W           R0, #0xFFFFFFFF
1338CC:  ADD             R3, SP, #0x38+var_18
1338CE:  STR             R0, [SP,#0x38+var_30]
1338D0:  MOV             R0, R4
1338D2:  VSTR            S2, [SP,#0x38+var_18]
1338D6:  VSTR            S0, [SP,#0x38+var_14]
1338DA:  BL              sub_12B2C0
1338DE:  MOV             R0, R5
1338E0:  MOV             R1, R4
1338E2:  BL              sub_12C0B6
1338E6:  ADD             SP, SP, #0x30 ; '0'
1338E8:  POP             {R4,R5,R7,PC}
