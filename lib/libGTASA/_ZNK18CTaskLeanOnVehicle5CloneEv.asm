; =========================================================
; Game Engine Function: _ZNK18CTaskLeanOnVehicle5CloneEv
; Address            : 0x51A9F4 - 0x51AA50
; =========================================================

51A9F4:  PUSH            {R4-R7,LR}
51A9F6:  ADD             R7, SP, #0xC
51A9F8:  PUSH.W          {R8}
51A9FC:  MOV             R6, R0
51A9FE:  MOVS            R0, #word_2C; this
51AA00:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51AA04:  LDRD.W          R5, R8, [R6,#8]
51AA08:  MOV             R4, R0
51AA0A:  LDRB            R6, [R6,#0x10]
51AA0C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51AA10:  LDR             R0, =(_ZTV18CTaskLeanOnVehicle_ptr - 0x51AA1E)
51AA12:  MOVS            R1, #0
51AA14:  MOV.W           R2, #0xFFFFFFFF
51AA18:  STRH            R1, [R4,#0x24]
51AA1A:  ADD             R0, PC; _ZTV18CTaskLeanOnVehicle_ptr
51AA1C:  STR.W           R8, [R4,#0xC]
51AA20:  STRB            R6, [R4,#0x10]
51AA22:  CMP             R5, #0
51AA24:  LDR             R0, [R0]; `vtable for'CTaskLeanOnVehicle ...
51AA26:  STRH            R1, [R4,#0x28]
51AA28:  STRB.W          R1, [R4,#0x2A]
51AA2C:  ADD.W           R0, R0, #8
51AA30:  STRD.W          R1, R2, [R4,#0x14]
51AA34:  STRD.W          R1, R1, [R4,#0x1C]
51AA38:  MOV             R1, R4
51AA3A:  STR             R0, [R4]
51AA3C:  STR.W           R5, [R1,#8]!; CEntity **
51AA40:  ITT NE
51AA42:  MOVNE           R0, R5; this
51AA44:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51AA48:  MOV             R0, R4
51AA4A:  POP.W           {R8}
51AA4E:  POP             {R4-R7,PC}
