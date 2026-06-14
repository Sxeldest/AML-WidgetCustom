; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarSlowDragPedOutC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCarb
; Address            : 0x504064 - 0x5040AC
; =========================================================

504064:  PUSH            {R4-R7,LR}
504066:  ADD             R7, SP, #0xC
504068:  PUSH.W          {R8}
50406C:  MOV             R8, R3
50406E:  MOV             R6, R2
504070:  MOV             R5, R1
504072:  MOV             R4, R0
504074:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
504078:  LDR             R0, =(_ZTV28CTaskSimpleCarSlowDragPedOut_ptr - 0x504084)
50407A:  MOVS            R2, #0
50407C:  LDR             R1, [R7,#arg_0]
50407E:  CMP             R5, #0
504080:  ADD             R0, PC; _ZTV28CTaskSimpleCarSlowDragPedOut_ptr
504082:  STRB            R2, [R4,#8]
504084:  STR             R2, [R4,#0xC]
504086:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSlowDragPedOut ...
504088:  STR             R6, [R4,#0x14]
50408A:  STR.W           R8, [R4,#0x18]
50408E:  ADD.W           R0, R0, #8
504092:  STRB            R1, [R4,#0x1C]
504094:  MOV             R1, R4
504096:  STR             R0, [R4]
504098:  STR.W           R5, [R1,#0x10]!; CEntity **
50409C:  ITT NE
50409E:  MOVNE           R0, R5; this
5040A0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5040A4:  MOV             R0, R4
5040A6:  POP.W           {R8}
5040AA:  POP             {R4-R7,PC}
