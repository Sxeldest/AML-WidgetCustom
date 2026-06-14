; =========================================================
; Game Engine Function: _ZN23CTaskComplexTrackEntity13CalcTargetPosEP4CPed
; Address            : 0x518204 - 0x518394
; =========================================================

518204:  PUSH            {R4-R7,LR}
518206:  ADD             R7, SP, #0xC
518208:  PUSH.W          {R8}
51820C:  VPUSH           {D8-D10}
518210:  MOV             R4, R0
518212:  MOV             R8, R1
518214:  LDR             R5, [R4,#0xC]
518216:  ADDS            R6, R5, #4
518218:  LDR             R0, [R5,#0x14]
51821A:  MOV             R1, R6
51821C:  CMP             R0, #0
51821E:  IT NE
518220:  ADDNE.W         R1, R0, #0x30 ; '0'
518224:  VLDR            D16, [R1]
518228:  LDR             R0, [R1,#8]
51822A:  LDRB.W          R1, [R4,#0x2C]
51822E:  STR             R0, [R4,#0x4C]
518230:  CMP             R1, #0
518232:  VSTR            D16, [R4,#0x44]
518236:  BEQ             loc_518242
518238:  LDR             R0, [R5,#0x14]
51823A:  CBZ             R0, loc_518262
51823C:  MOV             R6, R5
51823E:  MOV             R1, R0
518240:  B               loc_518276
518242:  VLDR            S0, [R4,#0x10]
518246:  ADD.W           R0, R4, #0x48 ; 'H'
51824A:  VLDR            S6, [R4,#0x44]
51824E:  MOV             R6, R5
518250:  VLDR            S2, [R4,#0x14]
518254:  VADD.F32        S0, S0, S6
518258:  VLDR            S4, [R4,#0x48]
51825C:  VSTR            S0, [R4,#0x44]
518260:  B               loc_5182F6
518262:  MOV             R0, R5; this
518264:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
518268:  LDR             R1, [R5,#0x14]; CMatrix *
51826A:  MOV             R0, R6; this
51826C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
518270:  LDR             R6, [R4,#0xC]
518272:  LDR             R1, [R5,#0x14]
518274:  LDR             R0, [R6,#0x14]
518276:  VLDR            S18, [R1]
51827A:  CMP             R0, #0
51827C:  VLDR            S20, [R1,#4]
518280:  VLDR            S16, [R1,#8]
518284:  BNE             loc_51829A
518286:  MOV             R0, R6; this
518288:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
51828C:  LDR             R1, [R6,#0x14]; CMatrix *
51828E:  ADDS            R0, R6, #4; this
518290:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
518294:  LDR             R1, [R4,#0xC]
518296:  LDR             R0, [R6,#0x14]
518298:  MOV             R6, R1
51829A:  VLDR            S0, [R4,#0x10]
51829E:  VLDR            S4, [R4,#0x14]
5182A2:  VMUL.F32        S10, S18, S0
5182A6:  VLDR            S14, [R0,#0x10]
5182AA:  VMUL.F32        S12, S20, S0
5182AE:  VLDR            S6, [R4,#0x48]
5182B2:  VLDR            S1, [R0,#0x14]
5182B6:  VMUL.F32        S0, S16, S0
5182BA:  VLDR            S2, [R4,#0x44]
5182BE:  VMUL.F32        S14, S14, S4
5182C2:  VMUL.F32        S1, S1, S4
5182C6:  VLDR            S8, [R4,#0x4C]
5182CA:  VLDR            S3, [R0,#0x18]
5182CE:  ADD.W           R0, R4, #0x4C ; 'L'
5182D2:  VADD.F32        S10, S10, S2
5182D6:  VADD.F32        S6, S12, S6
5182DA:  VADD.F32        S2, S0, S8
5182DE:  VMUL.F32        S4, S3, S4
5182E2:  VADD.F32        S0, S14, S10
5182E6:  VADD.F32        S6, S1, S6
5182EA:  VSTR            S0, [R4,#0x44]
5182EE:  VSTR            S6, [R4,#0x48]
5182F2:  VSTR            S2, [R4,#0x4C]
5182F6:  VADD.F32        S2, S4, S2
5182FA:  VSTR            S2, [R0]
5182FE:  LDRB.W          R0, [R6,#0x3A]
518302:  AND.W           R0, R0, #6
518306:  CMP             R0, #2
518308:  BNE             loc_51834E
51830A:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x518314)
51830C:  VLDR            S2, [R6,#0x48]
518310:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
518312:  VLDR            S4, [R6,#0x4C]
518316:  VLDR            S6, [R6,#0x50]
51831A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
51831C:  VLDR            S10, [R4,#0x4C]
518320:  VLDR            S8, [R0]
518324:  VMUL.F32        S2, S8, S2
518328:  VMUL.F32        S4, S8, S4
51832C:  VMUL.F32        S6, S8, S6
518330:  VLDR            S8, [R4,#0x48]
518334:  VADD.F32        S0, S2, S0
518338:  VADD.F32        S2, S4, S8
51833C:  VADD.F32        S4, S6, S10
518340:  VSTR            S0, [R4,#0x44]
518344:  VSTR            S2, [R4,#0x48]
518348:  VSTR            S4, [R4,#0x4C]
51834C:  B               loc_518352
51834E:  VLDR            S2, [R4,#0x48]
518352:  LDR.W           R0, [R8,#0x14]
518356:  ADD.W           R1, R0, #0x30 ; '0'
51835A:  CMP             R0, #0
51835C:  IT EQ
51835E:  ADDEQ.W         R1, R8, #4
518362:  VLDR            S4, [R1]
518366:  VLDR            S6, [R1,#4]
51836A:  VSUB.F32        S0, S0, S4
51836E:  VSUB.F32        S2, S2, S6
518372:  VMUL.F32        S0, S0, S0
518376:  VMUL.F32        S2, S2, S2
51837A:  VADD.F32        S0, S0, S2
51837E:  VLDR            S2, =0.0
518382:  VADD.F32        S0, S0, S2
518386:  VSTR            S0, [R4,#0x50]
51838A:  VPOP            {D8-D10}
51838E:  POP.W           {R8}
518392:  POP             {R4-R7,PC}
