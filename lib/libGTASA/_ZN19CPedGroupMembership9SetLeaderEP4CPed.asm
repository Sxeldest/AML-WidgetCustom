; =========================================================
; Game Engine Function: _ZN19CPedGroupMembership9SetLeaderEP4CPed
; Address            : 0x4B1FE0 - 0x4B2102
; =========================================================

4B1FE0:  PUSH            {R4-R7,LR}
4B1FE2:  ADD             R7, SP, #0xC
4B1FE4:  PUSH.W          {R11}
4B1FE8:  MOV             R4, R1
4B1FEA:  MOV             R5, R0
4B1FEC:  CBZ             R4, loc_4B2066
4B1FEE:  LDR             R0, [R5,#4]
4B1FF0:  CMP             R0, R4
4B1FF2:  BEQ             loc_4B2046
4B1FF4:  LDR             R0, [R5,#8]
4B1FF6:  CMP             R0, R4
4B1FF8:  BEQ             loc_4B2018
4B1FFA:  LDR             R0, [R5,#0xC]
4B1FFC:  CMP             R0, R4
4B1FFE:  ITT NE
4B2000:  LDRNE           R0, [R5,#0x10]
4B2002:  CMPNE           R0, R4
4B2004:  BEQ             loc_4B2018
4B2006:  LDR             R0, [R5,#0x14]
4B2008:  CMP             R0, R4
4B200A:  ITT NE
4B200C:  LDRNE           R0, [R5,#0x18]
4B200E:  CMPNE           R0, R4
4B2010:  BEQ             loc_4B2018
4B2012:  LDR             R0, [R5,#0x1C]
4B2014:  CMP             R0, R4
4B2016:  BNE             loc_4B2066
4B2018:  LDR             R0, [R5,#8]
4B201A:  CMP             R0, R4
4B201C:  BEQ             loc_4B204A
4B201E:  LDR             R0, [R5,#0xC]
4B2020:  CMP             R0, R4
4B2022:  BEQ             loc_4B204E
4B2024:  LDR             R0, [R5,#0x10]
4B2026:  CMP             R0, R4
4B2028:  BEQ             loc_4B2052
4B202A:  LDR             R0, [R5,#0x14]
4B202C:  CMP             R0, R4
4B202E:  BEQ             loc_4B2056
4B2030:  LDR             R0, [R5,#0x18]
4B2032:  CMP             R0, R4
4B2034:  BEQ             loc_4B205A
4B2036:  LDR             R0, [R5,#0x1C]
4B2038:  CMP             R0, R4
4B203A:  BEQ             loc_4B205E
4B203C:  LDR             R0, [R5,#0x20]
4B203E:  CMP             R0, R4
4B2040:  BNE             loc_4B2066
4B2042:  MOVS            R1, #7
4B2044:  B               loc_4B2060
4B2046:  MOVS            R1, #0
4B2048:  B               loc_4B2060
4B204A:  MOVS            R1, #1
4B204C:  B               loc_4B2060
4B204E:  MOVS            R1, #2
4B2050:  B               loc_4B2060
4B2052:  MOVS            R1, #3
4B2054:  B               loc_4B2060
4B2056:  MOVS            R1, #4
4B2058:  B               loc_4B2060
4B205A:  MOVS            R1, #5
4B205C:  B               loc_4B2060
4B205E:  MOVS            R1, #6; int
4B2060:  MOV             R0, R5; this
4B2062:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B2066:  MOV             R6, R5
4B2068:  LDR.W           R0, [R6,#0x20]!
4B206C:  CMP             R0, #0
4B206E:  ITTT NE
4B2070:  MOVNE           R0, R5; this
4B2072:  MOVNE           R1, #7; int
4B2074:  BLXNE           j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B2078:  MOV             R0, R4; this
4B207A:  MOV             R1, R6; CEntity **
4B207C:  STR             R4, [R6]
4B207E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4B2082:  LDR             R0, [R6]; this
4B2084:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4B2088:  CBNZ            R0, loc_4B2096
4B208A:  LDR             R0, [R6]
4B208C:  MOVS            R1, #0; int
4B208E:  LDR.W           R0, [R0,#0x440]; this
4B2092:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
4B2096:  LDR             R0, [R5]
4B2098:  LDRB.W          R0, [R0,#0x2D0]
4B209C:  CBNZ            R0, loc_4B20B0
4B209E:  LDRSB.W         R0, [R4,#0x71C]
4B20A2:  RSB.W           R0, R0, R0,LSL#3
4B20A6:  ADD.W           R0, R4, R0,LSL#2
4B20AA:  LDR.W           R0, [R0,#0x5A4]
4B20AE:  CBZ             R0, loc_4B20B6
4B20B0:  POP.W           {R11}
4B20B4:  POP             {R4-R7,PC}
4B20B6:  BLX             rand
4B20BA:  UXTH            R0, R0
4B20BC:  VLDR            S2, =0.000015259
4B20C0:  VMOV            S0, R0
4B20C4:  VCVT.F32.S32    S0, S0
4B20C8:  VMUL.F32        S0, S0, S2
4B20CC:  VLDR            S2, =100.0
4B20D0:  VMUL.F32        S0, S0, S2
4B20D4:  VCVT.S32.F32    S0, S0
4B20D8:  VMOV            R0, S0
4B20DC:  CMP             R0, #0x21 ; '!'
4B20DE:  BGE             loc_4B20E6
4B20E0:  LDR             R0, =(MI_GANG_SMOKE_ptr - 0x4B20E6)
4B20E2:  ADD             R0, PC; MI_GANG_SMOKE_ptr
4B20E4:  B               loc_4B20EE
4B20E6:  CMP             R0, #0x41 ; 'A'
4B20E8:  BGT             loc_4B20B0
4B20EA:  LDR             R0, =(MI_GANG_DRINK_ptr - 0x4B20F0)
4B20EC:  ADD             R0, PC; MI_GANG_DRINK_ptr
4B20EE:  LDR             R0, [R0]
4B20F0:  MOVS            R2, #1; unsigned __int8
4B20F2:  LDRH            R1, [R0]; int
4B20F4:  MOV             R0, R4; this
4B20F6:  POP.W           {R11}
4B20FA:  POP.W           {R4-R7,LR}
4B20FE:  B.W             j_j__ZN4CPed21GiveObjectToPedToHoldEih; j_CPed::GiveObjectToPedToHold(int,uchar)
