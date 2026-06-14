; =========================================================
; Game Engine Function: _ZN9CPathFind15CalcRoadDensityEff
; Address            : 0x3171BC - 0x317348
; =========================================================

3171BC:  PUSH            {R4-R7,LR}
3171BE:  ADD             R7, SP, #0xC
3171C0:  PUSH.W          {R8-R11}
3171C4:  SUB             SP, SP, #8
3171C6:  VMOV.F32        S6, #0.125
3171CA:  VLDR            S0, =0.0
3171CE:  VMOV            S2, R2
3171D2:  VLDR            S8, =80.0
3171D6:  VMOV            S4, R1
3171DA:  MOVS            R2, #0
3171DC:  ADD.W           R1, R0, R2,LSL#2
3171E0:  LDR.W           R10, [R1,#0x804]
3171E4:  STR             R2, [SP,#0x24+var_24]
3171E6:  CMP.W           R10, #0
3171EA:  BEQ.W           loc_31732A
3171EE:  MOVW            R3, #0x1104
3171F2:  LDR.W           R9, [R1,R3]
3171F6:  CMP.W           R9, #1
3171FA:  BLT.W           loc_31732A
3171FE:  ADDW            R11, R1, #0xDA4
317202:  MOVS            R5, #0
317204:  ADDW            R1, R1, #0xA44
317208:  STR             R1, [SP,#0x24+var_20]
31720A:  RSB.W           R1, R5, R5,LSL#3
31720E:  ADD.W           R2, R10, R1,LSL#2
317212:  LDRSH.W         R1, [R2,#8]
317216:  VMOV            S10, R1
31721A:  VCVT.F32.S32    S10, S10
31721E:  VMUL.F32        S10, S10, S6
317222:  VSUB.F32        S12, S10, S4
317226:  VABS.F32        S12, S12
31722A:  VCMPE.F32       S12, S8
31722E:  VMRS            APSR_nzcv, FPSCR
317232:  BGE             loc_317322
317234:  LDRSH.W         R1, [R2,#0xA]
317238:  VMOV            S12, R1
31723C:  VCVT.F32.S32    S12, S12
317240:  VMUL.F32        S12, S12, S6
317244:  VSUB.F32        S14, S12, S2
317248:  VABS.F32        S14, S14
31724C:  VCMPE.F32       S14, S8
317250:  VMRS            APSR_nzcv, FPSCR
317254:  BGE             loc_317322
317256:  LDRH            R1, [R2,#0x18]
317258:  ANDS.W          R1, R1, #0xF
31725C:  BEQ             loc_317322
31725E:  LDR             R3, [SP,#0x24+var_20]
317260:  LDRSH.W         R2, [R2,#0x10]
317264:  LDR             R3, [R3]
317266:  MOV.W           R8, R2,LSL#1
31726A:  ADD.W           LR, R3, R2,LSL#2
31726E:  BIC.W           R2, R1, #0xFF000000
317272:  MOVS            R3, #0
317274:  LDR.W           R1, [LR,R3,LSL#2]
317278:  UXTH            R4, R1
31727A:  ADD.W           R4, R0, R4,LSL#2
31727E:  LDR.W           R4, [R4,#0x804]
317282:  CMP             R4, #0
317284:  BEQ             loc_31731C
317286:  LSRS            R6, R1, #0x10
317288:  LSLS            R6, R6, #3
31728A:  SUB.W           R1, R6, R1,LSR#16
31728E:  ADD.W           R1, R4, R1,LSL#2
317292:  LDRSH.W         R6, [R1,#8]
317296:  LDRSH.W         R1, [R1,#0xA]
31729A:  VMOV            S1, R6
31729E:  VMOV            S14, R1
3172A2:  VCVT.F32.S32    S14, S14
3172A6:  VCVT.F32.S32    S1, S1
3172AA:  LDR.W           R1, [R11]
3172AE:  ADD             R1, R8
3172B0:  LDRH.W          R1, [R1,R3,LSL#1]
3172B4:  LSRS            R6, R1, #0xA
3172B6:  ADD.W           R12, R0, R6,LSL#2
3172BA:  LDR.W           R4, [R12,#0x804]
3172BE:  CBZ             R4, loc_31731C
3172C0:  VMUL.F32        S14, S14, S6
3172C4:  BFC.W           R1, #0xA, #0x16
3172C8:  VMUL.F32        S1, S1, S6
3172CC:  LDR.W           R6, [R12,#0x924]
3172D0:  RSB.W           R1, R1, R1,LSL#3
3172D4:  ADD.W           R1, R6, R1,LSL#1
3172D8:  LDRH.W          R1, [R1,#0xB]
3172DC:  VSUB.F32        S14, S12, S14
3172E0:  VSUB.F32        S1, S10, S1
3172E4:  AND.W           R6, R1, #7
3172E8:  VMUL.F32        S14, S14, S14
3172EC:  VMUL.F32        S1, S1, S1
3172F0:  VADD.F32        S14, S1, S14
3172F4:  VMOV            S1, R6
3172F8:  VCVT.F32.U32    S1, S1
3172FC:  UBFX.W          R1, R1, #3, #3
317300:  VMOV            S3, R1
317304:  VSQRT.F32       S14, S14
317308:  VMUL.F32        S1, S14, S1
31730C:  VCVT.F32.U32    S3, S3
317310:  VADD.F32        S0, S0, S1
317314:  VMUL.F32        S14, S14, S3
317318:  VADD.F32        S0, S0, S14
31731C:  ADDS            R3, #1
31731E:  CMP             R3, R2
317320:  BLT             loc_317274
317322:  ADDS            R5, #1
317324:  CMP             R5, R9
317326:  BLT.W           loc_31720A
31732A:  LDR             R2, [SP,#0x24+var_24]
31732C:  ADDS            R2, #1
31732E:  CMP             R2, #0x40 ; '@'
317330:  BNE.W           loc_3171DC
317334:  VLDR            S2, =2500.0
317338:  VDIV.F32        S0, S0, S2
31733C:  VMOV            R0, S0
317340:  ADD             SP, SP, #8
317342:  POP.W           {R8-R11}
317346:  POP             {R4-R7,PC}
