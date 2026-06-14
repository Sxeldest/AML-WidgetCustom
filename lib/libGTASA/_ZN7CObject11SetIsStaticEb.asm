; =========================================================
; Game Engine Function: _ZN7CObject11SetIsStaticEb
; Address            : 0x45561C - 0x455670
; =========================================================

45561C:  PUSH            {R4,R5,R7,LR}
45561E:  ADD             R7, SP, #8
455620:  MOV             R4, R0
455622:  LDR             R0, [R4,#0x1C]
455624:  LDR             R5, [R4,#0x44]
455626:  BIC.W           R0, R0, #4
45562A:  TST.W           R5, #0x20
45562E:  ORR.W           R0, R0, R1,LSL#2
455632:  STR             R0, [R4,#0x1C]
455634:  BEQ             loc_455668
455636:  CBNZ            R1, loc_455668
455638:  VLDR            S0, =-1000.0
45563C:  VLDR            S2, [R4,#0x15C]
455640:  VCMPE.F32       S2, S0
455644:  VMRS            APSR_nzcv, FPSCR
455648:  BGE             loc_455668
45564A:  LDR             R0, [R4,#0x14]
45564C:  CBZ             R0, loc_455660
45564E:  LDRD.W          R2, R1, [R0,#0x10]; x
455652:  EOR.W           R0, R2, #0x80000000; y
455656:  BLX             atan2f
45565A:  VMOV            S0, R0
45565E:  B               loc_455664
455660:  VLDR            S0, [R4,#0x10]
455664:  VSTR            S0, [R4,#0x15C]
455668:  BIC.W           R0, R5, #0x40000000
45566C:  STR             R0, [R4,#0x44]
45566E:  POP             {R4,R5,R7,PC}
