; =========================================================
; Game Engine Function: _ZN4CPed25GiveWeaponWhenJoiningGangEv
; Address            : 0x4A8104 - 0x4A8224
; =========================================================

4A8104:  PUSH            {R4,R6,R7,LR}
4A8106:  ADD             R7, SP, #8
4A8108:  MOV             R4, R0
4A810A:  LDRSB.W         R0, [R4,#0x71C]
4A810E:  RSB.W           R0, R0, R0,LSL#3
4A8112:  ADD.W           R0, R4, R0,LSL#2
4A8116:  LDR.W           R0, [R0,#0x5A4]
4A811A:  CMP             R0, #0
4A811C:  ITT EQ
4A811E:  LDREQ.W         R0, [R4,#0x714]
4A8122:  CMPEQ           R0, #0x37 ; '7'
4A8124:  BEQ             loc_4A8128
4A8126:  POP             {R4,R6,R7,PC}
4A8128:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4A812E)
4A812A:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4A812C:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
4A812E:  LDRB.W          R0, [R0,#(byte_796849 - 0x7967F4)]
4A8132:  CBZ             R0, loc_4A817C
4A8134:  LDR.W           R0, [R4,#0x59C]
4A8138:  CMP             R0, #2
4A813A:  BCC             loc_4A815E
4A813C:  LDR.W           R0, [R4,#0x440]; this
4A8140:  MOVS            R1, #0; bool
4A8142:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
4A8146:  CMP             R0, #0
4A8148:  ITT NE
4A814A:  LDRNE           R1, [R0,#8]
4A814C:  CMPNE           R1, #0
4A814E:  BEQ             loc_4A815E
4A8150:  LDRB            R0, [R0,#0x18]
4A8152:  CMP             R0, #6
4A8154:  BNE             loc_4A815E
4A8156:  MOV             R0, R4; this
4A8158:  MOVS            R1, #1; unsigned __int8
4A815A:  BLX             j__ZN4CPed30DropEntityThatThisPedIsHoldingEh; CPed::DropEntityThatThisPedIsHolding(uchar)
4A815E:  LDR.W           R0, [R4,#0x714]
4A8162:  CMP             R0, #0x37 ; '7'
4A8164:  BNE             loc_4A8178
4A8166:  MOVS            R1, #0x1E
4A8168:  MOVS            R0, #0xC8
4A816A:  STR.W           R1, [R4,#0x714]
4A816E:  STR.W           R0, [R4,#0x718]
4A8172:  MOV             R0, R4; this
4A8174:  BLX             j__ZN4CPed20RequestDelayedWeaponEv; CPed::RequestDelayedWeapon(void)
4A8178:  MOVS            R0, #0x1E
4A817A:  B               loc_4A8212
4A817C:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4A8182)
4A817E:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4A8180:  LDR             R1, [R0]; CCheat::m_aCheatsActive ...
4A8182:  LDR.W           R0, [R4,#0x59C]
4A8186:  LDRB.W          R1, [R1,#(byte_79684A - 0x7967F4)]
4A818A:  CBZ             R1, loc_4A81D0
4A818C:  CMP             R0, #2
4A818E:  BCC             loc_4A81B2
4A8190:  LDR.W           R0, [R4,#0x440]; this
4A8194:  MOVS            R1, #0; bool
4A8196:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
4A819A:  CMP             R0, #0
4A819C:  ITT NE
4A819E:  LDRNE           R1, [R0,#8]
4A81A0:  CMPNE           R1, #0
4A81A2:  BEQ             loc_4A81B2
4A81A4:  LDRB            R0, [R0,#0x18]
4A81A6:  CMP             R0, #6
4A81A8:  BNE             loc_4A81B2
4A81AA:  MOV             R0, R4; this
4A81AC:  MOVS            R1, #1; unsigned __int8
4A81AE:  BLX             j__ZN4CPed30DropEntityThatThisPedIsHoldingEh; CPed::DropEntityThatThisPedIsHolding(uchar)
4A81B2:  LDR.W           R0, [R4,#0x714]
4A81B6:  CMP             R0, #0x37 ; '7'
4A81B8:  BNE             loc_4A81CC
4A81BA:  MOVS            R1, #0x23 ; '#'
4A81BC:  MOVS            R0, #0xC8
4A81BE:  STR.W           R1, [R4,#0x714]
4A81C2:  STR.W           R0, [R4,#0x718]
4A81C6:  MOV             R0, R4; this
4A81C8:  BLX             j__ZN4CPed20RequestDelayedWeaponEv; CPed::RequestDelayedWeapon(void)
4A81CC:  MOVS            R0, #0x23 ; '#'
4A81CE:  B               loc_4A8212
4A81D0:  CMP             R0, #2
4A81D2:  BCC             loc_4A81F6
4A81D4:  LDR.W           R0, [R4,#0x440]; this
4A81D8:  MOVS            R1, #0; bool
4A81DA:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
4A81DE:  CMP             R0, #0
4A81E0:  ITT NE
4A81E2:  LDRNE           R1, [R0,#8]
4A81E4:  CMPNE           R1, #0
4A81E6:  BEQ             loc_4A81F6
4A81E8:  LDRB            R0, [R0,#0x18]
4A81EA:  CMP             R0, #6
4A81EC:  BNE             loc_4A81F6
4A81EE:  MOV             R0, R4; this
4A81F0:  MOVS            R1, #1; unsigned __int8
4A81F2:  BLX             j__ZN4CPed30DropEntityThatThisPedIsHoldingEh; CPed::DropEntityThatThisPedIsHolding(uchar)
4A81F6:  LDR.W           R0, [R4,#0x714]
4A81FA:  CMP             R0, #0x37 ; '7'
4A81FC:  BNE             loc_4A8210
4A81FE:  MOVS            R1, #0x16
4A8200:  MOVS            R0, #0xC8
4A8202:  STR.W           R1, [R4,#0x714]
4A8206:  STR.W           R0, [R4,#0x718]
4A820A:  MOV             R0, R4; this
4A820C:  BLX             j__ZN4CPed20RequestDelayedWeaponEv; CPed::RequestDelayedWeapon(void)
4A8210:  MOVS            R0, #0x16
4A8212:  MOVS            R1, #1
4A8214:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A8218:  LDR             R1, [R0,#0x14]; int
4A821A:  MOV             R0, R4; this
4A821C:  POP.W           {R4,R6,R7,LR}
4A8220:  B.W             _ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
