; =========================================================
; Game Engine Function: _ZN8CVehicle18GetSpecialColModelEv
; Address            : 0x58C0F8 - 0x58C1D2
; =========================================================

58C0F8:  PUSH            {R4-R7,LR}
58C0FA:  ADD             R7, SP, #0xC
58C0FC:  PUSH.W          {R11}
58C100:  MOV             R4, R0
58C102:  LDRSB.W         R0, [R4,#0x48F]
58C106:  CMP             R0, #0
58C108:  BLT             loc_58C118
58C10A:  LDR             R1, =(_ZN8CVehicle20m_aSpecialColVehicleE_ptr - 0x58C110)
58C10C:  ADD             R1, PC; _ZN8CVehicle20m_aSpecialColVehicleE_ptr
58C10E:  LDR             R1, [R1]; CVehicle::m_aSpecialColVehicle ...
58C110:  LDR.W           R0, [R1,R0,LSL#2]
58C114:  CMP             R0, R4
58C116:  BEQ             loc_58C1CA
58C118:  LDR             R0, =(_ZN8CVehicle20m_aSpecialColVehicleE_ptr - 0x58C11E)
58C11A:  ADD             R0, PC; _ZN8CVehicle20m_aSpecialColVehicleE_ptr
58C11C:  LDR             R1, [R0]; CVehicle::m_aSpecialColVehicle ...
58C11E:  LDR             R0, [R1]; CVehicle::m_aSpecialColVehicle
58C120:  CBZ             R0, loc_58C154
58C122:  LDR             R0, =(_ZN8CVehicle20m_aSpecialColVehicleE_ptr - 0x58C128)
58C124:  ADD             R0, PC; _ZN8CVehicle20m_aSpecialColVehicleE_ptr
58C126:  LDR             R1, [R0]; CVehicle::m_aSpecialColVehicle ...
58C128:  LDR.W           R0, [R1,#(dword_A12FAC - 0xA12FA8)]!
58C12C:  CBZ             R0, loc_58C158
58C12E:  LDR             R0, =(_ZN8CVehicle20m_aSpecialColVehicleE_ptr - 0x58C134)
58C130:  ADD             R0, PC; _ZN8CVehicle20m_aSpecialColVehicleE_ptr
58C132:  LDR             R1, [R0]; CVehicle::m_aSpecialColVehicle ...
58C134:  LDR.W           R0, [R1,#(dword_A12FB0 - 0xA12FA8)]!; CEntity **
58C138:  CBZ             R0, loc_58C15C
58C13A:  LDR             R0, =(_ZN8CVehicle20m_aSpecialColVehicleE_ptr - 0x58C140)
58C13C:  ADD             R0, PC; _ZN8CVehicle20m_aSpecialColVehicleE_ptr
58C13E:  LDR             R1, [R0]; CVehicle::m_aSpecialColVehicle ...
58C140:  LDR.W           R0, [R1,#(dword_A12FB4 - 0xA12FA8)]!
58C144:  CMP             R0, #0
58C146:  ITTT NE
58C148:  MOVNE           R0, #0
58C14A:  POPNE.W         {R11}
58C14E:  POPNE           {R4-R7,PC}
58C150:  MOVS            R6, #3
58C152:  B               loc_58C15E
58C154:  MOVS            R6, #0
58C156:  B               loc_58C15E
58C158:  MOVS            R6, #1
58C15A:  B               loc_58C15E
58C15C:  MOVS            R6, #2
58C15E:  LDR             R0, [R4,#0x44]
58C160:  STRB.W          R6, [R4,#0x48F]
58C164:  ORR.W           R0, R0, #0x4000000
58C168:  STR             R0, [R4,#0x44]
58C16A:  MOV             R0, R4; this
58C16C:  STR             R4, [R1]; CVehicle::m_aSpecialColVehicle ...
58C16E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
58C172:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x58C17C)
58C174:  ADD.W           R1, R6, R6,LSL#1; CColModel *
58C178:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
58C17A:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
58C17C:  ADD.W           R5, R0, R1,LSL#4
58C180:  MOV             R0, R5; this
58C182:  BLX             j__ZN10CCollision20RemoveTrianglePlanesEP9CColModel; CCollision::RemoveTrianglePlanes(CColModel *)
58C186:  LDR             R0, [R5,#0x2C]
58C188:  CMP             R0, #0
58C18A:  ITT EQ
58C18C:  MOVEQ           R0, R5; this
58C18E:  BLXEQ           j__ZN9CColModel12AllocateDataEv; CColModel::AllocateData(void)
58C192:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58C19C)
58C194:  LDRSH.W         R1, [R4,#0x26]
58C198:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58C19A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58C19C:  LDR.W           R0, [R0,R1,LSL#2]
58C1A0:  LDR             R1, [R0,#0x2C]
58C1A2:  MOV             R0, R5
58C1A4:  BLX             j__ZN9CColModelaSERKS_; CColModel::operator=(CColModel const&)
58C1A8:  LDR             R0, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x58C1B6)
58C1AA:  ADD.W           R1, R6, R6,LSL#2
58C1AE:  VMOV.I32        Q8, #0
58C1B2:  ADD             R0, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
58C1B4:  LDR             R0, [R0]; CVehicle::m_aSpecialHydraulicData ...
58C1B6:  ADD.W           R0, R0, R1,LSL#3
58C1BA:  ADD.W           R1, R0, #0x18
58C1BE:  VST1.32         {D16-D17}, [R1]
58C1C2:  MOVS            R1, #0x42C80000
58C1C8:  STR             R1, [R0,#8]
58C1CA:  MOVS            R0, #1
58C1CC:  POP.W           {R11}
58C1D0:  POP             {R4-R7,PC}
