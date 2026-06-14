; =========================================================
; Game Engine Function: sub_117174
; Address            : 0x117174 - 0x1172E0
; =========================================================

117174:  PUSH            {R4-R7,LR}
117176:  ADD             R7, SP, #0xC
117178:  PUSH.W          {R8-R10}
11717C:  VPUSH           {D8-D13}
117180:  SUB             SP, SP, #0x18
117182:  MOV             R4, R0
117184:  LDR             R0, [R7,#arg_0]
117186:  STR             R0, [SP,#0x60+var_4C]
117188:  MOV             R5, R2
11718A:  LDR             R0, [R4]
11718C:  MOV             R10, R1
11718E:  MOV             R1, R4
117190:  MOV             R8, R3
117192:  VLDR            S16, [R4,#0x48]
117196:  LDR             R2, [R0,#0x5C]
117198:  ADD             R0, SP, #0x60+var_54
11719A:  BLX             R2
11719C:  LDR             R0, [R4]
11719E:  ADD.W           R9, SP, #0x60+var_54
1171A2:  MOV             R1, R4
1171A4:  VLDR            S18, [SP,#0x60+var_54]
1171A8:  LDR             R2, [R0,#0x5C]
1171AA:  MOV             R0, R9
1171AC:  BLX             R2
1171AE:  VSUB.F32        S0, S16, S18
1171B2:  VLDR            S2, =0.95
1171B6:  VLDR            S18, [R4,#0x54]
1171BA:  MOV             R0, #0xE0FFFFFF
1171BE:  VLDR            S20, [SP,#0x60+var_54]
1171C2:  STR             R0, [SP,#0x60+var_54]
1171C4:  ADD.W           R0, R4, #0x30 ; '0'
1171C8:  STR.W           R9, [SP,#0x60+var_5C]
1171CC:  VMUL.F32        S26, S0, S2
1171D0:  VLDR            S0, =0.0625
1171D4:  VMUL.F32        S16, S26, S0
1171D8:  VMOV            S0, R5
1171DC:  VMOV            R5, S20
1171E0:  VMOV            R3, S26
1171E4:  VMLA.F32        S18, S16, S0
1171E8:  VSTR            S16, [SP,#0x60+var_60]
1171EC:  VMOV            R6, S18
1171F0:  MOV             R1, R5
1171F2:  MOV             R2, R6
1171F4:  BL              sub_163176
1171F8:  VLDR            S0, =100.0
1171FC:  VMOV            S24, R10
117200:  ADD             R0, SP, #0x60+var_4C
117202:  MOV             R1, R5
117204:  VDIV.F32        S22, S26, S0
117208:  MOV             R2, R6
11720A:  VCMP.F32        S24, S0
11720E:  VMRS            APSR_nzcv, FPSCR
117212:  IT GT
117214:  VMOVGT.F32      S24, S0
117218:  VMUL.F32        S0, S24, S22
11721C:  STR             R0, [SP,#0x60+var_5C]
11721E:  ADD.W           R0, R4, #0x44 ; 'D'
117222:  VSTR            S16, [SP,#0x60+var_60]
117226:  VMOV            R3, S0
11722A:  BL              sub_163176
11722E:  VCVT.F64.F32    D16, S16
117232:  MOV.W           R5, #0xFFFFFFFF
117236:  MOV             R0, R8
117238:  STR             R5, [SP,#0x60+var_54]
11723A:  STR.W           R9, [SP,#0x60+var_5C]
11723E:  VMOV.F64        D17, #-0.25
117242:  VCVT.F64.F32    D18, S18
117246:  VMLA.F64        D18, D16, D17
11724A:  VMOV.F32        S0, #1.25
11724E:  VLDR            S2, =0.1
117252:  VMOV.F32        S4, S20
117256:  VMLA.F32        S4, S26, S2
11725A:  VCVT.F32.F64    S2, D18
11725E:  VMUL.F32        S0, S16, S0
117262:  VMOV            R1, S4
117266:  VMOV            R2, S2
11726A:  VMOV            R3, S0
11726E:  VSTR            S0, [SP,#0x60+var_60]
117272:  BL              sub_163176
117276:  VCMP.F32        S24, #0.0
11727A:  VMRS            APSR_nzcv, FPSCR
11727E:  BLE             loc_1172D4
117280:  VMOV.F32        S2, S20
117284:  VLDR            S0, =0.33333
117288:  VMOV.F32        S6, #-0.5
11728C:  VLDR            S4, =-0.66667
117290:  VMUL.F32        S0, S16, S0
117294:  ADD.W           R0, R4, #0x40 ; '@'
117298:  VMOV            R3, S16
11729C:  VMLA.F32        S2, S22, S24
1172A0:  VMLA.F32        S18, S16, S6
1172A4:  VMLA.F32        S2, S16, S4
1172A8:  VMOV            R2, S18
1172AC:  VSUB.F32        S4, S20, S0
1172B0:  VCMP.F32        S2, S4
1172B4:  VMRS            APSR_nzcv, FPSCR
1172B8:  IT MI
1172BA:  VMOVMI.F32      S2, S0
1172BE:  VMOV            R1, S2
1172C2:  STR             R5, [SP,#0x60+var_54]
1172C4:  VADD.F32        S0, S16, S16
1172C8:  STR.W           R9, [SP,#0x60+var_5C]
1172CC:  VSTR            S0, [SP,#0x60+var_60]
1172D0:  BL              sub_163176
1172D4:  ADD             SP, SP, #0x18
1172D6:  VPOP            {D8-D13}
1172DA:  POP.W           {R8-R10}
1172DE:  POP             {R4-R7,PC}
