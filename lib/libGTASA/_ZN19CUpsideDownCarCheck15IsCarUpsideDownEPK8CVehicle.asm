; =========================================================
; Game Engine Function: _ZN19CUpsideDownCarCheck15IsCarUpsideDownEPK8CVehicle
; Address            : 0x32836C - 0x3283DA
; =========================================================

32836C:  LDR.W           R0, [R1,#0x5A0]
328370:  CMP             R0, #9
328372:  BEQ             loc_32837C
328374:  CBNZ            R0, loc_32838C
328376:  ADDW            R0, R1, #0x974
32837A:  B               loc_328380
32837C:  ADDW            R0, R1, #0x818
328380:  LDRB            R2, [R0]
328382:  MOVS            R0, #0
328384:  CMP             R2, #4
328386:  IT CC
328388:  MOVCC           R0, #1
32838A:  B               loc_32838E
32838C:  MOVS            R0, #1
32838E:  LDR             R2, [R1,#0x14]
328390:  VLDR            S0, =0.3
328394:  VLDR            S2, [R2,#0x28]
328398:  MOVS            R2, #0
32839A:  VCMPE.F32       S2, S0
32839E:  VMRS            APSR_nzcv, FPSCR
3283A2:  VCMPE.F32       S2, #0.0
3283A6:  IT LT
3283A8:  MOVLT           R2, #1
3283AA:  VMRS            APSR_nzcv, FPSCR
3283AE:  BLT             loc_3283BA
3283B0:  ANDS            R0, R2
3283B2:  CMP             R0, #1
3283B4:  BEQ             loc_3283BA
3283B6:  MOVS            R0, #0
3283B8:  BX              LR
3283BA:  PUSH            {R7,LR}
3283BC:  MOV             R7, SP
3283BE:  LDR             R0, [R1]
3283C0:  LDR.W           R2, [R0,#0xE8]
3283C4:  MOV             R0, R1
3283C6:  MOVS            R1, #0
3283C8:  BLX             R2
3283CA:  CMP             R0, #0
3283CC:  POP.W           {R7,LR}
3283D0:  ITT NE
3283D2:  MOVNE           R0, #1
3283D4:  BXNE            LR
3283D6:  MOVS            R0, #0
3283D8:  BX              LR
