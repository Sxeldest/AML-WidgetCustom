; =========================================================
; Game Engine Function: _ZN6CTrain8OpenDoorEP4CPedi6eDoorsfb
; Address            : 0x57F05C - 0x57F2C4
; =========================================================

57F05C:  PUSH            {R4-R7,LR}
57F05E:  ADD             R7, SP, #0xC
57F060:  PUSH.W          {R8-R11}
57F064:  SUB             SP, SP, #4
57F066:  VPUSH           {D8-D11}
57F06A:  SUB             SP, SP, #0x80
57F06C:  MOV             R5, R3
57F06E:  MOV             R10, R0
57F070:  BIC.W           R0, R5, #1
57F074:  MOV             R11, R1
57F076:  CMP             R0, #2
57F078:  BNE.W           loc_57F2B6
57F07C:  MOVS            R0, #8
57F07E:  CMP             R5, #2
57F080:  IT EQ
57F082:  MOVEQ           R0, #4
57F084:  ADD.W           R4, R10, R0
57F088:  LDR.W           R0, [R4,#0x67C]
57F08C:  CMP             R0, #0
57F08E:  BEQ.W           loc_57F2B6
57F092:  ADD.W           R1, R0, #0x10
57F096:  ADD             R0, SP, #0xC0+var_88
57F098:  MOVS            R2, #0
57F09A:  VLDR            S22, [R7,#arg_0]
57F09E:  MOVS            R6, #0
57F0A0:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
57F0A4:  ADD.W           R0, R5, R5,LSL#1
57F0A8:  VLDR            S18, [SP,#0xC0+var_58]
57F0AC:  VLDR            S20, [SP,#0xC0+var_54]
57F0B0:  ADD.W           R5, R10, R0,LSL#3
57F0B4:  VLDR            S16, [SP,#0xC0+var_50]
57F0B8:  ADDW            R9, R5, #0x5EC
57F0BC:  STRD.W          R6, R6, [SP,#0xC0+var_98]
57F0C0:  STR             R6, [SP,#0xC0+var_90]
57F0C2:  MOV             R0, R9; this
57F0C4:  BLX             j__ZNK5CDoor8IsClosedEv; CDoor::IsClosed(void)
57F0C8:  CMP             R0, #1
57F0CA:  BNE             loc_57F190
57F0CC:  LDR             R1, =(_ZN17CVehicleModelInfo17ClearAtomicFlagCBEP8RwObjectPv_ptr - 0x57F0DA)
57F0CE:  ADDW            R4, R4, #0x67C
57F0D2:  MOV.W           R2, #0x400
57F0D6:  ADD             R1, PC; _ZN17CVehicleModelInfo17ClearAtomicFlagCBEP8RwObjectPv_ptr
57F0D8:  LDR             R0, [R4]
57F0DA:  LDR             R1, [R1]; CVehicleModelInfo::ClearAtomicFlagCB(RwObject *,void *)
57F0DC:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
57F0E0:  VMOV            R1, S22; float
57F0E4:  MOV             R0, R9; this
57F0E6:  BLX             j__ZN5CDoor4OpenEf; CDoor::Open(float)
57F0EA:  ADD.W           R0, R5, #0x5F0
57F0EE:  VLDR            S0, [R0]
57F0F2:  ADD.W           R0, R5, #0x5F8
57F0F6:  VLDR            S2, [R0]
57F0FA:  VCMP.F32        S2, S0
57F0FE:  VMRS            APSR_nzcv, FPSCR
57F102:  BEQ.W           loc_57F232
57F106:  LDR             R1, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x57F112)
57F108:  MOV.W           R2, #0x400
57F10C:  LDR             R0, [R4]
57F10E:  ADD             R1, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
57F110:  LDR             R1, [R1]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
57F112:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
57F116:  CMP.W           R11, #0
57F11A:  BEQ.W           loc_57F232
57F11E:  MOV             R0, SP; this
57F120:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
57F124:  LDR             R1, =(_ZTV16CEventSoundQuiet_ptr - 0x57F134)
57F126:  MOVS            R2, #0x42700000
57F12C:  STR.W           R11, [SP,#0xC0+var_B0]
57F130:  ADD             R1, PC; _ZTV16CEventSoundQuiet_ptr
57F132:  STR             R2, [SP,#0xC0+var_AC]
57F134:  MOV.W           R2, #0xFFFFFFFF
57F138:  ADD.W           R8, R0, #0x10
57F13C:  LDR             R1, [R1]; `vtable for'CEventSoundQuiet ...
57F13E:  MOV             R0, R11; this
57F140:  STR             R2, [SP,#0xC0+var_A8]
57F142:  MOVS            R2, #0
57F144:  ADDS            R1, #8
57F146:  STRD.W          R2, R2, [SP,#0xC0+var_A4]
57F14A:  STR             R2, [SP,#0xC0+var_9C]
57F14C:  STR             R1, [SP,#0xC0+var_C0]
57F14E:  MOV             R1, R8; CEntity **
57F150:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
57F154:  LDR             R0, [SP,#0xC0+var_A8]
57F156:  ADDS            R0, #1
57F158:  BNE             loc_57F17E
57F15A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x57F162)
57F15C:  LDR             R1, [SP,#0xC0+var_B0]
57F15E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
57F160:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
57F162:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
57F164:  STR             R0, [SP,#0xC0+var_A8]
57F166:  LDR             R0, [R1,#0x14]
57F168:  ADD.W           R2, R0, #0x30 ; '0'
57F16C:  CMP             R0, #0
57F16E:  IT EQ
57F170:  ADDEQ           R2, R1, #4
57F172:  VLDR            D16, [R2]
57F176:  LDR             R0, [R2,#8]
57F178:  STR             R0, [SP,#0xC0+var_9C]
57F17A:  VSTR            D16, [SP,#0xC0+var_A4]
57F17E:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
57F182:  MOV             R1, SP; CEvent *
57F184:  MOVS            R2, #0; bool
57F186:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
57F18A:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x57F190)
57F18C:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
57F18E:  B               loc_57F21A
57F190:  VMOV            R1, S22; float
57F194:  MOV             R0, R9; this
57F196:  BLX             j__ZN5CDoor4OpenEf; CDoor::Open(float)
57F19A:  CMP.W           R11, #0
57F19E:  BEQ             loc_57F232
57F1A0:  VCMP.F32        S22, #0.0
57F1A4:  VMRS            APSR_nzcv, FPSCR
57F1A8:  BNE             loc_57F232
57F1AA:  MOV             R0, SP; this
57F1AC:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
57F1B0:  LDR             R1, =(_ZTV16CEventSoundQuiet_ptr - 0x57F1C0)
57F1B2:  MOVS            R2, #0x42F00000
57F1B8:  STR.W           R11, [SP,#0xC0+var_B0]
57F1BC:  ADD             R1, PC; _ZTV16CEventSoundQuiet_ptr
57F1BE:  STR             R2, [SP,#0xC0+var_AC]
57F1C0:  MOV.W           R2, #0xFFFFFFFF
57F1C4:  ADD.W           R8, R0, #0x10
57F1C8:  LDR             R1, [R1]; `vtable for'CEventSoundQuiet ...
57F1CA:  MOV             R0, R11; this
57F1CC:  STR             R2, [SP,#0xC0+var_A8]
57F1CE:  MOVS            R2, #0
57F1D0:  ADDS            R1, #8
57F1D2:  STRD.W          R2, R2, [SP,#0xC0+var_A4]
57F1D6:  STR             R2, [SP,#0xC0+var_9C]
57F1D8:  STR             R1, [SP,#0xC0+var_C0]
57F1DA:  MOV             R1, R8; CEntity **
57F1DC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
57F1E0:  LDR             R0, [SP,#0xC0+var_A8]
57F1E2:  ADDS            R0, #1
57F1E4:  BNE             loc_57F20A
57F1E6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x57F1EE)
57F1E8:  LDR             R1, [SP,#0xC0+var_B0]
57F1EA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
57F1EC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
57F1EE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
57F1F0:  STR             R0, [SP,#0xC0+var_A8]
57F1F2:  LDR             R0, [R1,#0x14]
57F1F4:  ADD.W           R2, R0, #0x30 ; '0'
57F1F8:  CMP             R0, #0
57F1FA:  IT EQ
57F1FC:  ADDEQ           R2, R1, #4
57F1FE:  VLDR            D16, [R2]
57F202:  LDR             R0, [R2,#8]
57F204:  STR             R0, [SP,#0xC0+var_9C]
57F206:  VSTR            D16, [SP,#0xC0+var_A4]
57F20A:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
57F20E:  MOV             R1, SP; CEvent *
57F210:  MOVS            R2, #0; bool
57F212:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
57F216:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x57F21C)
57F218:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
57F21A:  LDR             R1, [R0]; `vtable for'CEventSoundQuiet ...
57F21C:  LDR             R0, [SP,#0xC0+var_B0]; this
57F21E:  ADDS            R1, #8
57F220:  STR             R1, [SP,#0xC0+var_C0]
57F222:  CMP             R0, #0
57F224:  ITT NE
57F226:  MOVNE           R1, R8; CEntity **
57F228:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
57F22C:  MOV             R0, SP; this
57F22E:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
57F232:  LDRH.W          R0, [R10,#0x26]
57F236:  MOVW            R1, #0x23A
57F23A:  CMP             R0, R1
57F23C:  BNE             loc_57F26C
57F23E:  ADD.W           R0, R5, #0x5F0
57F242:  VLDR            S0, [R9]
57F246:  VMOV            R1, S18; float
57F24A:  ADD             R4, SP, #0xC0+var_88
57F24C:  VLDR            S2, [R0]
57F250:  VMOV            R3, S16; float
57F254:  MOV             R0, R4; this
57F256:  VSUB.F32        S0, S0, S2
57F25A:  VMUL.F32        S0, S0, S22
57F25E:  VADD.F32        S0, S2, S0
57F262:  VMOV            R2, S0; float
57F266:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
57F26A:  B               loc_57F2AA
57F26C:  LDRB.W          R0, [R5,#0x5F6]
57F270:  ADD             R2, SP, #0xC0+var_98
57F272:  LDR.W           R1, [R5,#0x5F8]
57F276:  ADD             R3, SP, #0xC0+var_98
57F278:  ADD             R4, SP, #0xC0+var_88
57F27A:  STR.W           R1, [R2,R0,LSL#2]
57F27E:  MOV             R0, R4; this
57F280:  LDM             R3, {R1-R3}; float
57F282:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
57F286:  VLDR            S0, [SP,#0xC0+var_58]
57F28A:  VLDR            S2, [SP,#0xC0+var_54]
57F28E:  VLDR            S4, [SP,#0xC0+var_50]
57F292:  VADD.F32        S0, S18, S0
57F296:  VADD.F32        S2, S20, S2
57F29A:  VADD.F32        S4, S16, S4
57F29E:  VSTR            S0, [SP,#0xC0+var_58]
57F2A2:  VSTR            S2, [SP,#0xC0+var_54]
57F2A6:  VSTR            S4, [SP,#0xC0+var_50]
57F2AA:  MOV             R0, R4; this
57F2AC:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
57F2B0:  ADD             R0, SP, #0xC0+var_88; this
57F2B2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
57F2B6:  ADD             SP, SP, #0x80
57F2B8:  VPOP            {D8-D11}
57F2BC:  ADD             SP, SP, #4
57F2BE:  POP.W           {R8-R11}
57F2C2:  POP             {R4-R7,PC}
