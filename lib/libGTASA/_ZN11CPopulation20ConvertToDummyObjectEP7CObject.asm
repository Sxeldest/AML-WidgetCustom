; =========================================================
; Game Engine Function: _ZN11CPopulation20ConvertToDummyObjectEP7CObject
; Address            : 0x4CE0E8 - 0x4CE1C4
; =========================================================

4CE0E8:  PUSH            {R4,R5,R7,LR}
4CE0EA:  ADD             R7, SP, #8
4CE0EC:  SUB             SP, SP, #0x40
4CE0EE:  MOV             R5, R0
4CE0F0:  LDR.W           R4, [R5,#0x178]
4CE0F4:  CBZ             R4, loc_4CE154
4CE0F6:  ADD             R0, SP, #0x48+var_28; this
4CE0F8:  MOV             R1, R4
4CE0FA:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
4CE0FE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CE10C)
4CE100:  MOVS            R2, #1
4CE102:  VLDR            D16, [SP,#0x48+var_28]
4CE106:  MOVS            R3, #(stderr+2)
4CE108:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CE10A:  LDR             R1, [SP,#0x48+var_20]
4CE10C:  STR             R1, [SP,#0x48+var_10]
4CE10E:  VSTR            D16, [SP,#0x48+var_18]
4CE112:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CE114:  LDRSH.W         R1, [R5,#0x26]
4CE118:  LDR.W           R0, [R0,R1,LSL#2]
4CE11C:  LDR             R0, [R0,#0x2C]
4CE11E:  LDR             R1, [R0,#0x24]; CVector *
4CE120:  MOVS            R0, #0
4CE122:  STRD.W          R3, R0, [SP,#0x48+var_48]; __int16 *
4CE126:  ADD             R3, SP, #0x48+var_28; bool
4CE128:  STRD.W          R0, R2, [SP,#0x48+var_40]; CEntity **
4CE12C:  STRD.W          R2, R0, [SP,#0x48+var_38]; bool
4CE130:  MOVS            R2, #0; float
4CE132:  STR             R0, [SP,#0x48+var_30]; bool
4CE134:  ADD             R0, SP, #0x48+var_18; this
4CE136:  BLX             j__ZN6CWorld25FindObjectsKindaCollidingERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsKindaColliding(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
4CE13A:  LDRH.W          R0, [SP,#0x48+var_28]
4CE13E:  CBZ             R0, loc_4CE144
4CE140:  ADD             SP, SP, #0x40 ; '@'
4CE142:  POP             {R4,R5,R7,PC}
4CE144:  LDR             R0, [R4,#0x1C]
4CE146:  MOV             R1, R5; CObject *
4CE148:  ORR.W           R0, R0, #0x80
4CE14C:  STR             R0, [R4,#0x1C]
4CE14E:  MOV             R0, R4; this
4CE150:  BLX             j__ZN12CDummyObject16UpdateFromObjectEP7CObject; CDummyObject::UpdateFromObject(CObject *)
4CE154:  LDRB.W          R0, [R5,#0x3A]
4CE158:  AND.W           R0, R0, #7
4CE15C:  CMP             R0, #4
4CE15E:  BNE             loc_4CE1A8
4CE160:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CE16A)
4CE162:  LDRSH.W         R1, [R5,#0x26]
4CE166:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CE168:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CE16A:  LDR.W           R0, [R0,R1,LSL#2]
4CE16E:  LDR             R1, [R0]
4CE170:  LDR             R1, [R1,#8]
4CE172:  BLX             R1
4CE174:  CBZ             R0, loc_4CE1A8
4CE176:  LDRH            R0, [R0,#0x28]
4CE178:  AND.W           R0, R0, #0x7000
4CE17C:  ORR.W           R0, R0, #0x800
4CE180:  CMP.W           R0, #0x2800
4CE184:  BNE             loc_4CE1A8
4CE186:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CE190)
4CE188:  LDRSH.W         R1, [R5,#0x26]; CEntity *
4CE18C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CE18E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CE190:  LDR.W           R0, [R0,R1,LSL#2]
4CE194:  LDRH            R0, [R0,#0x28]
4CE196:  AND.W           R0, R0, #0x7800
4CE19A:  CMP.W           R0, #0x2800
4CE19E:  ITTT NE
4CE1A0:  LDRNE           R0, [R4,#0x1C]
4CE1A2:  BICNE.W         R0, R0, #0x80
4CE1A6:  STRNE           R0, [R4,#0x1C]
4CE1A8:  MOV             R0, R5; this
4CE1AA:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4CE1AE:  LDR             R0, [R5]
4CE1B0:  LDR             R1, [R0,#4]
4CE1B2:  MOV             R0, R5
4CE1B4:  BLX             R1
4CE1B6:  CMP             R4, #0
4CE1B8:  ITT NE
4CE1BA:  MOVNE           R0, R4; this
4CE1BC:  BLXNE           j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4CE1C0:  ADD             SP, SP, #0x40 ; '@'
4CE1C2:  POP             {R4,R5,R7,PC}
