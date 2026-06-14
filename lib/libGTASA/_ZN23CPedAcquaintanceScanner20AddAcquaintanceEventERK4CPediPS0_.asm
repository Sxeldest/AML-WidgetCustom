; =========================================================
; Game Engine Function: _ZN23CPedAcquaintanceScanner20AddAcquaintanceEventERK4CPediPS0_
; Address            : 0x4BCBA8 - 0x4BCD22
; =========================================================

4BCBA8:  PUSH            {R4-R7,LR}
4BCBAA:  ADD             R7, SP, #0xC
4BCBAC:  PUSH.W          {R8}
4BCBB0:  SUB             SP, SP, #0x28
4BCBB2:  MOV             R6, R3
4BCBB4:  MOV             R4, R1
4BCBB6:  CMP             R2, #4; switch 5 cases
4BCBB8:  BHI             def_4BCBBA; jumptable 004BCBBA default case
4BCBBA:  TBB.W           [PC,R2]; switch jump
4BCBBE:  DCB 3; jump table for switch statement
4BCBBF:  DCB 0xB
4BCBC0:  DCB 0x13
4BCBC1:  DCB 0x21
4BCBC2:  DCB 0x3E
4BCBC3:  ALIGN 2
4BCBC4:  MOV             R8, SP; jumptable 004BCBBA case 0
4BCBC6:  MOV             R1, R6; CPed *
4BCBC8:  MOV             R0, R8; this
4BCBCA:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4BCBCE:  LDR             R0, =(_ZTV28CEventAcquaintancePedRespect_ptr - 0x4BCBD4)
4BCBD0:  ADD             R0, PC; _ZTV28CEventAcquaintancePedRespect_ptr
4BCBD2:  B               loc_4BCC0E
4BCBD4:  MOV             R8, SP; jumptable 004BCBBA case 1
4BCBD6:  MOV             R1, R6; CPed *
4BCBD8:  MOV             R0, R8; this
4BCBDA:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4BCBDE:  LDR             R0, =(_ZTV25CEventAcquaintancePedLike_ptr - 0x4BCBE4)
4BCBE0:  ADD             R0, PC; _ZTV25CEventAcquaintancePedLike_ptr
4BCBE2:  B               loc_4BCC0E
4BCBE4:  LDR.W           R0, [R6,#0x59C]; jumptable 004BCBBA case 2
4BCBE8:  CMP             R0, #6
4BCBEA:  BNE             def_4BCBBA; jumptable 004BCBBA default case
4BCBEC:  MOV             R8, SP
4BCBEE:  MOV             R1, R6; CPed *
4BCBF0:  MOV             R0, R8; this
4BCBF2:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4BCBF6:  LDR             R0, =(_ZTV13CEventSeenCop_ptr - 0x4BCBFC)
4BCBF8:  ADD             R0, PC; _ZTV13CEventSeenCop_ptr
4BCBFA:  B               loc_4BCC0E
4BCBFC:  MOVS            R5, #0; jumptable 004BCBBA default case
4BCBFE:  B               loc_4BCC30
4BCC00:  MOV             R8, SP; jumptable 004BCBBA case 3
4BCC02:  MOV             R1, R6; CPed *
4BCC04:  MOV             R0, R8; this
4BCC06:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4BCC0A:  LDR             R0, =(_ZTV28CEventAcquaintancePedDislike_ptr - 0x4BCC10)
4BCC0C:  ADD             R0, PC; _ZTV28CEventAcquaintancePedDislike_ptr
4BCC0E:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHate
4BCC10:  ADDS            R0, #8
4BCC12:  STR             R0, [SP,#0x38+var_38]
4BCC14:  LDR.W           R0, [R4,#0x440]
4BCC18:  MOV             R1, R8; CEvent *
4BCC1A:  MOVS            R2, #0; bool
4BCC1C:  ADDS            R0, #0x68 ; 'h'; this
4BCC1E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BCC22:  MOV             R5, R0
4BCC24:  MOV             R0, R8; this
4BCC26:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
4BCC2A:  CMP             R5, #0
4BCC2C:  IT NE
4BCC2E:  MOVNE           R5, #1
4BCC30:  MOV             R0, R5
4BCC32:  ADD             SP, SP, #0x28 ; '('
4BCC34:  POP.W           {R8}
4BCC38:  POP             {R4-R7,PC}
4BCC3A:  LDR.W           R0, [R4,#0x440]; jumptable 004BCBBA case 4
4BCC3E:  MOV             R1, R6; CEntity *
4BCC40:  MOVS            R2, #0; bool
4BCC42:  BLX             j__ZNK16CPedIntelligence22CanSeeEntityWithLightsEPK7CEntityb; CPedIntelligence::CanSeeEntityWithLights(CEntity const*,bool)
4BCC46:  VMOV            S0, R0
4BCC4A:  VCMPE.F32       S0, #0.0
4BCC4E:  VMRS            APSR_nzcv, FPSCR
4BCC52:  BLE             loc_4BCC8E
4BCC54:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4BCC5A)
4BCC56:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4BCC58:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
4BCC5A:  LDRB            R0, [R0,#(byte_79680A - 0x7967F4)]; this
4BCC5C:  CBZ             R0, loc_4BCCD8
4BCC5E:  MOV             R0, SP; this
4BCC60:  MOV             R1, R6; CPed *
4BCC62:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4BCC66:  LDR             R0, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x4BCC6C)
4BCC68:  ADD             R0, PC; _ZTV25CEventAcquaintancePedHate_ptr
4BCC6A:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHate ...
4BCC6C:  ADDS            R0, #8
4BCC6E:  STR             R0, [SP,#0x38+var_38]
4BCC70:  MOV             R0, R4; this
4BCC72:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4BCC76:  CMP             R0, #0
4BCC78:  BEQ             loc_4BCCFC
4BCC7A:  MOVW            R1, #0x5DE
4BCC7E:  ADDS            R0, #0x30 ; '0'; this
4BCC80:  STRH.W          R1, [SP,#0x38+var_2E]
4BCC84:  MOV             R1, SP; CEvent *
4BCC86:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4BCC8A:  MOV             R5, R0
4BCC8C:  B               loc_4BCD1A
4BCC8E:  VCMPE.F32       S0, #0.0
4BCC92:  MOVS            R5, #0
4BCC94:  VMRS            APSR_nzcv, FPSCR
4BCC98:  BGE             loc_4BCC30
4BCC9A:  MOV             R8, SP
4BCC9C:  MOV             R1, R6; CPed *
4BCC9E:  MOV             R0, R8; this
4BCCA0:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4BCCA4:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BCCAC)
4BCCA6:  LDR             R0, =(_ZTV33CEventAcquaintancePedHateBadlyLit_ptr - 0x4BCCB0)
4BCCA8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BCCAA:  STR             R5, [SP,#0x38+var_18]
4BCCAC:  ADD             R0, PC; _ZTV33CEventAcquaintancePedHateBadlyLit_ptr
4BCCAE:  STRD.W          R5, R5, [SP,#0x38+var_20]
4BCCB2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BCCB4:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHateBadlyLit ...
4BCCB6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BCCB8:  ADDS            R0, #8
4BCCBA:  STR             R0, [SP,#0x38+var_38]
4BCCBC:  STR             R1, [SP,#0x38+var_24]
4BCCBE:  LDR             R0, [R6,#0x14]
4BCCC0:  ADD.W           R1, R0, #0x30 ; '0'
4BCCC4:  CMP             R0, #0
4BCCC6:  IT EQ
4BCCC8:  ADDEQ           R1, R6, #4
4BCCCA:  VLDR            D16, [R1]
4BCCCE:  LDR             R0, [R1,#8]
4BCCD0:  STR             R0, [SP,#0x38+var_18]
4BCCD2:  VSTR            D16, [SP,#0x38+var_20]
4BCCD6:  B               loc_4BCC14
4BCCD8:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
4BCCDC:  CMP             R0, #1
4BCCDE:  BNE             loc_4BCCEC
4BCCE0:  MOV             R0, R4; this
4BCCE2:  MOV             R1, R6; CPed *
4BCCE4:  BLX             j__ZN23CPedAcquaintanceScanner13CanJoinLARiotERK4CPedS2_; CPedAcquaintanceScanner::CanJoinLARiot(CPed const&,CPed const&)
4BCCE8:  CMP             R0, #1
4BCCEA:  BEQ             loc_4BCC5E
4BCCEC:  MOV             R8, SP
4BCCEE:  MOV             R1, R6; CPed *
4BCCF0:  MOV             R0, R8; this
4BCCF2:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4BCCF6:  LDR             R0, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x4BCCFC)
4BCCF8:  ADD             R0, PC; _ZTV25CEventAcquaintancePedHate_ptr
4BCCFA:  B               loc_4BCC0E
4BCCFC:  MOV.W           R0, #0x3E8
4BCD00:  MOV             R1, SP; CEvent *
4BCD02:  STRH.W          R0, [SP,#0x38+var_2E]
4BCD06:  MOVS            R2, #0; bool
4BCD08:  LDR.W           R0, [R4,#0x440]
4BCD0C:  ADDS            R0, #0x68 ; 'h'; this
4BCD0E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BCD12:  MOV             R5, R0
4BCD14:  CMP             R5, #0
4BCD16:  IT NE
4BCD18:  MOVNE           R5, #1
4BCD1A:  MOV             R0, SP; this
4BCD1C:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
4BCD20:  B               loc_4BCC30
