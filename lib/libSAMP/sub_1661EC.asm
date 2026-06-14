; =========================================================
; Game Engine Function: sub_1661EC
; Address            : 0x1661EC - 0x16631C
; =========================================================

1661EC:  PUSH            {R4-R7,LR}
1661EE:  ADD             R7, SP, #0xC
1661F0:  PUSH.W          {R8-R11}
1661F4:  SUB             SP, SP, #4
1661F6:  VPUSH           {D8-D9}
1661FA:  SUB             SP, SP, #0x40; float
1661FC:  LDR             R6, =(dword_381B58 - 0x16620A)
1661FE:  STRD.W          R0, R1, [SP,#0x70+var_48]
166202:  MOVW            R0, #0x19AC
166206:  ADD             R6, PC; dword_381B58
166208:  STRD.W          R2, R3, [SP,#0x70+var_50]
16620C:  LDR             R3, [R7,#arg_0]; int
16620E:  MOVS            R1, #0xF
166210:  LDR             R4, [R6]
166212:  ADD             R2, SP, #0x70+var_50; int
166214:  VLDR            S16, [R7,#arg_8]
166218:  LDR             R5, [R4,R0]
16621A:  LDR.W           R0, [R5,#0x27C]; int
16621E:  STR             R1, [SP,#0x70+var_6C]; int
166220:  ADD             R1, SP, #0x70+var_48; int
166222:  VSTR            S16, [SP,#0x70+var_70]
166226:  BL              sub_174194
16622A:  LDR             R0, [R7,#arg_4]
16622C:  CMP             R0, #0
16622E:  BEQ             loc_16630E
166230:  MOVW            R0, #0x155C
166234:  ADD             R0, R4
166236:  VLDR            S18, [R0]
16623A:  VCMP.F32        S18, #0.0
16623E:  VMRS            APSR_nzcv, FPSCR
166242:  BLE             loc_16630E
166244:  VMOV.F32        S0, #1.0
166248:  VLDR            S2, [SP,#0x70+var_48]
16624C:  VLDR            S4, [SP,#0x70+var_44]
166250:  MOVW            R10, #0x1518
166254:  VLDR            S8, [SP,#0x70+var_4C]
166258:  ADD             R4, SP, #0x70+var_40
16625A:  VLDR            S6, [SP,#0x70+var_50]
16625E:  MOV.W           R9, #0xC
166262:  LDR             R0, [R6]
166264:  LDR.W           R8, [R5,#0x27C]
166268:  ADD             R0, R10
16626A:  VADD.F32        S4, S4, S0
16626E:  ADD.W           R1, R0, #0x10C
166272:  VADD.F32        S2, S2, S0
166276:  VLD1.32         {D16-D17}, [R1]
16627A:  VADD.F32        S8, S8, S0
16627E:  VADD.F32        S0, S6, S0
166282:  VSTR            S4, [SP,#0x70+var_54]
166286:  VSTR            S2, [SP,#0x70+var_58]
16628A:  VSTR            S8, [SP,#0x70+var_5C]
16628E:  VSTR            S0, [SP,#0x70+var_60]
166292:  VLDR            S0, [R0]
166296:  MOV             R0, R4
166298:  VST1.64         {D16-D17}, [R0],R9
16629C:  VLDR            S2, [R0]
1662A0:  VMUL.F32        S0, S0, S2
1662A4:  VSTR            S0, [R0]
1662A8:  MOV             R0, R4
1662AA:  BL              sub_165778
1662AE:  ADD             R1, SP, #0x70+var_58
1662B0:  ADD             R2, SP, #0x70+var_60
1662B2:  MOV             R3, R0
1662B4:  MOV.W           R11, #0xF
1662B8:  MOV             R0, R8
1662BA:  VSTR            S18, [SP,#0x70+var_68]
1662BE:  STR.W           R11, [SP,#0x70+var_6C]
1662C2:  VSTR            S16, [SP,#0x70+var_70]
1662C6:  BL              sub_1740F8
1662CA:  LDR             R0, [R6]
1662CC:  LDR.W           R5, [R5,#0x27C]
1662D0:  ADD             R0, R10
1662D2:  ADD.W           R1, R0, #0xFC
1662D6:  VLD1.32         {D16-D17}, [R1]
1662DA:  VLDR            S0, [R0]
1662DE:  MOV             R0, R4
1662E0:  VST1.64         {D16-D17}, [R0],R9
1662E4:  VLDR            S2, [R0]
1662E8:  VMUL.F32        S0, S0, S2
1662EC:  VSTR            S0, [R0]
1662F0:  MOV             R0, R4
1662F2:  BL              sub_165778
1662F6:  ADD             R1, SP, #0x70+var_48
1662F8:  ADD             R2, SP, #0x70+var_50
1662FA:  MOV             R3, R0
1662FC:  MOV             R0, R5
1662FE:  VSTR            S18, [SP,#0x70+var_68]
166302:  STR.W           R11, [SP,#0x70+var_6C]
166306:  VSTR            S16, [SP,#0x70+var_70]
16630A:  BL              sub_1740F8
16630E:  ADD             SP, SP, #0x40 ; '@'
166310:  VPOP            {D8-D9}
166314:  ADD             SP, SP, #4
166316:  POP.W           {R8-R11}
16631A:  POP             {R4-R7,PC}
