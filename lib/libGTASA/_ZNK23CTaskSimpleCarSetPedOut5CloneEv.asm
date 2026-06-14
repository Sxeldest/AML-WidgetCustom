; =========================================================
; Game Engine Function: _ZNK23CTaskSimpleCarSetPedOut5CloneEv
; Address            : 0x50703C - 0x5070A2
; =========================================================

50703C:  PUSH            {R4-R7,LR}
50703E:  ADD             R7, SP, #0xC
507040:  PUSH.W          {R8,R9,R11}
507044:  MOV             R4, R0
507046:  MOVS            R0, #off_18; this
507048:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50704C:  LDRD.W          R6, R8, [R4,#8]
507050:  MOV             R5, R0
507052:  LDRB.W          R9, [R4,#0x10]
507056:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50705A:  LDR             R0, =(_ZTV23CTaskSimpleCarSetPedOut_ptr - 0x507068)
50705C:  MOVS            R1, #0
50705E:  STR.W           R8, [R5,#0xC]
507062:  CMP             R6, #0
507064:  ADD             R0, PC; _ZTV23CTaskSimpleCarSetPedOut_ptr
507066:  STRB.W          R9, [R5,#0x10]
50706A:  STRB            R1, [R5,#0x15]
50706C:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedOut ...
50706E:  STR.W           R1, [R5,#0x11]
507072:  MOV             R1, R5
507074:  ADD.W           R0, R0, #8
507078:  STR             R0, [R5]
50707A:  STR.W           R6, [R1,#8]!; CEntity **
50707E:  ITT NE
507080:  MOVNE           R0, R6; this
507082:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
507086:  LDRB            R0, [R4,#0x11]
507088:  STRB            R0, [R5,#0x11]
50708A:  LDRB            R0, [R4,#0x12]
50708C:  STRB            R0, [R5,#0x12]
50708E:  LDRB            R0, [R4,#0x13]
507090:  STRB            R0, [R5,#0x13]
507092:  LDRB            R0, [R4,#0x14]
507094:  STRB            R0, [R5,#0x14]
507096:  LDRB            R0, [R4,#0x15]
507098:  STRB            R0, [R5,#0x15]
50709A:  MOV             R0, R5
50709C:  POP.W           {R8,R9,R11}
5070A0:  POP             {R4-R7,PC}
