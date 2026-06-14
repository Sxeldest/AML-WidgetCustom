; =========================================================
; Game Engine Function: _ZN19CUpsideDownCarCheck12UpdateTimersEv
; Address            : 0x3283E0 - 0x3284D2
; =========================================================

3283E0:  PUSH            {R4-R7,LR}
3283E2:  ADD             R7, SP, #0xC
3283E4:  PUSH.W          {R8-R11}
3283E8:  SUB             SP, SP, #4
3283EA:  VPUSH           {D8}
3283EE:  MOV             R4, R0
3283F0:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3283FC)
3283F2:  VLDR            S0, =50.0
3283F6:  MOVS            R6, #0
3283F8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3283FA:  VLDR            S16, =0.3
3283FE:  MOV.W           R11, #0xFFFFFFFF
328402:  MOVW            R10, #0xA2C
328406:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
328408:  MOVS            R5, #0
32840A:  VLDR            S2, [R0]
32840E:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x328418)
328410:  VDIV.F32        S0, S2, S0
328414:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
328416:  LDR.W           R9, [R0]; CPools::ms_pVehiclePool ...
32841A:  VLDR            S2, =1000.0
32841E:  VMUL.F32        S0, S0, S2
328422:  VCVT.U32.F32    S0, S0
328426:  VMOV            R8, S0
32842A:  B               loc_32847E
32842C:  MOVW            R1, #0x818
328430:  LDRB            R1, [R0,R1]
328432:  CMP             R1, #4
328434:  MOV.W           R1, #0
328438:  IT CC
32843A:  MOVCC           R1, #1
32843C:  B               loc_328440
32843E:  MOVS            R1, #1
328440:  LDR             R2, [R0,#0x14]
328442:  VLDR            S0, [R2,#0x28]
328446:  MOVS            R2, #0
328448:  VCMPE.F32       S0, S16
32844C:  VMRS            APSR_nzcv, FPSCR
328450:  VCMPE.F32       S0, #0.0
328454:  IT LT
328456:  MOVLT           R2, #1
328458:  VMRS            APSR_nzcv, FPSCR
32845C:  BLT             loc_328464
32845E:  ANDS            R1, R2
328460:  CMP             R1, #1
328462:  BNE             loc_3284BA
328464:  LDR             R1, [R0]
328466:  LDR.W           R2, [R1,#0xE8]
32846A:  MOVS            R1, #0
32846C:  BLX             R2
32846E:  CMP             R0, #1
328470:  BNE             loc_3284BA
328472:  ADD.W           R0, R4, R5,LSL#3
328476:  LDR             R1, [R0,#4]
328478:  ADD             R1, R8
32847A:  STR             R1, [R0,#4]
32847C:  B               loc_3284C0
32847E:  LDR.W           R0, [R4,R5,LSL#3]
328482:  ADDS            R1, R0, #1
328484:  BEQ             loc_3284B4
328486:  CMP             R0, #0
328488:  BLT             loc_3284B4
32848A:  LDR.W           R1, [R9]; CPools::ms_pVehiclePool
32848E:  LSRS            R2, R0, #8
328490:  UXTB            R0, R0
328492:  LDR             R3, [R1,#4]
328494:  LDRB            R3, [R3,R2]
328496:  CMP             R3, R0
328498:  BNE             loc_3284B4
32849A:  LDR             R0, [R1]
32849C:  MLA.W           R0, R2, R10, R0
3284A0:  CBZ             R0, loc_3284B4
3284A2:  LDR.W           R1, [R0,#0x5A0]
3284A6:  CMP             R1, #9
3284A8:  BEQ             loc_32842C
3284AA:  CMP             R1, #0
3284AC:  BNE             loc_32843E
3284AE:  MOVW            R1, #0x974
3284B2:  B               loc_328430
3284B4:  LSLS            R0, R5, #1
3284B6:  STR.W           R11, [R4,R0,LSL#2]
3284BA:  ADD.W           R0, R4, R5,LSL#3
3284BE:  STR             R6, [R0,#4]
3284C0:  ADDS            R5, #1
3284C2:  CMP             R5, #6
3284C4:  BNE             loc_32847E
3284C6:  VPOP            {D8}
3284CA:  ADD             SP, SP, #4
3284CC:  POP.W           {R8-R11}
3284D0:  POP             {R4-R7,PC}
