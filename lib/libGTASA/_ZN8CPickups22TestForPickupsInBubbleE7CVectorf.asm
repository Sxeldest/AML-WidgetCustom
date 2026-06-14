; =========================================================
; Game Engine Function: _ZN8CPickups22TestForPickupsInBubbleE7CVectorf
; Address            : 0x3213CC - 0x321466
; =========================================================

3213CC:  PUSH            {R7,LR}
3213CE:  MOV             R7, SP
3213D0:  LDR.W           R12, =(_ZN8CPickups8aPickUpsE_ptr - 0x3213E0)
3213D4:  VMOV.F32        S8, #0.125
3213D8:  VMOV            S4, R0
3213DC:  ADD             R12, PC; _ZN8CPickups8aPickUpsE_ptr
3213DE:  VMOV            S2, R1
3213E2:  VMOV            S0, R2
3213E6:  MOV.W           R1, #0xFFFFFFFF
3213EA:  LDR.W           R0, [R12]; CPickups::aPickUps ...
3213EE:  VMOV            S6, R3
3213F2:  MOVW            R12, #0x26A
3213F6:  ADDS            R0, #0x10
3213F8:  LDRSH.W         R3, [R0]
3213FC:  LDRSH.W         R2, [R0,#2]
321400:  LDRSH.W         LR, [R0,#4]
321404:  VMOV            S12, R3
321408:  VMOV            S10, R2
32140C:  VMOV            S14, LR
321410:  VCVT.F32.S32    S10, S10
321414:  VCVT.F32.S32    S12, S12
321418:  VCVT.F32.S32    S14, S14
32141C:  VMUL.F32        S10, S10, S8
321420:  VMUL.F32        S12, S12, S8
321424:  VMUL.F32        S14, S14, S8
321428:  VSUB.F32        S10, S10, S2
32142C:  VSUB.F32        S12, S12, S4
321430:  VSUB.F32        S14, S14, S0
321434:  VMUL.F32        S10, S10, S10
321438:  VMUL.F32        S12, S12, S12
32143C:  VMUL.F32        S14, S14, S14
321440:  VADD.F32        S10, S12, S10
321444:  VADD.F32        S10, S10, S14
321448:  VSQRT.F32       S10, S10
32144C:  VCMPE.F32       S10, S6
321450:  VMRS            APSR_nzcv, FPSCR
321454:  BLT             loc_321462
321456:  ADDS            R1, #1
321458:  ADDS            R0, #0x20 ; ' '
32145A:  CMP             R1, R12
32145C:  BLE             loc_3213F8
32145E:  MOVS            R0, #0
321460:  POP             {R7,PC}
321462:  MOVS            R0, #1
321464:  POP             {R7,PC}
