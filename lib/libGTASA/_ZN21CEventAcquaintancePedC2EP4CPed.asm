; =========================================================
; Game Engine Function: _ZN21CEventAcquaintancePedC2EP4CPed
; Address            : 0x375070 - 0x3750AC
; =========================================================

375070:  PUSH            {R4,R6,R7,LR}
375072:  ADD             R7, SP, #8
375074:  MOV             R4, R0
375076:  LDR             R0, =(_ZTV21CEventAcquaintancePed_ptr - 0x375080)
375078:  MOVS            R2, #0
37507A:  CMP             R1, #0
37507C:  ADD             R0, PC; _ZTV21CEventAcquaintancePed_ptr
37507E:  STR             R2, [R4,#4]
375080:  MOV             R2, #0xC80100
375088:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePed ...
37508A:  STR             R2, [R4,#8]
37508C:  MOVW            R2, #0xFFFF
375090:  STRH            R2, [R4,#0xC]
375092:  MOV             R2, R4
375094:  ADD.W           R0, R0, #8
375098:  STR             R0, [R4]
37509A:  STR.W           R1, [R2,#0x10]!
37509E:  ITTT NE
3750A0:  MOVNE           R0, R1; this
3750A2:  MOVNE           R1, R2; CEntity **
3750A4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3750A8:  MOV             R0, R4
3750AA:  POP             {R4,R6,R7,PC}
