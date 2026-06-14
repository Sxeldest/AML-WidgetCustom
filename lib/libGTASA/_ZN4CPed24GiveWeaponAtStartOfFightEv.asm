; =========================================================
; Game Engine Function: _ZN4CPed24GiveWeaponAtStartOfFightEv
; Address            : 0x4A7FDE - 0x4A8102
; =========================================================

4A7FDE:  PUSH            {R4,R6,R7,LR}
4A7FE0:  ADD             R7, SP, #8
4A7FE2:  MOV             R4, R0
4A7FE4:  LDRB.W          R0, [R4,#0x448]
4A7FE8:  CMP             R0, #2
4A7FEA:  BEQ             locret_4A7FFE
4A7FEC:  LDRSB.W         R0, [R4,#0x71C]
4A7FF0:  RSB.W           R0, R0, R0,LSL#3
4A7FF4:  ADD.W           R0, R4, R0,LSL#2
4A7FF8:  LDR.W           R0, [R0,#0x5A4]
4A7FFC:  CBZ             R0, loc_4A8000
4A7FFE:  POP             {R4,R6,R7,PC}
4A8000:  LDR.W           R0, [R4,#0x59C]
4A8004:  CMP             R0, #0x16
4A8006:  BHI             locret_4A7FFE
4A8008:  MOVS            R1, #1
4A800A:  LSL.W           R0, R1, R0
4A800E:  MOV             R1, #0x1FF80
4A8016:  TST             R0, R1
4A8018:  BEQ             loc_4A807E
4A801A:  LDRH            R0, [R4,#0x24]
4A801C:  UBFX.W          R0, R0, #4, #6
4A8020:  CMP             R0, #0x18
4A8022:  IT HI
4A8024:  POPHI           {R4,R6,R7,PC}
4A8026:  LDR.W           R0, [R4,#0x714]
4A802A:  CMP             R0, #0x37 ; '7'
4A802C:  BNE             locret_4A7FFE
4A802E:  LDR.W           R0, [R4,#0x440]; this
4A8032:  MOVS            R1, #0; bool
4A8034:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
4A8038:  CMP             R0, #0
4A803A:  ITT NE
4A803C:  LDRNE           R1, [R0,#8]
4A803E:  CMPNE           R1, #0
4A8040:  BEQ             loc_4A8050
4A8042:  LDRB            R0, [R0,#0x18]
4A8044:  CMP             R0, #6
4A8046:  BNE             loc_4A8050
4A8048:  MOV             R0, R4; this
4A804A:  MOVS            R1, #1; unsigned __int8
4A804C:  BLX             j__ZN4CPed30DropEntityThatThisPedIsHoldingEh; CPed::DropEntityThatThisPedIsHolding(uchar)
4A8050:  LDR.W           R0, [R4,#0x714]
4A8054:  CMP             R0, #0x37 ; '7'
4A8056:  BNE             loc_4A806A
4A8058:  MOVS            R1, #0x16
4A805A:  MOVS            R0, #0x32 ; '2'
4A805C:  STR.W           R1, [R4,#0x714]
4A8060:  STR.W           R0, [R4,#0x718]
4A8064:  MOV             R0, R4; this
4A8066:  BLX             j__ZN4CPed20RequestDelayedWeaponEv; CPed::RequestDelayedWeapon(void)
4A806A:  MOVS            R0, #0x16
4A806C:  MOVS            R1, #1
4A806E:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A8072:  LDR             R1, [R0,#0x14]; int
4A8074:  MOV             R0, R4; this
4A8076:  POP.W           {R4,R6,R7,LR}
4A807A:  B.W             _ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
4A807E:  TST.W           R0, #0x520000
4A8082:  BEQ             locret_4A7FFE
4A8084:  LDRH            R0, [R4,#0x24]
4A8086:  AND.W           R1, R0, #0x3F8
4A808A:  CMP             R1, #0xC7
4A808C:  BHI             loc_4A80E4
4A808E:  LDR.W           R1, [R4,#0x714]
4A8092:  CMP             R1, #0x37 ; '7'
4A8094:  BNE             loc_4A80E4
4A8096:  LDR.W           R0, [R4,#0x440]; this
4A809A:  MOVS            R1, #0; bool
4A809C:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
4A80A0:  CMP             R0, #0
4A80A2:  ITT NE
4A80A4:  LDRNE           R1, [R0,#8]
4A80A6:  CMPNE           R1, #0
4A80A8:  BEQ             loc_4A80B8
4A80AA:  LDRB            R0, [R0,#0x18]
4A80AC:  CMP             R0, #6
4A80AE:  BNE             loc_4A80B8
4A80B0:  MOV             R0, R4; this
4A80B2:  MOVS            R1, #1; unsigned __int8
4A80B4:  BLX             j__ZN4CPed30DropEntityThatThisPedIsHoldingEh; CPed::DropEntityThatThisPedIsHolding(uchar)
4A80B8:  LDR.W           R0, [R4,#0x714]
4A80BC:  CMP             R0, #0x37 ; '7'
4A80BE:  BNE             loc_4A80D2
4A80C0:  MOVS            R1, #4
4A80C2:  MOVS            R0, #0x32 ; '2'
4A80C4:  STR.W           R1, [R4,#0x714]
4A80C8:  STR.W           R0, [R4,#0x718]
4A80CC:  MOV             R0, R4; this
4A80CE:  BLX             j__ZN4CPed20RequestDelayedWeaponEv; CPed::RequestDelayedWeapon(void)
4A80D2:  MOVS            R0, #4
4A80D4:  MOVS            R1, #1
4A80D6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A80DA:  LDR             R1, [R0,#0x14]; int
4A80DC:  MOV             R0, R4; this
4A80DE:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
4A80E2:  LDRH            R0, [R4,#0x24]
4A80E4:  UBFX.W          R0, R0, #4, #6
4A80E8:  CMP             R0, #0x18
4A80EA:  BHI.W           locret_4A7FFE
4A80EE:  LDR.W           R0, [R4,#0x714]
4A80F2:  CMP             R0, #0x37 ; '7'
4A80F4:  BNE.W           locret_4A7FFE
4A80F8:  LDR.W           R0, [R4,#0x59C]
4A80FC:  CMP             R0, #2
4A80FE:  BCS             loc_4A802E
4A8100:  B               loc_4A8058
