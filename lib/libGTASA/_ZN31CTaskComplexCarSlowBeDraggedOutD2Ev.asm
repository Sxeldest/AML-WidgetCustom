; =========================================================
; Game Engine Function: _ZN31CTaskComplexCarSlowBeDraggedOutD2Ev
; Address            : 0x504D80 - 0x504DB4
; =========================================================

504D80:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexCarSlowBeDraggedOut::~CTaskComplexCarSlowBeDraggedOut()'
504D82:  ADD             R7, SP, #8
504D84:  MOV             R4, R0
504D86:  LDR             R0, =(_ZTV31CTaskComplexCarSlowBeDraggedOut_ptr - 0x504D8E)
504D88:  MOV             R1, R4
504D8A:  ADD             R0, PC; _ZTV31CTaskComplexCarSlowBeDraggedOut_ptr
504D8C:  LDR             R2, [R0]; `vtable for'CTaskComplexCarSlowBeDraggedOut ...
504D8E:  LDR.W           R0, [R1,#0xC]!; CEntity **
504D92:  ADDS            R2, #8
504D94:  STR             R2, [R4]
504D96:  CMP             R0, #0
504D98:  IT NE
504D9A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
504D9E:  LDR             R0, [R4,#0x18]; this
504DA0:  CBZ             R0, loc_504DAA
504DA2:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarD2Ev; CTaskUtilityLineUpPedWithCar::~CTaskUtilityLineUpPedWithCar()
504DA6:  BLX             _ZdlPv; operator delete(void *)
504DAA:  MOV             R0, R4; this
504DAC:  POP.W           {R4,R6,R7,LR}
504DB0:  B.W             sub_18EDE8
