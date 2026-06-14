; =========================================================
; Game Engine Function: _ZN7CObjectC2Eib
; Address            : 0x452FAC - 0x452FF0
; =========================================================

452FAC:  PUSH            {R4-R7,LR}; Alternative name is 'CObject::CObject(int, bool)'
452FAE:  ADD             R7, SP, #0xC
452FB0:  PUSH.W          {R11}
452FB4:  MOV             R6, R2
452FB6:  MOV             R5, R1
452FB8:  MOV             R4, R0
452FBA:  BLX             j__ZN9CPhysicalC2Ev_0; CPhysical::CPhysical(void)
452FBE:  LDR             R0, =(_ZTV7CObject_ptr - 0x452FCC)
452FC0:  MOVS            R1, #0
452FC2:  STR.W           R1, [R4,#0x178]
452FC6:  MOV             R1, R5; unsigned int
452FC8:  ADD             R0, PC; _ZTV7CObject_ptr
452FCA:  CMP             R6, #1
452FCC:  LDR             R0, [R0]; `vtable for'CObject ...
452FCE:  ADD.W           R0, R0, #8
452FD2:  STR             R0, [R4]
452FD4:  MOV             R0, R4; this
452FD6:  BNE             loc_452FDE
452FD8:  BLX             j__ZN7CEntity13SetModelIndexEj; CEntity::SetModelIndex(uint)
452FDC:  B               loc_452FE2
452FDE:  BLX             j__ZN7CEntity21SetModelIndexNoCreateEj; CEntity::SetModelIndexNoCreate(uint)
452FE2:  MOV             R0, R4; this
452FE4:  BLX             j__ZN7CObject4InitEv; CObject::Init(void)
452FE8:  MOV             R0, R4
452FEA:  POP.W           {R11}
452FEE:  POP             {R4-R7,PC}
