; =========================================================
; Game Engine Function: _ZN9CColStore24BoundingBoxesPostProcessEv
; Address            : 0x2E3180 - 0x2E3244
; =========================================================

2E3180:  PUSH            {R4-R7,LR}
2E3182:  ADD             R7, SP, #0xC
2E3184:  PUSH.W          {R8-R11}
2E3188:  SUB             SP, SP, #4
2E318A:  VPUSH           {D8-D9}
2E318E:  SUB             SP, SP, #0x28
2E3190:  LDR             R0, =(_ZN9CColStore11ms_pColPoolE_ptr - 0x2E319A)
2E3192:  MOVS            R4, #1
2E3194:  MOVS            R5, #0x54 ; 'T'
2E3196:  ADD             R0, PC; _ZN9CColStore11ms_pColPoolE_ptr
2E3198:  LDR.W           R8, [R0]; CColStore::ms_pColPool ...
2E319C:  LDR             R0, =(_ZN9CColStore12ms_pQuadTreeE_ptr - 0x2E31A6)
2E319E:  STR.W           R8, [SP,#0x58+var_3C]
2E31A2:  ADD             R0, PC; _ZN9CColStore12ms_pQuadTreeE_ptr
2E31A4:  LDR             R0, [R0]; CColStore::ms_pQuadTree ...
2E31A6:  STR             R0, [SP,#0x58+var_34]
2E31A8:  ADR             R0, dword_2E3250
2E31AA:  VLD1.64         {D8-D9}, [R0@128]
2E31AE:  LDR.W           R0, [R8]; this
2E31B2:  LDR             R1, [R0,#4]
2E31B4:  LDRSB           R1, [R1,R4]
2E31B6:  CMP             R1, #0
2E31B8:  BLT             loc_2E322E
2E31BA:  LDR.W           R9, [R0]
2E31BE:  BLX             j__ZN9CColAccel14isCacheLoadingEv; CColAccel::isCacheLoading(void)
2E31C2:  CMP             R0, #1
2E31C4:  BNE             loc_2E31D2
2E31C6:  ADD.W           R0, R9, R5
2E31CA:  SUBS            R0, #0x28 ; '('
2E31CC:  BLX             j__ZN9CColAccel9getColDefER6ColDef; CColAccel::getColDef(ColDef &)
2E31D0:  B               loc_2E321E
2E31D2:  LDR.W           R0, [R9,R5]
2E31D6:  STR             R0, [SP,#0x58+var_38]
2E31D8:  ADD.W           R0, R9, R5
2E31DC:  LDRD.W          LR, R10, [R0,#-0x18]
2E31E0:  LDRD.W          R11, R8, [R0,#-0x10]
2E31E4:  LDRD.W          R6, R12, [R0,#-8]
2E31E8:  SUBS            R0, #0x28 ; '('
2E31EA:  VLD1.32         {D16-D17}, [R0]
2E31EE:  VADD.F32        Q8, Q8, Q4
2E31F2:  VST1.32         {D16-D17}, [R0]
2E31F6:  VMOV.32         R0, D16[0]
2E31FA:  STRD.W          LR, R10, [SP,#0x58+var_58]
2E31FE:  VMOV.32         R1, D16[1]
2E3202:  STRD.W          R11, R8, [SP,#0x58+var_50]
2E3206:  VMOV.32         R2, D17[0]
2E320A:  LDR.W           R8, [SP,#0x58+var_3C]
2E320E:  VMOV.32         R3, D17[1]
2E3212:  STRD.W          R6, R12, [SP,#0x58+var_48]
2E3216:  LDR             R6, [SP,#0x58+var_38]
2E3218:  STR             R6, [SP,#0x58+var_40]
2E321A:  BLX             j__ZN9CColAccel9addColDefE6ColDef; CColAccel::addColDef(ColDef)
2E321E:  LDR             R0, [SP,#0x58+var_34]
2E3220:  ADD.W           R1, R9, R5
2E3224:  SUBS            R1, #0x28 ; '('
2E3226:  LDR             R0, [R0]
2E3228:  MOV             R2, R1
2E322A:  BLX             j__ZN13CQuadTreeNode7AddItemEPvRK5CRect; CQuadTreeNode::AddItem(void *,CRect const&)
2E322E:  ADDS            R4, #1
2E3230:  ADDS            R5, #0x2C ; ','
2E3232:  CMP             R4, #0xFF
2E3234:  BNE             loc_2E31AE
2E3236:  ADD             SP, SP, #0x28 ; '('
2E3238:  VPOP            {D8-D9}
2E323C:  ADD             SP, SP, #4
2E323E:  POP.W           {R8-R11}
2E3242:  POP             {R4-R7,PC}
