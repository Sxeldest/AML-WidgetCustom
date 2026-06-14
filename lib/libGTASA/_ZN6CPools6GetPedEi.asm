; =========================================================
; Game Engine Function: _ZN6CPools6GetPedEi
; Address            : 0x40D440 - 0x40D468
; =========================================================

40D440:  CMP             R0, #0
40D442:  BLT             loc_40D464
40D444:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x40D44E)
40D446:  UXTB            R3, R0
40D448:  LSRS            R0, R0, #8
40D44A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
40D44C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
40D44E:  LDR             R1, [R1]; CPools::ms_pPedPool
40D450:  LDR             R2, [R1,#4]
40D452:  LDRB            R2, [R2,R0]
40D454:  CMP             R2, R3
40D456:  BNE             loc_40D464
40D458:  MOVW            R2, #0x7CC
40D45C:  LDR             R1, [R1]
40D45E:  MLA.W           R0, R0, R2, R1
40D462:  BX              LR
40D464:  MOVS            R0, #0
40D466:  BX              LR
