; =========================================================
; Game Engine Function: _ZN26CTaskComplexWanderCriminal18LookForCarsToStealEP4CPed
; Address            : 0x5240C4 - 0x5241D2
; =========================================================

5240C4:  PUSH            {R4-R7,LR}
5240C6:  ADD             R7, SP, #0xC
5240C8:  PUSH.W          {R8-R11}
5240CC:  SUB             SP, SP, #4
5240CE:  VPUSH           {D8}
5240D2:  SUB             SP, SP, #0x10
5240D4:  MOV             R10, R1
5240D6:  VLDR            S16, =3.4028e38
5240DA:  LDR.W           R11, [R10,#0x440]
5240DE:  MOV             R8, R0
5240E0:  MOVS            R4, #0
5240E2:  MOV.W           R9, #0
5240E6:  ADD.W           R0, R11, R4,LSL#2
5240EA:  ADDS            R5, R4, #1
5240EC:  LDR.W           R6, [R0,#0xE0]
5240F0:  CBZ             R6, loc_5240FC
5240F2:  MOV             R0, R6; this
5240F4:  MOV             R1, R10; CVehicle *
5240F6:  BLX             j__ZN13CCarEnterExit18IsVehicleStealableERK8CVehicleRK4CPed; CCarEnterExit::IsVehicleStealable(CVehicle const&,CPed const&)
5240FA:  CBNZ            R0, loc_524106
5240FC:  SUBS            R0, R5, #1
5240FE:  MOV             R4, R5
524100:  CMP             R0, #0xF
524102:  BLT             loc_5240E6
524104:  B               loc_524164
524106:  LDR             R0, [R6,#0x14]
524108:  LDR.W           R1, [R10,#0x14]
52410C:  ADD.W           R2, R0, #0x30 ; '0'
524110:  CMP             R0, #0
524112:  IT EQ
524114:  ADDEQ           R2, R6, #4
524116:  ADD.W           R0, R1, #0x30 ; '0'
52411A:  CMP             R1, #0
52411C:  VLDR            S0, [R2]
524120:  IT EQ
524122:  ADDEQ.W         R0, R10, #4
524126:  VLDR            D16, [R2,#4]
52412A:  VLDR            S2, [R0]
52412E:  VLDR            D17, [R0,#4]
524132:  VSUB.F32        S0, S2, S0
524136:  VSUB.F32        D16, D17, D16
52413A:  VMUL.F32        D1, D16, D16
52413E:  VMUL.F32        S0, S0, S0
524142:  VADD.F32        S0, S0, S2
524146:  VADD.F32        S0, S0, S3
52414A:  VMIN.F32        D1, D0, D8
52414E:  VCMPE.F32       S0, S16
524152:  VMRS            APSR_nzcv, FPSCR
524156:  VMOV            D8, D1
52415A:  IT LT
52415C:  MOVLT           R9, R6
52415E:  CMP             R4, #0xF
524160:  MOV             R4, R5
524162:  BLT             loc_5240E6
524164:  CMP.W           R9, #0
524168:  BEQ             loc_5241C4
52416A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x524174)
52416C:  MOVW            R1, #0x7530
524170:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
524172:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
524174:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
524176:  ADD             R0, R1
524178:  STR.W           R0, [R8,#0x34]
52417C:  BLX             rand
524180:  VMOV            S0, R0
524184:  VLDR            S2, =4.6566e-10
524188:  VCVT.F32.S32    S0, S0
52418C:  VMUL.F32        S0, S0, S2
524190:  VLDR            S2, =0.0
524194:  VADD.F32        S0, S0, S2
524198:  VLDR            S2, =0.2
52419C:  VCMPE.F32       S0, S2
5241A0:  VMRS            APSR_nzcv, FPSCR
5241A4:  BGE             loc_5241C4
5241A6:  MOV             R6, SP
5241A8:  MOV             R1, R9; CVehicle *
5241AA:  MOV             R0, R6; this
5241AC:  BLX             j__ZN20CEventVehicleToStealC2EP8CVehicle; CEventVehicleToSteal::CEventVehicleToSteal(CVehicle *)
5241B0:  LDR.W           R0, [R10,#0x440]
5241B4:  MOV             R1, R6; CEvent *
5241B6:  MOVS            R2, #0; bool
5241B8:  ADDS            R0, #0x68 ; 'h'; this
5241BA:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5241BE:  MOV             R0, R6; this
5241C0:  BLX             j__ZN20CEventVehicleToStealD2Ev; CEventVehicleToSteal::~CEventVehicleToSteal()
5241C4:  ADD             SP, SP, #0x10
5241C6:  VPOP            {D8}
5241CA:  ADD             SP, SP, #4
5241CC:  POP.W           {R8-R11}
5241D0:  POP             {R4-R7,PC}
