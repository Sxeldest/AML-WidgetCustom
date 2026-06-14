; =========================================================
; Game Engine Function: _ZN12CMentalState7ProcessERK4CPed
; Address            : 0x4BED60 - 0x4BEEC8
; =========================================================

4BED60:  PUSH            {R4-R7,LR}
4BED62:  ADD             R7, SP, #0xC
4BED64:  PUSH.W          {R11}
4BED68:  SUB             SP, SP, #0x10
4BED6A:  MOV             R5, R1
4BED6C:  MOV             R4, R0
4BED6E:  ADDW            R0, R5, #0x544
4BED72:  VLDR            S0, [R0]
4BED76:  VCVT.U32.F32    S0, S0
4BED7A:  VMOV            R0, S0
4BED7E:  STRH            R0, [R4,#0x10]
4BED80:  LDR.W           R1, [R5,#0x484]
4BED84:  TST.W           R1, #0x100
4BED88:  ITT NE
4BED8A:  LDRNE.W         R2, [R5,#0x590]
4BED8E:  CMPNE           R2, #0
4BED90:  BNE             loc_4BEDAE
4BED92:  LSLS            R1, R1, #0x17
4BED94:  BMI             loc_4BEDCA
4BED96:  LDRH            R1, [R4,#0x12]
4BED98:  CMP             R1, #0x32 ; '2'
4BED9A:  BCC             loc_4BEDE8
4BED9C:  CMP             R0, #9
4BED9E:  BHI             loc_4BEE1A
4BEDA0:  MOV             R6, SP
4BEDA2:  MOV             R0, R6; this
4BEDA4:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4BEDA8:  LDR             R0, =(_ZTV21CEventHealthReallyLow_ptr - 0x4BEDAE)
4BEDAA:  ADD             R0, PC; _ZTV21CEventHealthReallyLow_ptr
4BEDAC:  B               loc_4BEE3E
4BEDAE:  ADDW            R2, R2, #0x4CC
4BEDB2:  ADDW            R1, R5, #0x484
4BEDB6:  VLDR            S0, [R2]
4BEDBA:  VCVT.U32.F32    S0, S0
4BEDBE:  VMOV            R2, S0
4BEDC2:  STRH            R2, [R4,#0x14]
4BEDC4:  LDR             R1, [R1]
4BEDC6:  LSLS            R1, R1, #0x17
4BEDC8:  BPL             loc_4BED96
4BEDCA:  LDRH            R0, [R4,#0x16]
4BEDCC:  CMP.W           R0, #0x258
4BEDD0:  BCC             loc_4BEDFE
4BEDD2:  LDRH            R0, [R4,#0x14]
4BEDD4:  LSRS            R1, R0, #2
4BEDD6:  CMP             R1, #0x4A ; 'J'
4BEDD8:  BHI             loc_4BEE2C
4BEDDA:  MOV             R6, SP
4BEDDC:  MOV             R0, R6; this
4BEDDE:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4BEDE2:  LDR             R0, =(_ZTV21CEventHealthReallyLow_ptr - 0x4BEDE8)
4BEDE4:  ADD             R0, PC; _ZTV21CEventHealthReallyLow_ptr
4BEDE6:  B               loc_4BEE3E
4BEDE8:  CMP             R1, #0xA
4BEDEA:  BCC             loc_4BEE58
4BEDEC:  CMP             R0, #9
4BEDEE:  BHI             loc_4BEE58
4BEDF0:  MOV             R6, SP
4BEDF2:  MOV             R0, R6; this
4BEDF4:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4BEDF8:  LDR             R0, =(_ZTV21CEventHealthReallyLow_ptr - 0x4BEDFE)
4BEDFA:  ADD             R0, PC; _ZTV21CEventHealthReallyLow_ptr
4BEDFC:  B               loc_4BEE3E
4BEDFE:  CMP.W           R0, #0x12C
4BEE02:  BCC             loc_4BEE58
4BEE04:  LDRH            R0, [R4,#0x14]
4BEE06:  LSRS            R0, R0, #2
4BEE08:  CMP             R0, #0x4A ; 'J'
4BEE0A:  BHI             loc_4BEE58
4BEE0C:  MOV             R6, SP
4BEE0E:  MOV             R0, R6; this
4BEE10:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4BEE14:  LDR             R0, =(_ZTV21CEventHealthReallyLow_ptr - 0x4BEE1A)
4BEE16:  ADD             R0, PC; _ZTV21CEventHealthReallyLow_ptr
4BEE18:  B               loc_4BEE3E
4BEE1A:  CMP             R0, #0x31 ; '1'
4BEE1C:  BHI             loc_4BEE58
4BEE1E:  MOV             R6, SP
4BEE20:  MOV             R0, R6; this
4BEE22:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4BEE26:  LDR             R0, =(_ZTV15CEventHealthLow_ptr - 0x4BEE2C)
4BEE28:  ADD             R0, PC; _ZTV15CEventHealthLow_ptr
4BEE2A:  B               loc_4BEE3E
4BEE2C:  LSRS            R0, R0, #3
4BEE2E:  CMP             R0, #0x4A ; 'J'
4BEE30:  BHI             loc_4BEE58
4BEE32:  MOV             R6, SP
4BEE34:  MOV             R0, R6; this
4BEE36:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4BEE3A:  LDR             R0, =(_ZTV15CEventHealthLow_ptr - 0x4BEE40)
4BEE3C:  ADD             R0, PC; _ZTV15CEventHealthLow_ptr
4BEE3E:  LDR             R0, [R0]; `vtable for'CEventHealthLow
4BEE40:  MOV             R1, R6; CEvent *
4BEE42:  MOVS            R2, #0; bool
4BEE44:  ADDS            R0, #8
4BEE46:  STR             R0, [SP,#0x20+var_20]
4BEE48:  LDR.W           R0, [R5,#0x440]
4BEE4C:  ADDS            R0, #0x68 ; 'h'; this
4BEE4E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BEE52:  MOV             R0, R6; this
4BEE54:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
4BEE58:  LDRB            R0, [R4,#1]
4BEE5A:  CMP             R0, #3
4BEE5C:  BHI             loc_4BEE72
4BEE5E:  LDRB            R0, [R4]
4BEE60:  CMP             R0, #7
4BEE62:  BCC             loc_4BEE8A
4BEE64:  MOV             R6, SP
4BEE66:  MOV             R0, R6; this
4BEE68:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4BEE6C:  LDR             R0, =(_ZTV23CEventHighAngerAtPlayer_ptr - 0x4BEE72)
4BEE6E:  ADD             R0, PC; _ZTV23CEventHighAngerAtPlayer_ptr
4BEE70:  B               loc_4BEE9A
4BEE72:  CMP             R0, #6
4BEE74:  BHI             loc_4BEEB4
4BEE76:  LDRB            R0, [R4]
4BEE78:  CMP             R0, #7
4BEE7A:  BCC             loc_4BEEB4
4BEE7C:  MOV             R6, SP
4BEE7E:  MOV             R0, R6; this
4BEE80:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4BEE84:  LDR             R0, =(_ZTV23CEventHighAngerAtPlayer_ptr - 0x4BEE8A)
4BEE86:  ADD             R0, PC; _ZTV23CEventHighAngerAtPlayer_ptr
4BEE88:  B               loc_4BEE9A
4BEE8A:  CMP             R0, #4
4BEE8C:  BCC             loc_4BEEB4
4BEE8E:  MOV             R6, SP
4BEE90:  MOV             R0, R6; this
4BEE92:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4BEE96:  LDR             R0, =(_ZTV22CEventLowAngerAtPlayer_ptr - 0x4BEE9C)
4BEE98:  ADD             R0, PC; _ZTV22CEventLowAngerAtPlayer_ptr
4BEE9A:  LDR             R0, [R0]; `vtable for'CEventLowAngerAtPlayer
4BEE9C:  MOV             R1, R6; CEvent *
4BEE9E:  MOVS            R2, #0; bool
4BEEA0:  ADDS            R0, #8
4BEEA2:  STR             R0, [SP,#0x20+var_20]
4BEEA4:  LDR.W           R0, [R5,#0x440]
4BEEA8:  ADDS            R0, #0x68 ; 'h'; this
4BEEAA:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BEEAE:  MOV             R0, R6; this
4BEEB0:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
4BEEB4:  LDRH            R0, [R4,#0x10]
4BEEB6:  LDRH            R1, [R4,#0x14]
4BEEB8:  LDRB            R2, [R4]
4BEEBA:  STRH            R0, [R4,#0x12]
4BEEBC:  STRH            R1, [R4,#0x16]
4BEEBE:  STRB            R2, [R4,#1]
4BEEC0:  ADD             SP, SP, #0x10
4BEEC2:  POP.W           {R11}
4BEEC6:  POP             {R4-R7,PC}
