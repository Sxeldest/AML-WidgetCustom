; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE18CreateFirstSubTaskEP4CPed
; Address            : 0x3342B4 - 0x3343BA
; =========================================================

3342B4:  PUSH            {R4,R5,R7,LR}
3342B6:  ADD             R7, SP, #8
3342B8:  SUB             SP, SP, #8
3342BA:  MOV             R5, R0
3342BC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3342C6)
3342BE:  MOV             R4, R1
3342C0:  MOVS            R2, #1
3342C2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3342C4:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
3342C6:  LDRD.W          R0, R3, [R5,#0x10]
3342CA:  LDR             R1, [R1]; unsigned int
3342CC:  STRB.W          R2, [R5,#0x30]
3342D0:  STRD.W          R1, R3, [R5,#0x28]
3342D4:  ADDS            R3, R0, #1
3342D6:  ITT NE
3342D8:  STRBNE.W        R2, [R5,#0x3C]
3342DC:  STRDNE.W        R1, R0, [R5,#0x34]
3342E0:  LDR             R0, [R5,#0xC]
3342E2:  CBZ             R0, loc_334352
3342E4:  LDRB.W          R1, [R4,#0x485]
3342E8:  LSLS            R1, R1, #0x1F
3342EA:  ITT NE
3342EC:  LDRNE.W         R1, [R4,#0x590]; unsigned int
3342F0:  CMPNE           R1, #0
3342F2:  BNE             loc_33438A
3342F4:  LDR             R1, [R0,#0x14]
3342F6:  LDR             R2, [R4,#0x14]
3342F8:  ADD.W           R3, R1, #0x30 ; '0'
3342FC:  CMP             R1, #0
3342FE:  IT EQ
334300:  ADDEQ           R3, R0, #4
334302:  ADD.W           R0, R2, #0x30 ; '0'
334306:  CMP             R2, #0
334308:  VLDR            D16, [R3]
33430C:  IT EQ
33430E:  ADDEQ           R0, R4, #4
334310:  VLDR            S2, [R5,#0x18]
334314:  VLDR            D17, [R0]
334318:  VSUB.F32        D16, D17, D16
33431C:  VLDR            S4, =0.0
334320:  VMUL.F32        S2, S2, S2
334324:  VMUL.F32        D0, D16, D16
334328:  VADD.F32        S0, S0, S1
33432C:  VADD.F32        S0, S0, S4
334330:  VCMPE.F32       S0, S2
334334:  VMRS            APSR_nzcv, FPSCR
334338:  BGE             loc_334364
33433A:  LDRB.W          R0, [R5,#0x48]
33433E:  MOVS            R1, #1
334340:  ORR.W           R0, R0, #4
334344:  STRB.W          R0, [R5,#0x48]
334348:  MOV             R0, R4
33434A:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
33434E:  MOVS            R1, #0xF4
334350:  B               loc_3343AC
334352:  MOVS            R0, #dword_1C; this
334354:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334358:  MOV.W           R1, #0x3E8; int
33435C:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
334360:  ADD             SP, SP, #8
334362:  POP             {R4,R5,R7,PC}
334364:  VLDR            S2, [R5,#0x20]
334368:  VCMP.F32        S2, #0.0
33436C:  VMRS            APSR_nzcv, FPSCR
334370:  BEQ             loc_3343A8
334372:  VMUL.F32        S2, S2, S2
334376:  MOVW            R1, #0x387
33437A:  VCMPE.F32       S0, S2
33437E:  VMRS            APSR_nzcv, FPSCR
334382:  IT GT
334384:  MOVWGT          R1, #0x38A
334388:  B               loc_3343AC
33438A:  MOVS            R0, #dword_34; this
33438C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334390:  LDR.W           R1, [R4,#0x590]; CVehicle *
334394:  MOVS            R2, #0
334396:  MOVS            R3, #1
334398:  STRD.W          R3, R2, [SP,#0x10+var_10]; bool
33439C:  MOVS            R2, #0; int
33439E:  MOVS            R3, #0; int
3343A0:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
3343A4:  ADD             SP, SP, #8
3343A6:  POP             {R4,R5,R7,PC}
3343A8:  MOVW            R1, #0x38A
3343AC:  MOV             R0, R5
3343AE:  MOV             R2, R4
3343B0:  ADD             SP, SP, #8
3343B2:  POP.W           {R4,R5,R7,LR}
3343B6:  B.W             j_j__ZNK22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE13CreateSubTaskEiP4CPed; j_CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard>::CreateSubTask(int,CPed *)
