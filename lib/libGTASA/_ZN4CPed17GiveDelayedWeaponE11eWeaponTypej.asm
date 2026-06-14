; =========================================================
; Game Engine Function: _ZN4CPed17GiveDelayedWeaponE11eWeaponTypej
; Address            : 0x4A5026 - 0x4A5082
; =========================================================

4A5026:  PUSH            {R4-R7,LR}
4A5028:  ADD             R7, SP, #0xC
4A502A:  PUSH.W          {R11}
4A502E:  MOV             R5, R0
4A5030:  MOV             R4, R2
4A5032:  LDR.W           R0, [R5,#0x59C]
4A5036:  MOV             R6, R1
4A5038:  CMP             R0, #2
4A503A:  BCC             loc_4A505E
4A503C:  LDR.W           R0, [R5,#0x440]; this
4A5040:  MOVS            R1, #0; bool
4A5042:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
4A5046:  CMP             R0, #0
4A5048:  ITT NE
4A504A:  LDRNE           R1, [R0,#8]
4A504C:  CMPNE           R1, #0
4A504E:  BEQ             loc_4A505E
4A5050:  LDRB            R0, [R0,#0x18]
4A5052:  CMP             R0, #6
4A5054:  BNE             loc_4A505E
4A5056:  MOV             R0, R5; this
4A5058:  MOVS            R1, #1; unsigned __int8
4A505A:  BLX             j__ZN4CPed30DropEntityThatThisPedIsHoldingEh; CPed::DropEntityThatThisPedIsHolding(uchar)
4A505E:  LDR.W           R0, [R5,#0x714]
4A5062:  CMP             R0, #0x37 ; '7'
4A5064:  ITT NE
4A5066:  POPNE.W         {R11}
4A506A:  POPNE           {R4-R7,PC}
4A506C:  STR.W           R6, [R5,#0x714]
4A5070:  MOV             R0, R5; this
4A5072:  STR.W           R4, [R5,#0x718]
4A5076:  POP.W           {R11}
4A507A:  POP.W           {R4-R7,LR}
4A507E:  B.W             _ZN4CPed20RequestDelayedWeaponEv; CPed::RequestDelayedWeapon(void)
