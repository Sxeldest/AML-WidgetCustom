; =========================================================
; Game Engine Function: _ZN21CTaskInteriorBeInShop12ScanForStuffEP4CPed
; Address            : 0x52918C - 0x52930E
; =========================================================

52918C:  PUSH            {R4-R7,LR}
52918E:  ADD             R7, SP, #0xC
529190:  PUSH.W          {R8-R10}
529194:  SUB             SP, SP, #0x48
529196:  MOV             R9, R0
529198:  MOVS            R0, #0
52919A:  STRD.W          R0, R0, [SP,#0x60+var_20]
52919E:  MOV             R8, R1
5291A0:  LDRB.W          R0, [R9,#0x30]
5291A4:  CMP             R0, #0
5291A6:  BEQ.W           loc_529306
5291AA:  LDR.W           R1, [R8,#0x14]
5291AE:  ADD.W           R12, SP, #0x60+var_24
5291B2:  LDR.W           R0, [R9,#0x28]; int
5291B6:  ADD             R5, SP, #0x60+var_20
5291B8:  ADD.W           R6, R1, #0x30 ; '0'
5291BC:  CMP             R1, #0
5291BE:  IT EQ
5291C0:  ADDEQ.W         R6, R8, #4
5291C4:  ADD             R4, SP, #0x60+var_1C
5291C6:  LDRD.W          R2, R3, [R6]; int
5291CA:  LDR             R1, [R6,#8]
5291CC:  MOV.W           R6, #0x40000000
5291D0:  STRD.W          R1, R6, [SP,#0x60+var_60]; int
5291D4:  ADD             R1, SP, #0x60+var_58
5291D6:  STM.W           R1, {R4,R5,R12}
5291DA:  MOV.W           R1, #0xFFFFFFFF; int
5291DE:  BLX             j__ZN15InteriorGroup_c23FindClosestInteriorInfoEi7CVectorfPP14InteriorInfo_tPP10Interior_cPf; InteriorGroup_c::FindClosestInteriorInfo(int,CVector,float,InteriorInfo_t **,Interior_c **,float *)
5291E2:  CMP             R0, #0
5291E4:  ITTT NE
5291E6:  LDRNE           R0, [SP,#0x60+var_1C]
5291E8:  LDRNE.W         R1, [R9,#0x2C]
5291EC:  CMPNE           R1, R0
5291EE:  BEQ.W           loc_529306
5291F2:  LDRB            R0, [R0]
5291F4:  CMP             R0, #9
5291F6:  BEQ             loc_52925C
5291F8:  CMP             R0, #8
5291FA:  BNE.W           loc_529300
5291FE:  BLX             rand
529202:  UXTH            R0, R0
529204:  VLDR            S2, =0.000015259
529208:  VMOV            S0, R0
52920C:  VCVT.F32.S32    S0, S0
529210:  VMUL.F32        S0, S0, S2
529214:  VLDR            S2, =100.0
529218:  VMUL.F32        S0, S0, S2
52921C:  VCVT.S32.F32    S0, S0
529220:  VMOV            R0, S0
529224:  CMP             R0, #0x33 ; '3'
529226:  BLT             loc_5292C4
529228:  ADD             R6, SP, #0x60+var_40
52922A:  LDRD.W          R4, R5, [SP,#0x60+var_20]
52922E:  MOV             R0, R6; this
529230:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
529234:  LDR             R0, =(_ZTV21CEventInteriorUseInfo_ptr - 0x529242)
529236:  MOVS            R1, #0
529238:  STRD.W          R5, R4, [SP,#0x60+var_34]
52923C:  MOVS            R2, #0; bool
52923E:  ADD             R0, PC; _ZTV21CEventInteriorUseInfo_ptr
529240:  STR             R1, [SP,#0x60+var_2C]
529242:  STRB.W          R1, [SP,#0x60+var_28]
529246:  MOV             R1, R6; CEvent *
529248:  LDR             R0, [R0]; `vtable for'CEventInteriorUseInfo ...
52924A:  ADDS            R0, #8
52924C:  STR             R0, [SP,#0x60+var_40]
52924E:  LDR.W           R0, [R8,#0x440]
529252:  ADDS            R0, #0x68 ; 'h'; this
529254:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
529258:  MOV             R0, R6
52925A:  B               loc_5292BE
52925C:  BLX             rand
529260:  UXTH            R0, R0
529262:  VLDR            S2, =0.000015259
529266:  VMOV            S0, R0
52926A:  VCVT.F32.S32    S0, S0
52926E:  VMUL.F32        S0, S0, S2
529272:  VLDR            S2, =100.0
529276:  VMUL.F32        S0, S0, S2
52927A:  VCVT.S32.F32    S0, S0
52927E:  VMOV            R0, S0
529282:  CMP             R0, #0x51 ; 'Q'
529284:  BLT             loc_529300
529286:  ADD.W           R10, SP, #0x60+var_40
52928A:  MOVS            R4, #0
52928C:  STRB.W          R4, [R9,#0x30]
529290:  MOV             R0, R10; this
529292:  LDRD.W          R5, R6, [SP,#0x60+var_20]
529296:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
52929A:  LDR             R0, =(_ZTV21CEventInteriorUseInfo_ptr - 0x5292A6)
52929C:  MOV             R1, R10; CEvent *
52929E:  STR             R6, [SP,#0x60+var_34]
5292A0:  MOVS            R2, #0; bool
5292A2:  ADD             R0, PC; _ZTV21CEventInteriorUseInfo_ptr
5292A4:  LDR             R0, [R0]; `vtable for'CEventInteriorUseInfo ...
5292A6:  ADDS            R0, #8
5292A8:  STR             R0, [SP,#0x60+var_40]
5292AA:  STRD.W          R5, R4, [SP,#0x60+var_30]
5292AE:  STRB.W          R4, [SP,#0x60+var_28]
5292B2:  LDR.W           R0, [R8,#0x440]
5292B6:  ADDS            R0, #0x68 ; 'h'; this
5292B8:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5292BC:  MOV             R0, R10; this
5292BE:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
5292C2:  B               loc_529300
5292C4:  LDR.W           R12, =(g_ikChainMan_ptr - 0x5292D6)
5292C8:  MOV.W           R2, #0xFFFFFFFF
5292CC:  LDR             R0, [SP,#0x60+var_1C]
5292CE:  MOVW            R1, #0xBB8
5292D2:  ADD             R12, PC; g_ikChainMan_ptr
5292D4:  STRD.W          R1, R2, [SP,#0x60+var_60]; int
5292D8:  MOV.W           R6, #0x1F4
5292DC:  MOV.W           R5, #0x3E800000
5292E0:  MOVS            R4, #1
5292E2:  ADDS            R0, #4
5292E4:  ADD             R1, SP, #0x60+var_58
5292E6:  MOV.W           LR, #0
5292EA:  STM             R1!, {R0,R4-R6}
5292EC:  MOVS            R3, #3
5292EE:  ADR             R1, aTaskbeinshop; "TaskBeInShop"
5292F0:  LDR.W           R0, [R12]; g_ikChainMan ; int
5292F4:  MOV             R2, R8; CPed *
5292F6:  STRD.W          R3, LR, [SP,#0x60+var_48]; int
5292FA:  MOVS            R3, #0; int
5292FC:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
529300:  LDR             R0, [SP,#0x60+var_1C]
529302:  STR.W           R0, [R9,#0x2C]
529306:  ADD             SP, SP, #0x48 ; 'H'
529308:  POP.W           {R8-R10}
52930C:  POP             {R4-R7,PC}
