; =========================================================
; Game Engine Function: sub_1740F8
; Address            : 0x1740F8 - 0x174190
; =========================================================

1740F8:  CMP.W           R3, #0x1000000
1740FC:  IT CC
1740FE:  BXCC            LR
174100:  PUSH            {R4,R5,R7,LR}
174102:  ADD             R7, SP, #0x10+var_8
174104:  VPUSH           {D8}
174108:  SUB             SP, SP, #0x18
17410A:  MOV             R4, R0
17410C:  MOV             R5, R3
17410E:  LDRB.W          R3, [R4,#0x24]
174112:  VMOV.F32        S2, #0.5
174116:  VLDR            S0, [R7,#8]
17411A:  VLDR            S6, [R1,#4]
17411E:  LSLS            R3, R3, #0x1F
174120:  VLDR            S4, [R1]
174124:  VMOV            R3, S0
174128:  LDR             R0, [R7,#0xC]
17412A:  ADD             R1, SP, #0x30+var_20
17412C:  VLDR            S16, [R7,#0x10]
174130:  VADD.F32        S6, S6, S2
174134:  VADD.F32        S2, S4, S2
174138:  ITE EQ
17413A:  VLDREQ          S4, =-0.49
17413E:  VMOVNE.F32      S4, #-0.5
174142:  VLDR            S0, [R2]
174146:  VADD.F32        S0, S0, S4
17414A:  VSTR            S6, [SP,#0x30+var_1C]
17414E:  VSTR            S2, [SP,#0x30+var_20]
174152:  VLDR            S2, [R2,#4]
174156:  ADD             R2, SP, #0x30+var_28
174158:  STR             R0, [SP,#0x30+var_30]
17415A:  MOV             R0, R4
17415C:  VADD.F32        S2, S2, S4
174160:  VSTR            S0, [SP,#0x30+var_28]
174164:  VSTR            S2, [SP,#0x30+var_24]
174168:  BL              sub_173CBC
17416C:  LDR             R2, [R4,#0x58]; int
17416E:  MOVS            R0, #1
174170:  LDR             R1, [R4,#0x60]; int
174172:  MOV             R3, R5; int
174174:  STR             R0, [SP,#0x30+var_30]; int
174176:  MOV             R0, R4; int
174178:  VSTR            S16, [SP,#0x30+var_2C]
17417C:  BL              sub_172FDA
174180:  MOVS            R0, #0
174182:  STR             R0, [R4,#0x58]
174184:  ADD             SP, SP, #0x18
174186:  VPOP            {D8}
17418A:  POP.W           {R4,R5,R7,LR}
17418E:  BX              LR
