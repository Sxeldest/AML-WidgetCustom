; =========================================================
; Game Engine Function: _ZN23CTaskSimpleSlideToCoord10ProcessPedEP4CPed
; Address            : 0x5261D4 - 0x5263A2
; =========================================================

5261D4:  PUSH            {R4-R7,LR}
5261D6:  ADD             R7, SP, #0xC
5261D8:  PUSH.W          {R8}
5261DC:  SUB             SP, SP, #0x28
5261DE:  MOV             R5, R0
5261E0:  MOV             R4, R1
5261E2:  LDRB.W          R0, [R5,#0x78]
5261E6:  LSLS            R0, R0, #0x1E
5261E8:  BMI             loc_5261F0
5261EA:  MOV.W           R8, #1
5261EE:  B               loc_5261FA
5261F0:  MOV             R0, R5; this
5261F2:  MOV             R1, R4; CPed *
5261F4:  BLX             j__ZN23CTaskSimpleRunNamedAnim10ProcessPedEP4CPed; CTaskSimpleRunNamedAnim::ProcessPed(CPed *)
5261F8:  MOV             R8, R0
5261FA:  LDR             R1, [R5,#0x7C]
5261FC:  LDRB.W          R0, [R5,#0x78]
526200:  ADDS            R1, #1
526202:  BNE             loc_52622A
526204:  LSLS            R1, R0, #0x1E
526206:  BMI             loc_526216
526208:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52620E)
52620A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52620C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
52620E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
526210:  ADD.W           R1, R1, #0x7D0
526214:  B               loc_526228
526216:  CMP.W           R8, #1
52621A:  BNE             loc_52622A
52621C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x526222)
52621E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
526220:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
526222:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
526224:  ADD.W           R1, R1, #0x1F4
526228:  STR             R1, [R5,#0x7C]
52622A:  LSLS            R0, R0, #0x1F
52622C:  BEQ             loc_526280
52622E:  LDR             R0, =(_ZN21CTaskSimpleStandStill18ms_iStandStillTimeE_ptr - 0x526238)
526230:  MOVS            R2, #0; bool
526232:  MOVS            R3, #0; bool
526234:  ADD             R0, PC; _ZN21CTaskSimpleStandStill18ms_iStandStillTimeE_ptr
526236:  LDR             R1, [R0]; CTaskSimpleStandStill::ms_iStandStillTime ...
526238:  MOV.W           R0, #0x41000000
52623C:  STR             R0, [SP,#0x38+var_38]; float
52623E:  ADD             R0, SP, #0x38+var_30; this
526240:  LDR             R1, [R1]; int
526242:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
526246:  MOV             R1, R4; CPed *
526248:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
52624C:  MOV             R0, R4; this
52624E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
526252:  CMP             R0, #1
526254:  BNE             loc_526268
526256:  LDR.W           R0, [R4,#0x440]
52625A:  MOVS            R2, #2
52625C:  MOVS            R3, #0
52625E:  LDR             R0, [R0,#0x14]
526260:  LDR             R1, [R0]
526262:  LDR             R6, [R1,#0x1C]
526264:  MOV             R1, R4
526266:  BLX             R6
526268:  LDR             R0, [R5,#0x70]
52626A:  STR.W           R0, [R4,#0x560]
52626E:  LDRB.W          R0, [R5,#0x78]
526272:  AND.W           R0, R0, #0xFE
526276:  STRB.W          R0, [R5,#0x78]
52627A:  ADD             R0, SP, #0x38+var_30; this
52627C:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
526280:  LDR             R0, [R4,#0x14]
526282:  VLDR            S4, [R5,#0x64]
526286:  ADD.W           R1, R0, #0x30 ; '0'
52628A:  CMP             R0, #0
52628C:  VLDR            S6, [R5,#0x68]
526290:  IT EQ
526292:  ADDEQ           R1, R4, #4
526294:  VLDR            S10, [R1]
526298:  VLDR            S12, [R1,#4]
52629C:  VSUB.F32        S2, S10, S4
5262A0:  VLDR            S8, =0.0
5262A4:  VSUB.F32        S0, S12, S6
5262A8:  VMOV.F32        S14, S8
5262AC:  VMUL.F32        S2, S2, S2
5262B0:  VMUL.F32        S0, S0, S0
5262B4:  VADD.F32        S0, S2, S0
5262B8:  VLDR            S2, =0.0025
5262BC:  VADD.F32        S0, S0, S8
5262C0:  VCMPE.F32       S0, S2
5262C4:  VMRS            APSR_nzcv, FPSCR
5262C8:  BLT             loc_52632E
5262CA:  VSUB.F32        S6, S6, S12
5262CE:  VLDR            S8, [R5,#0x6C]
5262D2:  VSUB.F32        S4, S4, S10
5262D6:  VLDR            S10, [R5,#0x74]
5262DA:  VLDR            S12, [R1,#8]
5262DE:  VLDR            S14, [R0,#4]
5262E2:  VSUB.F32        S8, S8, S12
5262E6:  VLDR            S12, [R0]
5262EA:  VLDR            S3, [R0,#0x10]
5262EE:  VLDR            S5, [R0,#0x14]
5262F2:  VMUL.F32        S6, S6, S10
5262F6:  VLDR            S1, [R0,#8]
5262FA:  VMUL.F32        S4, S4, S10
5262FE:  VLDR            S7, [R0,#0x18]
526302:  VMUL.F32        S8, S8, S10
526306:  VMUL.F32        S10, S6, S14
52630A:  VMUL.F32        S12, S4, S12
52630E:  VMUL.F32        S6, S6, S5
526312:  VMUL.F32        S4, S4, S3
526316:  VMUL.F32        S14, S8, S1
52631A:  VADD.F32        S10, S12, S10
52631E:  VMUL.F32        S12, S8, S7
526322:  VADD.F32        S4, S4, S6
526326:  VADD.F32        S8, S10, S14
52632A:  VADD.F32        S14, S4, S12
52632E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x526338)
526330:  ADD.W           R1, R4, #0x4E8
526334:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
526336:  VSTR            S14, [R1]
52633A:  ADDW            R1, R4, #0x4E4
52633E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
526340:  VSTR            S8, [R1]
526344:  LDR             R1, [R5,#0x7C]; float
526346:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
526348:  CMP             R1, R0
52634A:  BCS             loc_526350
52634C:  MOVS            R0, #1
52634E:  B               loc_52639A
526350:  VCMPE.F32       S0, S2
526354:  MOVS            R0, #0
526356:  VMRS            APSR_nzcv, FPSCR
52635A:  IT LT
52635C:  MOVLT           R0, #1
52635E:  AND.W           R0, R0, R8
526362:  CMP             R0, #1
526364:  BNE             loc_526398
526366:  ADD.W           R0, R4, #0x560
52636A:  VLDR            S0, [R0]
52636E:  ADDW            R0, R4, #0x55C
526372:  VLDR            S2, [R0]
526376:  VSUB.F32        S0, S2, S0
52637A:  VMOV            R0, S0; this
52637E:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
526382:  BIC.W           R0, R0, #0x80000000
526386:  VLDR            S0, =0.1
52638A:  VMOV            S2, R0
52638E:  VCMPE.F32       S2, S0
526392:  VMRS            APSR_nzcv, FPSCR
526396:  BLT             loc_52634C
526398:  MOVS            R0, #0
52639A:  ADD             SP, SP, #0x28 ; '('
52639C:  POP.W           {R8}
5263A0:  POP             {R4-R7,PC}
