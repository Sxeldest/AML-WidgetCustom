; =========================================================
; Game Engine Function: _ZN17CInformGroupEvent7ProcessEv
; Address            : 0x3701F4 - 0x3702D6
; =========================================================

3701F4:  PUSH            {R4-R7,LR}
3701F6:  ADD             R7, SP, #0xC
3701F8:  PUSH.W          {R8,R9,R11}
3701FC:  SUB             SP, SP, #0x18
3701FE:  MOV             R4, R0
370200:  LDR             R0, [R4]; this
370202:  CMP             R0, #0
370204:  BEQ             loc_3702B6
370206:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x370212)
370208:  MOV             R6, R4
37020A:  LDR.W           R2, [R6,#0xC]!
37020E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
370210:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
370212:  LDR             R1, [R1]; CPed *
370214:  CMP             R2, R1
370216:  BCS             loc_3702CE
370218:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
37021C:  MOV             R5, R0
37021E:  CBZ             R5, loc_370298
370220:  MOV             R0, R5; this
370222:  BLX             j__ZN10CPedGroups10GetGroupIdEP9CPedGroup; CPedGroups::GetGroupId(CPedGroup *)
370226:  CMP             R0, #0
370228:  BLT             loc_370298
37022A:  LDR             R1, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x370230)
37022C:  ADD             R1, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
37022E:  LDR             R1, [R1]; CPedGroups::ms_activeGroups ...
370230:  LDRB            R0, [R1,R0]
370232:  CBZ             R0, loc_370298
370234:  LDR             R0, [R4,#8]
370236:  LDR.W           R9, [R4]
37023A:  LDR             R1, [R0]
37023C:  LDR             R1, [R1,#0x14]
37023E:  BLX             R1
370240:  LDR             R1, =(_ZTV16CEventGroupEvent_ptr - 0x37024E)
370242:  MOVS            R2, #0
370244:  STR             R2, [SP,#0x30+var_28]
370246:  CMP.W           R9, #0
37024A:  ADD             R1, PC; _ZTV16CEventGroupEvent_ptr
37024C:  STRB.W          R2, [SP,#0x30+var_24]
370250:  LDR             R1, [R1]; `vtable for'CEventGroupEvent ...
370252:  ADD.W           R1, R1, #8
370256:  STR             R1, [SP,#0x30+var_2C]
370258:  STRD.W          R9, R0, [SP,#0x30+var_20]
37025C:  ADD             R0, SP, #0x30+var_2C
37025E:  ADD.W           R8, R0, #0xC
370262:  ITTT NE
370264:  MOVNE           R0, R9; this
370266:  MOVNE           R1, R8; CEntity **
370268:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37026C:  ADD.W           R0, R5, #0x30 ; '0'; this
370270:  ADD             R1, SP, #0x30+var_2C; CEvent *
370272:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
370276:  LDR             R0, =(_ZTV16CEventGroupEvent_ptr - 0x37027C)
370278:  ADD             R0, PC; _ZTV16CEventGroupEvent_ptr
37027A:  LDR             R1, [R0]; `vtable for'CEventGroupEvent ...
37027C:  LDR             R0, [SP,#0x30+var_20]; this
37027E:  ADDS            R1, #8
370280:  STR             R1, [SP,#0x30+var_2C]
370282:  CMP             R0, #0
370284:  ITT NE
370286:  MOVNE           R1, R8; CEntity **
370288:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37028C:  LDR             R0, [SP,#0x30+var_1C]
37028E:  CMP             R0, #0
370290:  ITTT NE
370292:  LDRNE           R1, [R0]
370294:  LDRNE           R1, [R1,#4]
370296:  BLXNE           R1
370298:  LDR             R0, [R4]; this
37029A:  CBZ             R0, loc_3702A6
37029C:  MOV             R1, R4; CEntity **
37029E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3702A2:  MOVS            R0, #0
3702A4:  STR             R0, [R4]
3702A6:  LDR             R0, [R4,#8]
3702A8:  CBZ             R0, loc_3702C8
3702AA:  LDR             R1, [R0]
3702AC:  LDR             R1, [R1,#4]
3702AE:  BLX             R1
3702B0:  MOVS            R0, #0
3702B2:  STR             R0, [R4,#8]
3702B4:  B               loc_3702C8
3702B6:  LDR             R0, [R4,#8]
3702B8:  CBZ             R0, loc_3702C4
3702BA:  LDR             R1, [R0]
3702BC:  LDR             R1, [R1,#4]
3702BE:  BLX             R1
3702C0:  MOVS            R0, #0
3702C2:  STR             R0, [R4,#8]
3702C4:  ADD.W           R6, R4, #0xC
3702C8:  MOV.W           R0, #0xFFFFFFFF
3702CC:  STR             R0, [R6]
3702CE:  ADD             SP, SP, #0x18
3702D0:  POP.W           {R8,R9,R11}
3702D4:  POP             {R4-R7,PC}
