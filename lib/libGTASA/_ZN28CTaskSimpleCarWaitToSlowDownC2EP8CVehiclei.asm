; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarWaitToSlowDownC2EP8CVehiclei
; Address            : 0x502140 - 0x502178
; =========================================================

502140:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleCarWaitToSlowDown::CTaskSimpleCarWaitToSlowDown(CVehicle *, int)'
502142:  ADD             R7, SP, #0xC
502144:  PUSH.W          {R11}
502148:  MOV             R6, R2
50214A:  MOV             R5, R1
50214C:  MOV             R4, R0
50214E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
502152:  LDR             R0, =(_ZTV28CTaskSimpleCarWaitToSlowDown_ptr - 0x50215E)
502154:  MOV             R1, R4
502156:  STR             R6, [R4,#0x10]
502158:  CMP             R5, #0
50215A:  ADD             R0, PC; _ZTV28CTaskSimpleCarWaitToSlowDown_ptr
50215C:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarWaitToSlowDown ...
50215E:  ADD.W           R0, R0, #8
502162:  STR             R0, [R4]
502164:  STR.W           R5, [R1,#8]!; CEntity **
502168:  ITT NE
50216A:  MOVNE           R0, R5; this
50216C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
502170:  MOV             R0, R4
502172:  POP.W           {R11}
502176:  POP             {R4-R7,PC}
