; =========================================================
; Game Engine Function: _Z31TranslationCollisionVectorFixupP16CompressedVectori
; Address            : 0x3F0438 - 0x3F04A2
; =========================================================

3F0438:  PUSH            {R4,R5,R7,LR}
3F043A:  ADD             R7, SP, #8
3F043C:  MOV             R4, R1
3F043E:  MOV             R5, R0
3F0440:  ADD.W           R0, R4, R4,LSL#1
3F0444:  LSLS            R0, R0, #2; byte_count
3F0446:  BLX             malloc
3F044A:  CMP             R4, #1
3F044C:  IT LT
3F044E:  POPLT           {R4,R5,R7,PC}
3F0450:  ADDS            R1, R0, #4
3F0452:  ADDS            R2, R5, #2
3F0454:  VLDR            S0, =0.0078125
3F0458:  LDRSH.W         R3, [R2,#-2]
3F045C:  SUBS            R4, #1
3F045E:  VMOV            S2, R3
3F0462:  VCVT.F32.S32    S2, S2
3F0466:  VMUL.F32        S2, S2, S0
3F046A:  VSTR            S2, [R1,#-4]
3F046E:  LDRSH.W         R3, [R2]
3F0472:  VMOV            S2, R3
3F0476:  VCVT.F32.S32    S2, S2
3F047A:  VMUL.F32        S2, S2, S0
3F047E:  VSTR            S2, [R1]
3F0482:  LDRSH.W         R3, [R2,#2]
3F0486:  ADD.W           R2, R2, #6
3F048A:  VMOV            S2, R3
3F048E:  VCVT.F32.S32    S2, S2
3F0492:  VMUL.F32        S2, S2, S0
3F0496:  VSTR            S2, [R1,#4]
3F049A:  ADD.W           R1, R1, #0xC
3F049E:  BNE             loc_3F0458
3F04A0:  POP             {R4,R5,R7,PC}
