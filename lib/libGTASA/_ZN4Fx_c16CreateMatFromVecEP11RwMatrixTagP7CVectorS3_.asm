; =========================================================
; Game Engine Function: _ZN4Fx_c16CreateMatFromVecEP11RwMatrixTagP7CVectorS3_
; Address            : 0x366374 - 0x366492
; =========================================================

366374:  PUSH            {R4,R5,R7,LR}
366376:  ADD             R7, SP, #8
366378:  VPUSH           {D8-D10}
36637C:  VMOV.F32        S18, #-1.0
366380:  VLDR            S0, [R3]
366384:  VLDR            S16, =0.0
366388:  MOV             R4, R1
36638A:  VCMP.F32        S0, #0.0
36638E:  VMRS            APSR_nzcv, FPSCR
366392:  BNE             loc_3663C6
366394:  VMOV.F32        S20, S16
366398:  VLDR            S0, [R3,#4]
36639C:  VCMP.F32        S0, #0.0
3663A0:  VMRS            APSR_nzcv, FPSCR
3663A4:  BNE             loc_3663CA
3663A6:  VMOV.F32        S18, #-1.0
3663AA:  VLDR            S0, [R3,#8]
3663AE:  VMOV.F32        S20, S16
3663B2:  VCMP.F32        S0, S18
3663B6:  VMRS            APSR_nzcv, FPSCR
3663BA:  ITT EQ
3663BC:  VMOVEQ.F32      S20, #1.0
3663C0:  VLDREQ          S18, =0.0
3663C4:  B               loc_3663CA
3663C6:  VMOV.F32        S20, S16
3663CA:  MOV.W           R0, #0x3F800000
3663CE:  MOVS            R1, #0
3663D0:  STRD.W          R0, R1, [R4,#0x14]
3663D4:  MOV             R5, R4
3663D6:  STR             R1, [R4,#8]
3663D8:  STRD.W          R0, R1, [R4]
3663DC:  STRD.W          R1, R1, [R4,#0x20]
3663E0:  STR             R0, [R4,#0x28]
3663E2:  STRD.W          R1, R1, [R4,#0x30]
3663E6:  STR             R1, [R4,#0x38]
3663E8:  LDR             R0, [R4,#0xC]
3663EA:  ORR.W           R0, R0, #0x20000
3663EE:  ORR.W           R0, R0, #3
3663F2:  STR             R0, [R4,#0xC]
3663F4:  STR.W           R1, [R5,#0x10]!
3663F8:  VLDR            D16, [R2]
3663FC:  LDR             R0, [R2,#8]
3663FE:  MOV             R1, R5
366400:  STR             R0, [R4,#0x38]
366402:  VSTR            D16, [R4,#0x30]
366406:  LDR             R0, [R3]
366408:  STR             R0, [R5]
36640A:  LDR             R0, [R3,#4]
36640C:  STR             R0, [R4,#0x14]
36640E:  LDR             R0, [R3,#8]
366410:  STR             R0, [R4,#0x18]
366412:  MOV             R0, R5
366414:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
366418:  VLDR            S0, [R5]
36641C:  MOV             R0, R4
36641E:  VLDR            S2, [R4,#0x14]
366422:  VLDR            S4, [R4,#0x18]
366426:  VMUL.F32        S6, S20, S0
36642A:  VMUL.F32        S8, S2, S16
36642E:  VMUL.F32        S10, S4, S16
366432:  VMUL.F32        S12, S18, S0
366436:  VMUL.F32        S14, S18, S2
36643A:  VMUL.F32        S1, S20, S4
36643E:  VSUB.F32        S6, S8, S6
366442:  VSUB.F32        S8, S12, S10
366446:  VSUB.F32        S10, S1, S14
36644A:  VMUL.F32        S12, S6, S2
36644E:  VMUL.F32        S1, S6, S0
366452:  VMUL.F32        S14, S8, S4
366456:  VMUL.F32        S0, S8, S0
36645A:  VMUL.F32        S4, S10, S4
36645E:  VSTR            S10, [R4]
366462:  VMUL.F32        S2, S10, S2
366466:  VSTR            S8, [R4,#4]
36646A:  VSTR            S6, [R4,#8]
36646E:  VSUB.F32        S12, S14, S12
366472:  VSUB.F32        S4, S1, S4
366476:  VSUB.F32        S0, S2, S0
36647A:  VSTR            S12, [R4,#0x20]
36647E:  VSTR            S4, [R4,#0x24]
366482:  VSTR            S0, [R4,#0x28]
366486:  VPOP            {D8-D10}
36648A:  POP.W           {R4,R5,R7,LR}
36648E:  B.W             j_j__Z14RwMatrixUpdateP11RwMatrixTag; j_RwMatrixUpdate(RwMatrixTag *)
