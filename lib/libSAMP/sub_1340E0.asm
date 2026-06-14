; =========================================================
; Game Engine Function: sub_1340E0
; Address            : 0x1340E0 - 0x13413E
; =========================================================

1340E0:  PUSH            {R4,R5,R7,LR}
1340E2:  ADD             R7, SP, #8
1340E4:  SUB             SP, SP, #0x20
1340E6:  MOV             R5, R0
1340E8:  LDR             R0, [R0,#0x2C]
1340EA:  LDR             R2, [R5,#0x30]
1340EC:  MOV             R4, R1
1340EE:  VLDR            S2, [R5,#0x14]
1340F2:  ADD.W           R3, R5, #0x58 ; 'X'
1340F6:  VMOV            S6, R0
1340FA:  VLDR            S4, [R5,#0x18]
1340FE:  VMOV            S0, R2
134102:  LDR             R1, [R5,#0x54]
134104:  VADD.F32        S2, S2, S6
134108:  STRD.W          R0, R2, [SP,#0x28+var_10]
13410C:  VADD.F32        S0, S4, S0
134110:  ADD.W           R2, R5, #0x60 ; '`'
134114:  LDR             R1, [R1]
134116:  MOV.W           R0, #0xFFFFFFFF
13411A:  STRD.W          R3, R2, [SP,#0x28+var_28]
13411E:  ADD             R2, SP, #0x28+var_10
134120:  ADD             R3, SP, #0x28+var_18
134122:  STR             R0, [SP,#0x28+var_20]
134124:  MOV             R0, R4
134126:  VSTR            S2, [SP,#0x28+var_18]
13412A:  VSTR            S0, [SP,#0x28+var_14]
13412E:  BL              sub_12B2C0
134132:  MOV             R0, R5
134134:  MOV             R1, R4
134136:  BL              sub_12C0B6
13413A:  ADD             SP, SP, #0x20 ; ' '
13413C:  POP             {R4,R5,R7,PC}
