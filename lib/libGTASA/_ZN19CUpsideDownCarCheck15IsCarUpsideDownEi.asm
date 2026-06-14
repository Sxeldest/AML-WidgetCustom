; =========================================================
; Game Engine Function: _ZN19CUpsideDownCarCheck15IsCarUpsideDownEi
; Address            : 0x3282D8 - 0x328362
; =========================================================

3282D8:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3282E6)
3282DA:  MOV.W           R12, R1,LSR#8
3282DE:  MOVW            R3, #0xA2C
3282E2:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3282E4:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3282E6:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3282E8:  LDR             R2, [R0]
3282EA:  MLA.W           R0, R12, R3, R2
3282EE:  LDR.W           R3, [R0,#0x5A0]
3282F2:  CMP             R3, #9
3282F4:  BEQ             loc_3282FE
3282F6:  CBNZ            R3, loc_32830E
3282F8:  MOVW            R3, #0x974
3282FC:  B               loc_328302
3282FE:  MOVW            R3, #0x818
328302:  LDRB            R1, [R0,R3]
328304:  MOVS            R3, #0
328306:  CMP             R1, #4
328308:  IT CC
32830A:  MOVCC           R3, #1
32830C:  B               loc_328310
32830E:  MOVS            R3, #1
328310:  MOVW            R1, #0xA2C
328314:  VLDR            S0, =0.3
328318:  MLA.W           R1, R12, R1, R2
32831C:  LDR             R1, [R1,#0x14]
32831E:  VLDR            S2, [R1,#0x28]
328322:  MOVS            R1, #0
328324:  VCMPE.F32       S2, S0
328328:  VMRS            APSR_nzcv, FPSCR
32832C:  VCMPE.F32       S2, #0.0
328330:  IT LT
328332:  MOVLT           R1, #1
328334:  VMRS            APSR_nzcv, FPSCR
328338:  BLT             loc_328344
32833A:  ANDS            R1, R3
32833C:  CMP             R1, #1
32833E:  BEQ             loc_328344
328340:  MOVS            R0, #0
328342:  BX              LR
328344:  PUSH            {R7,LR}
328346:  MOV             R7, SP
328348:  LDR             R1, [R0]
32834A:  LDR.W           R2, [R1,#0xE8]
32834E:  MOVS            R1, #0
328350:  BLX             R2
328352:  CMP             R0, #0
328354:  POP.W           {R7,LR}
328358:  ITT NE
32835A:  MOVNE           R0, #1
32835C:  BXNE            LR
32835E:  MOVS            R0, #0
328360:  BX              LR
