; =========================================================
; Game Engine Function: _ZN7CObjectC2Ev
; Address            : 0x452C1C - 0x452C44
; =========================================================

452C1C:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CObject::CObject(void)'
452C1E:  ADD             R7, SP, #8
452C20:  MOV             R4, R0
452C22:  BLX             j__ZN9CPhysicalC2Ev_0; CPhysical::CPhysical(void)
452C26:  LDR             R0, =(_ZTV7CObject_ptr - 0x452C32)
452C28:  MOVS            R5, #0
452C2A:  STR.W           R5, [R4,#0x178]
452C2E:  ADD             R0, PC; _ZTV7CObject_ptr
452C30:  LDR             R0, [R0]; `vtable for'CObject ...
452C32:  ADDS            R0, #8
452C34:  STR             R0, [R4]
452C36:  MOV             R0, R4; this
452C38:  BLX             j__ZN7CObject4InitEv; CObject::Init(void)
452C3C:  MOV             R0, R4
452C3E:  STRB.W          R5, [R4,#0x140]
452C42:  POP             {R4,R5,R7,PC}
