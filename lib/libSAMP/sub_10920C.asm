; =========================================================
; Game Engine Function: sub_10920C
; Address            : 0x10920C - 0x10934A
; =========================================================

10920C:  PUSH            {R4-R7,LR}
10920E:  ADD             R7, SP, #0xC
109210:  PUSH.W          {R8-R11}
109214:  SUB             SP, SP, #0x84
109216:  MOV             R11, R0
109218:  LDR             R0, =(off_23494C - 0x109222)
10921A:  MOV             R8, R1
10921C:  ADD             R1, SP, #0xA0+var_60
10921E:  ADD             R0, PC; off_23494C
109220:  VMOV.I32        Q8, #0
109224:  MOV             R3, R1
109226:  LDR.W           R9, [R0]; dword_23DF24
10922A:  MOV             R0, #0x952934
109232:  LDR.W           R12, [R9]
109236:  ADD.W           LR, R12, R0
10923A:  LDM.W           LR!, {R0,R2,R4-R6}
10923E:  STM             R3!, {R0,R2,R4-R6}
109240:  LDM.W           LR!, {R0,R2,R4-R6}
109244:  STM             R3!, {R0,R2,R4-R6}
109246:  LDM.W           LR, {R0,R2,R4-R6}
10924A:  STM             R3!, {R0,R2,R4-R6}
10924C:  MOV.W           R0, #0x3F800000
109250:  MOVS            R2, #4
109252:  STR             R0, [SP,#0xA0+var_24]
109254:  MOV             R0, SP
109256:  MOV             R4, R0
109258:  VST1.64         {D16-D17}, [R4]!
10925C:  MOV             R6, R4
10925E:  VST1.64         {D16-D17}, [R6]!
109262:  MOV             R5, R6
109264:  VST1.64         {D16-D17}, [R5]!
109268:  MOV             R10, R5
10926A:  VST1.64         {D16-D17}, [R10],R2
10926E:  MOV             R2, #0x1E3A29
109276:  ADD             R2, R12
109278:  BLX             R2
10927A:  VLDR            S4, [R11,#8]
10927E:  VMOV.F64        D17, #1.0
109282:  LDR.W           R0, [R9]
109286:  ADD.W           R0, R0, #0x9F0000
10928A:  ADD.W           R0, R0, #0xC900
10928E:  VCVT.F64.F32    D16, S4
109292:  VDIV.F64        D16, D17, D16
109296:  VLDR            S8, [R0,#4]
10929A:  VLDR            S6, [R0]
10929E:  VCVT.F64.S32    D17, S8
1092A2:  VMUL.F64        D17, D16, D17
1092A6:  VCVT.F64.S32    D18, S6
1092AA:  VCVT.F32.F64    S6, D17
1092AE:  VMUL.F64        D16, D16, D18
1092B2:  VLDR            S2, [R11,#4]
1092B6:  VCVT.F32.F64    S8, D16
1092BA:  VDIV.F32        S2, S2, S6
1092BE:  VLDR            S0, [R11]
1092C2:  VLDR            S6, [R4]
1092C6:  VDIV.F32        S0, S0, S8
1092CA:  VMUL.F32        S6, S2, S6
1092CE:  VLDR            S8, [R6]
1092D2:  VLDR            S12, [SP,#0xA0+var_8C]
1092D6:  VLDR            S14, [SP,#0xA0+var_7C]
1092DA:  VMUL.F32        S12, S2, S12
1092DE:  VSTR            S0, [R11]
1092E2:  VLDR            S10, [SP,#0xA0+var_9C]
1092E6:  VMLA.F32        S6, S4, S8
1092EA:  VLDR            S8, [SP,#0xA0+var_A0]
1092EE:  VMLA.F32        S12, S4, S14
1092F2:  VMLA.F32        S6, S0, S8
1092F6:  VLDR            S8, [R5]
1092FA:  VADD.F32        S6, S8, S6
1092FE:  VLDR            S8, [SP,#0xA0+var_78]
109302:  VSTR            S6, [R8]
109306:  VLDR            S0, [R11]
10930A:  VLDR            S6, [R10]
10930E:  VMLA.F32        S12, S0, S10
109312:  VSTR            S2, [R11,#4]
109316:  VLDR            S2, [SP,#0xA0+var_98]
10931A:  VLDR            S10, [SP,#0xA0+var_68]
10931E:  VADD.F32        S6, S12, S6
109322:  VSTR            S6, [R8,#4]
109326:  VLDR            S6, [SP,#0xA0+var_88]
10932A:  VLDR            S12, [R11,#4]
10932E:  VMUL.F32        S6, S12, S6
109332:  VMLA.F32        S6, S4, S8
109336:  VMLA.F32        S6, S0, S2
10933A:  VADD.F32        S0, S10, S6
10933E:  VSTR            S0, [R8,#8]
109342:  ADD             SP, SP, #0x84
109344:  POP.W           {R8-R11}
109348:  POP             {R4-R7,PC}
