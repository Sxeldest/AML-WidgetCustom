; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE17CreateNextSubTaskEP4CPed
; Address            : 0x33411C - 0x3342AC
; =========================================================

33411C:  PUSH            {R4-R7,LR}
33411E:  ADD             R7, SP, #0xC
334120:  PUSH.W          {R11}
334124:  SUB             SP, SP, #0x28
334126:  MOV             R5, R0
334128:  MOV             R4, R1
33412A:  LDR             R0, [R5,#0xC]
33412C:  CBZ             R0, loc_334188
33412E:  LDR             R0, [R5,#8]
334130:  LDR             R1, [R0]
334132:  LDR             R1, [R1,#0x14]
334134:  BLX             R1
334136:  MOVW            R1, #0x2CE; unsigned int
33413A:  MOVS            R6, #0
33413C:  CMP             R0, R1
33413E:  BGT             loc_334194
334140:  CMP             R0, #0xCB
334142:  BEQ             loc_33421A
334144:  CMP             R0, #0xDB
334146:  BEQ.W           loc_334254
33414A:  CMP.W           R0, #0x2C0
33414E:  BNE             loc_33418A
334150:  LDRB.W          R0, [R4,#0x485]
334154:  MOVS            R6, #0
334156:  LSLS            R0, R0, #0x1F
334158:  BNE             loc_33418A
33415A:  MOVS            R0, #dword_70; this
33415C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334160:  LDR.W           R1, [R4,#0x590]; CVehicle *
334164:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
334166:  MOVS            R3, #0; bool
334168:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
33416C:  LDR             R1, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x334178)
33416E:  MOV.W           R2, #0x7D0
334172:  STR             R2, [R0,#0x60]
334174:  ADD             R1, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
334176:  STRH.W          R6, [R0,#0x6C]
33417A:  STRD.W          R6, R6, [R0,#0x64]
33417E:  MOV             R6, R0
334180:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarDriveTimed ...
334182:  ADDS            R1, #8
334184:  STR             R1, [R0]
334186:  B               loc_33418A
334188:  MOVS            R6, #0
33418A:  MOV             R0, R6
33418C:  ADD             SP, SP, #0x28 ; '('
33418E:  POP.W           {R11}
334192:  POP             {R4-R7,PC}
334194:  MOVW            R1, #0x2CF
334198:  CMP             R0, R1
33419A:  BEQ             loc_334240
33419C:  MOVW            R1, #0x387
3341A0:  CMP             R0, R1
3341A2:  ITT NE
3341A4:  MOVWNE          R1, #0x38A
3341A8:  CMPNE           R0, R1
3341AA:  BNE             loc_33418A
3341AC:  LDR             R0, [R5,#0xC]
3341AE:  LDR             R1, [R4,#0x14]
3341B0:  VLDR            S4, =0.0
3341B4:  LDR             R2, [R0,#0x14]
3341B6:  ADD.W           R3, R1, #0x30 ; '0'
3341BA:  CMP             R1, #0
3341BC:  IT EQ
3341BE:  ADDEQ           R3, R4, #4
3341C0:  ADD.W           R1, R2, #0x30 ; '0'
3341C4:  CMP             R2, #0
3341C6:  VLDR            D16, [R3]
3341CA:  IT EQ
3341CC:  ADDEQ           R1, R0, #4
3341CE:  VLDR            S2, [R5,#0x18]
3341D2:  VLDR            D17, [R1]
3341D6:  VSUB.F32        D16, D16, D17
3341DA:  VMUL.F32        S2, S2, S2
3341DE:  VMUL.F32        D0, D16, D16
3341E2:  VADD.F32        S0, S0, S1
3341E6:  VADD.F32        S0, S0, S4
3341EA:  VCMPE.F32       S0, S2
3341EE:  VMRS            APSR_nzcv, FPSCR
3341F2:  BLE             loc_33427A
3341F4:  VLDR            S2, [R5,#0x20]
3341F8:  VCMP.F32        S2, #0.0
3341FC:  VMRS            APSR_nzcv, FPSCR
334200:  BEQ             loc_334296
334202:  VMUL.F32        S2, S2, S2
334206:  VCMPE.F32       S0, S2
33420A:  VMRS            APSR_nzcv, FPSCR
33420E:  ITE GT
334210:  MOVWGT          R1, #0x38A
334214:  MOVWLE          R1, #0x387
334218:  B               loc_33429A
33421A:  LDR.W           R0, [R4,#0x100]
33421E:  CMP             R0, #0
334220:  BEQ             loc_334240
334222:  MOVS            R0, #dword_20; this
334224:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334228:  MOV             R6, R0
33422A:  MOV.W           R0, #0x41000000
33422E:  STR             R0, [SP,#0x38+var_38]; float
334230:  MOV             R0, R6; this
334232:  MOV.W           R1, #0x7D0; int
334236:  MOVS            R2, #0; bool
334238:  MOVS            R3, #0; bool
33423A:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
33423E:  B               loc_33418A
334240:  LDR             R0, [R5]
334242:  MOV             R1, R4
334244:  LDR             R2, [R0,#0x2C]
334246:  MOV             R0, R5
334248:  ADD             SP, SP, #0x28 ; '('
33424A:  POP.W           {R11}
33424E:  POP.W           {R4-R7,LR}
334252:  BX              R2
334254:  ADD             R5, SP, #0x38+var_30
334256:  MOV.W           R0, #0x41000000
33425A:  STR             R0, [SP,#0x38+var_38]; float
33425C:  MOV.W           R1, #0xFFFFFFFF; int
334260:  MOV             R0, R5; this
334262:  MOVS            R2, #0; bool
334264:  MOVS            R3, #0; bool
334266:  MOVS            R6, #0
334268:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
33426C:  MOV             R1, R4; CPed *
33426E:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
334272:  MOV             R0, R5; this
334274:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
334278:  B               loc_33418A
33427A:  LDRB.W          R0, [R5,#0x48]
33427E:  ORR.W           R1, R0, #4
334282:  STRB.W          R1, [R5,#0x48]
334286:  MOV.W           R1, #0x398
33428A:  TST.W           R0, #2
33428E:  IT EQ
334290:  MOVWEQ          R1, #0x516
334294:  B               loc_33429A
334296:  MOVW            R1, #0x38A
33429A:  MOV             R0, R5
33429C:  MOV             R2, R4
33429E:  ADD             SP, SP, #0x28 ; '('
3342A0:  POP.W           {R11}
3342A4:  POP.W           {R4-R7,LR}
3342A8:  B.W             j_j__ZNK22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE13CreateSubTaskEiP4CPed; j_CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard>::CreateSubTask(int,CPed *)
