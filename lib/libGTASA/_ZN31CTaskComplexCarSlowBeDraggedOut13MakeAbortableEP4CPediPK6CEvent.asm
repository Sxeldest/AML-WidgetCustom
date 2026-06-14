; =========================================================
; Game Engine Function: _ZN31CTaskComplexCarSlowBeDraggedOut13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x504DF4 - 0x504E6E
; =========================================================

504DF4:  PUSH            {R4-R7,LR}
504DF6:  ADD             R7, SP, #0xC
504DF8:  PUSH.W          {R11}
504DFC:  SUB             SP, SP, #0x10
504DFE:  MOV             R4, R1
504E00:  MOV             R5, R0
504E02:  CMP             R2, #2
504E04:  BNE             loc_504E64
504E06:  LDR             R0, [R5,#8]
504E08:  MOVS            R2, #2
504E0A:  LDR             R1, [R0]
504E0C:  LDR             R6, [R1,#0x1C]
504E0E:  MOV             R1, R4
504E10:  BLX             R6
504E12:  MOV             R0, SP; this
504E14:  LDRD.W          R6, R5, [R5,#0xC]
504E18:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
504E1C:  LDR             R1, =(_ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr - 0x504E26)
504E1E:  CMP             R6, #0
504E20:  STR             R6, [SP,#0x20+var_18]
504E22:  ADD             R1, PC; _ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr
504E24:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarSetPedSlowDraggedOut ...
504E26:  ADD.W           R1, R1, #8
504E2A:  STR             R1, [SP,#0x20+var_20]
504E2C:  STR             R5, [SP,#0x20+var_14]
504E2E:  ADD.W           R5, R0, #8
504E32:  ITTT NE
504E34:  MOVNE           R0, R6; this
504E36:  MOVNE           R1, R5; CEntity **
504E38:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
504E3C:  MOV             R0, SP; this
504E3E:  MOV             R1, R4; CPed *
504E40:  BLX             j__ZN34CTaskSimpleCarSetPedSlowDraggedOut10ProcessPedEP4CPed; CTaskSimpleCarSetPedSlowDraggedOut::ProcessPed(CPed *)
504E44:  LDR             R0, =(_ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr - 0x504E4A)
504E46:  ADD             R0, PC; _ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr
504E48:  LDR             R1, [R0]; `vtable for'CTaskSimpleCarSetPedSlowDraggedOut ...
504E4A:  LDR             R0, [SP,#0x20+var_18]; this
504E4C:  ADDS            R1, #8
504E4E:  STR             R1, [SP,#0x20+var_20]
504E50:  CMP             R0, #0
504E52:  ITT NE
504E54:  MOVNE           R1, R5; CEntity **
504E56:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
504E5A:  MOV             R0, SP; this
504E5C:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
504E60:  MOVS            R0, #1
504E62:  B               loc_504E66
504E64:  MOVS            R0, #0
504E66:  ADD             SP, SP, #0x10
504E68:  POP.W           {R11}
504E6C:  POP             {R4-R7,PC}
