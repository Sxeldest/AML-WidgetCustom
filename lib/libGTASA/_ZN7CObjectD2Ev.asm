; =========================================================
; Game Engine Function: _ZN7CObjectD2Ev
; Address            : 0x453098 - 0x453234
; =========================================================

453098:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CObject::~CObject()'
45309A:  ADD             R7, SP, #8
45309C:  SUB             SP, SP, #8; float
45309E:  MOV             R4, R0
4530A0:  LDR             R0, =(_ZTV7CObject_ptr - 0x4530AA)
4530A2:  MOV.W           R5, #0xFFFFFFFF
4530A6:  ADD             R0, PC; _ZTV7CObject_ptr
4530A8:  LDR             R1, [R0]; `vtable for'CObject ...
4530AA:  LDR.W           R0, [R4,#0x144]
4530AE:  ADDS            R1, #8
4530B0:  STR             R1, [R4]
4530B2:  TST.W           R0, #0x300000
4530B6:  BEQ             loc_4530F2
4530B8:  LDRSH.W         R1, [R4,#0x16C]
4530BC:  CMP             R1, R5
4530BE:  BLE             loc_4530E6
4530C0:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x4530CA)
4530C2:  ADD.W           R1, R1, R1,LSL#2
4530C6:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
4530C8:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
4530CA:  LDRSH.W         R0, [R0,R1,LSL#2]
4530CE:  MOVW            R1, #0x6676; int
4530D2:  ADD             R0, R1; this
4530D4:  BLX             j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
4530D8:  LDRSH.W         R1, [R4,#0x16C]; CEntity *
4530DC:  MOV             R0, R4; this
4530DE:  BLX             j__ZN11CTheScripts36RemoveFromWaitingForScriptBrainArrayEP7CEntitys; CTheScripts::RemoveFromWaitingForScriptBrainArray(CEntity *,short)
4530E2:  LDR.W           R0, [R4,#0x144]
4530E6:  BIC.W           R0, R0, #0x300000
4530EA:  STRH.W          R5, [R4,#0x16C]
4530EE:  STR.W           R0, [R4,#0x144]
4530F2:  LSLS            R0, R0, #0xF
4530F4:  BPL             loc_45310E
4530F6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x453100)
4530F8:  LDRSH.W         R1, [R4,#0x26]; int
4530FC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4530FE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
453100:  LDR.W           R0, [R0,R1,LSL#2]
453104:  LDR             R0, [R0,#0x2C]
453106:  LDRB.W          R0, [R0,#0x28]; this
45310A:  BLX             j__ZN9CColStore9RemoveRefEi; CColStore::RemoveRef(int)
45310E:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x45311C)
453110:  MOV             R2, #0xD8FD8FD9
453118:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
45311A:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
45311C:  LDR             R0, [R0]; CPools::ms_pObjectPool
45311E:  LDRD.W          R1, R0, [R0]
453122:  SUBS            R1, R4, R1
453124:  ASRS            R1, R1, #2
453126:  MULS            R1, R2
453128:  LDRB            R0, [R0,R1]
45312A:  ORR.W           R1, R0, R1,LSL#8
45312E:  MOVS            R0, #3
453130:  BLX             j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
453134:  LDRH.W          R0, [R4,#0x14E]
453138:  UXTH            R1, R5
45313A:  CMP             R0, R1
45313C:  BEQ             loc_45314E
45313E:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x453146)
453140:  SXTH            R0, R0
453142:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
453144:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
453146:  LDR.W           R0, [R1,R0,LSL#2]; this
45314A:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
45314E:  LDR.W           R0, [R4,#0x170]
453152:  CBZ             R0, loc_453160
453154:  LDR.W           R0, [R4,#0x174]
453158:  CMP             R0, #0
45315A:  IT NE
45315C:  BLXNE           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
453160:  LDRB.W          R0, [R4,#0x140]
453164:  CMP             R0, #3
453166:  BNE             loc_45317C
453168:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x45316E)
45316A:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
45316C:  LDR             R0, [R0]; CObject::nNoTempObjects ...
45316E:  LDRH            R0, [R0]; CObject::nNoTempObjects
453170:  CBZ             R0, loc_45317C
453172:  LDR             R1, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x45317A)
453174:  SUBS            R0, #1
453176:  ADD             R1, PC; _ZN7CObject14nNoTempObjectsE_ptr
453178:  LDR             R1, [R1]; CObject::nNoTempObjects ...
45317A:  STRH            R0, [R1]; CObject::nNoTempObjects
45317C:  LDR.W           R0, [R4,#0x13C]
453180:  CBZ             R0, loc_4531BE
453182:  LDR             R1, =(_ZN6CWorld29ms_listObjectsWithControlCodeE_ptr - 0x453188)
453184:  ADD             R1, PC; _ZN6CWorld29ms_listObjectsWithControlCodeE_ptr
453186:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode ...
453188:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode
45318A:  CMP             R1, R0
45318C:  BNE             loc_453198
45318E:  LDR             R1, =(_ZN6CWorld29ms_listObjectsWithControlCodeE_ptr - 0x453196)
453190:  LDR             R2, [R0,#4]
453192:  ADD             R1, PC; _ZN6CWorld29ms_listObjectsWithControlCodeE_ptr
453194:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode ...
453196:  STR             R2, [R1]; CWorld::ms_listObjectsWithControlCode
453198:  LDR             R1, [R0,#8]
45319A:  CMP             R1, #0
45319C:  ITT NE
45319E:  LDRNE           R2, [R0,#4]
4531A0:  STRNE           R2, [R1,#4]
4531A2:  LDR             R1, [R0,#4]
4531A4:  CMP             R1, #0
4531A6:  ITT NE
4531A8:  LDRNE           R0, [R0,#8]
4531AA:  STRNE           R0, [R1,#8]
4531AC:  LDR.W           R0, [R4,#0x13C]; void *
4531B0:  CMP             R0, #0
4531B2:  IT NE
4531B4:  BLXNE           j__ZN18CPtrNodeDoubleLinkdlEPv; CPtrNodeDoubleLink::operator delete(void *)
4531B8:  MOVS            R0, #0
4531BA:  STR.W           R0, [R4,#0x13C]
4531BE:  LDR             R0, =(MI_TRAINCROSSING1_ptr - 0x4531C8)
4531C0:  LDRSH.W         R1, [R4,#0x26]
4531C4:  ADD             R0, PC; MI_TRAINCROSSING1_ptr
4531C6:  LDR             R0, [R0]; MI_TRAINCROSSING1
4531C8:  LDRH            R0, [R0]
4531CA:  CMP             R1, R0
4531CC:  BNE             loc_45321C
4531CE:  LDR.W           R0, [R4,#0x178]
4531D2:  VMOV.F32        S0, #-12.0
4531D6:  VMOV.F32        S2, #12.0
4531DA:  MOVS            R5, #0
4531DC:  LDR             R1, [R0,#0x14]
4531DE:  ADD.W           R2, R1, #0x30 ; '0'
4531E2:  CMP             R1, #0
4531E4:  IT EQ
4531E6:  ADDEQ           R2, R0, #4
4531E8:  LDR             R0, =(ThePaths_ptr - 0x4531F6)
4531EA:  VLDR            S4, [R2]
4531EE:  VLDR            S6, [R2,#4]
4531F2:  ADD             R0, PC; ThePaths_ptr
4531F4:  VADD.F32        S8, S4, S0
4531F8:  STR             R5, [SP,#0x10+var_C]; bool
4531FA:  VADD.F32        S4, S4, S2
4531FE:  LDR             R0, [R0]; ThePaths ; this
453200:  VADD.F32        S0, S6, S0
453204:  VMOV            R1, S8; float
453208:  VMOV            R2, S4; float
45320C:  VMOV            R3, S0; float
453210:  VADD.F32        S0, S6, S2
453214:  VSTR            S0, [SP,#0x10+var_10]
453218:  BLX             j__ZN9CPathFind20SetLinksBridgeLightsEffffb; CPathFind::SetLinksBridgeLights(float,float,float,float,bool)
45321C:  LDR.W           R0, [R4,#0x168]; this
453220:  CMP             R0, #0
453222:  IT NE
453224:  BLXNE           j__ZN5CFire10ExtinguishEv; CFire::Extinguish(void)
453228:  MOV             R0, R4; this
45322A:  ADD             SP, SP, #8
45322C:  POP.W           {R4,R5,R7,LR}
453230:  B.W             sub_19446C
