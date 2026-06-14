; =========================================================
; Game Engine Function: _ZN11CAutomobile15SetRandomDamageEb
; Address            : 0x552FD8 - 0x553226
; =========================================================

552FD8:  PUSH            {R4-R7,LR}
552FDA:  ADD             R7, SP, #0xC
552FDC:  PUSH.W          {R8-R11}
552FE0:  SUB             SP, SP, #4
552FE2:  VPUSH           {D8-D9}
552FE6:  SUB             SP, SP, #0x18
552FE8:  MOV             R8, R0
552FEA:  MOVS            R0, #0
552FEC:  STR             R0, [SP,#0x48+var_38]
552FEE:  MOV             R4, R1
552FF0:  STRH.W          R0, [SP,#0x48+var_34]
552FF4:  STRB.W          R0, [R7,#var_39]
552FF8:  MOVS            R0, #0x1010000
552FFE:  STR.W           R0, [R7,#var_3F]
553002:  MOVS            R0, #1
553004:  STRH.W          R0, [R7,#var_3B]
553008:  BLX             rand
55300C:  UXTH            R0, R0
55300E:  VLDR            S16, =0.000015259
553012:  VMOV            S0, R0
553016:  CMP             R4, #1
553018:  VCVT.F32.S32    S0, S0
55301C:  VMUL.F32        S18, S0, S16
553020:  BNE             loc_553054
553022:  BLX             rand
553026:  VMOV.F32        S0, #6.0
55302A:  UXTH            R0, R0
55302C:  VMOV            S2, R0
553030:  VCVT.F32.S32    S2, S2
553034:  VMUL.F32        S4, S18, S0
553038:  VMUL.F32        S0, S2, S16
55303C:  VCVT.S32.F32    S2, S4
553040:  VMOV            R9, S2
553044:  CMP.W           R9, #0
553048:  BEQ             loc_553140
55304A:  VMOV.F32        S2, #4.0
55304E:  VMUL.F32        S0, S0, S2
553052:  B               loc_553074
553054:  VCVT.S32.F32    S0, S18
553058:  VMOV            R9, S0
55305C:  CMP.W           R9, #0
553060:  BEQ             loc_55315C
553062:  BLX             rand
553066:  UXTH            R0, R0
553068:  VMOV            S0, R0
55306C:  VCVT.F32.S32    S0, S0
553070:  VMUL.F32        S0, S0, S16
553074:  VCVT.S32.F32    S0, S0
553078:  CMP.W           R9, #1
55307C:  VMOV            R0, S0
553080:  STR             R0, [SP,#0x48+var_44]
553082:  BLT             loc_553154
553084:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x553094)
553086:  ADDW            R11, R8, #0x5B4
55308A:  ADD.W           R10, SP, #0x48+var_38
55308E:  MOVS            R5, #0
553090:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
553092:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
553094:  STR             R0, [SP,#0x48+var_48]
553096:  BLX             rand
55309A:  UXTH            R0, R0
55309C:  CMP             R5, #0
55309E:  VMOV            S0, R0
5530A2:  RSB.W           R0, R5, #6
5530A6:  VCVT.F32.S32    S0, S0
5530AA:  VMOV            S2, R0
5530AE:  VCVT.F32.S32    S2, S2
5530B2:  VMUL.F32        S0, S0, S16
5530B6:  VMUL.F32        S0, S0, S2
5530BA:  VCVT.S32.F32    S0, S0
5530BE:  VMOV            R6, S0
5530C2:  BEQ             loc_5530EE
5530C4:  CMP             R6, #0
5530C6:  BLT             loc_5530EA
5530C8:  MOV.W           R0, #0xFFFFFFFF
5530CC:  MOVS            R1, #0
5530CE:  LDRB.W          R2, [R10,R1]
5530D2:  EOR.W           R2, R2, #1
5530D6:  ADD             R0, R2
5530D8:  ADDS            R2, R1, #1
5530DA:  CMP             R0, R6
5530DC:  BGE             loc_5530E6
5530DE:  SUBS            R1, #1
5530E0:  CMP             R1, #5
5530E2:  MOV             R1, R2
5530E4:  BLT             loc_5530CE
5530E6:  SUBS            R6, R2, #1
5530E8:  B               loc_5530EE
5530EA:  MOV.W           R6, #0xFFFFFFFF
5530EE:  MOV             R0, R6
5530F0:  BLX             j__ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors; CDamageManager::GetCarNodeIndexFromDoor(eDoors)
5530F4:  MOV             R4, R0
5530F6:  MOV             R0, R11
5530F8:  MOV             R1, R6
5530FA:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
5530FE:  CBNZ            R0, loc_553132
553100:  LDRSH.W         R0, [R8,#0x26]
553104:  LDR             R1, [SP,#0x48+var_48]
553106:  LDR.W           R0, [R1,R0,LSL#2]
55310A:  MOVS            R1, #1
55310C:  LSLS            R1, R4
55310E:  LDR             R0, [R0,#0x74]
553110:  LDR.W           R0, [R0,#0x328]
553114:  TST             R0, R1
553116:  BEQ             loc_553132
553118:  MOV             R0, R11
55311A:  MOV             R1, R6
55311C:  MOVS            R2, #2
55311E:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
553122:  ADD.W           R0, R8, R4,LSL#2
553126:  MOVS            R2, #2
553128:  LDR.W           R1, [R0,#0x65C]
55312C:  MOV             R0, R8
55312E:  BLX             j__ZN8CVehicle22SetComponentVisibilityEP7RwFramej; CVehicle::SetComponentVisibility(RwFrame *,uint)
553132:  ADDS            R5, #1
553134:  MOVS            R0, #1
553136:  CMP             R5, R9
553138:  STRB.W          R0, [R10,R6]
55313C:  BNE             loc_553096
55313E:  B               loc_553154
553140:  VMOV.F32        S2, #3.0
553144:  VMUL.F32        S0, S0, S2
553148:  VCVT.S32.F32    S0, S0
55314C:  VMOV            R0, S0
553150:  ADDS            R0, #1
553152:  STR             R0, [SP,#0x48+var_44]
553154:  LDR             R0, [SP,#0x48+var_44]
553156:  CMP             R0, #1
553158:  BGE             loc_553160
55315A:  B               loc_553218
55315C:  MOVS            R0, #1
55315E:  STR             R0, [SP,#0x48+var_44]
553160:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x553170)
553162:  ADDW            R10, R8, #0x5B4
553166:  SUB.W           R4, R7, #-var_3F
55316A:  MOVS            R5, #0
55316C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55316E:  MOV.W           R9, #1
553172:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
553174:  STR             R0, [SP,#0x48+var_48]
553176:  BLX             rand
55317A:  UXTH            R0, R0
55317C:  VMOV            S0, R0
553180:  RSB.W           R0, R5, #4
553184:  VCVT.F32.S32    S0, S0
553188:  VMOV            S2, R0
55318C:  VCVT.F32.S32    S2, S2
553190:  VMUL.F32        S0, S0, S16
553194:  VMUL.F32        S0, S0, S2
553198:  VCVT.S32.F32    S0, S0
55319C:  VMOV            R0, S0
5531A0:  CMP             R0, #0
5531A2:  BLT             loc_5531C4
5531A4:  MOV.W           R1, #0xFFFFFFFF
5531A8:  MOVS            R2, #0
5531AA:  LDRB            R3, [R4,R2]
5531AC:  EOR.W           R3, R3, #1
5531B0:  ADD             R1, R3
5531B2:  ADDS            R3, R2, #1
5531B4:  CMP             R1, R0
5531B6:  BGE             loc_5531C0
5531B8:  SUBS            R2, #1
5531BA:  CMP             R2, #6
5531BC:  MOV             R2, R3
5531BE:  BLT             loc_5531AA
5531C0:  SUBS            R6, R3, #1
5531C2:  B               loc_5531C8
5531C4:  MOV.W           R6, #0xFFFFFFFF
5531C8:  MOV             R0, R6
5531CA:  BLX             j__ZN14CDamageManager24GetCarNodeIndexFromPanelE7ePanels; CDamageManager::GetCarNodeIndexFromPanel(ePanels)
5531CE:  MOV             R11, R0
5531D0:  MOV             R0, R10; this
5531D2:  MOV             R1, R6; int
5531D4:  BLX             j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
5531D8:  CBNZ            R0, loc_55320C
5531DA:  LDRSH.W         R0, [R8,#0x26]
5531DE:  LDR             R1, [SP,#0x48+var_48]
5531E0:  LDR.W           R0, [R1,R0,LSL#2]
5531E4:  LSL.W           R1, R9, R11
5531E8:  LDR             R0, [R0,#0x74]
5531EA:  LDR.W           R0, [R0,#0x328]
5531EE:  TST             R0, R1
5531F0:  BEQ             loc_55320C
5531F2:  MOV             R0, R10; this
5531F4:  MOV             R1, R6; int
5531F6:  MOVS            R2, #1; unsigned int
5531F8:  BLX             j__ZN14CDamageManager14SetPanelStatusEij; CDamageManager::SetPanelStatus(int,uint)
5531FC:  ADD.W           R0, R8, R11,LSL#2
553200:  MOVS            R2, #2
553202:  LDR.W           R1, [R0,#0x65C]
553206:  MOV             R0, R8
553208:  BLX             j__ZN8CVehicle22SetComponentVisibilityEP7RwFramej; CVehicle::SetComponentVisibility(RwFrame *,uint)
55320C:  LDR             R0, [SP,#0x48+var_44]
55320E:  ADDS            R5, #1
553210:  STRB.W          R9, [R4,R6]
553214:  CMP             R5, R0
553216:  BNE             loc_553176
553218:  ADD             SP, SP, #0x18
55321A:  VPOP            {D8-D9}
55321E:  ADD             SP, SP, #4
553220:  POP.W           {R8-R11}
553224:  POP             {R4-R7,PC}
