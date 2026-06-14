; =========================================================
; Game Engine Function: _ZNK35CTaskSimpleAffectSecondaryBehaviour5CloneEv
; Address            : 0x543B94 - 0x543BD2
; =========================================================

543B94:  PUSH            {R4-R7,LR}
543B96:  ADD             R7, SP, #0xC
543B98:  PUSH.W          {R11}
543B9C:  MOV             R4, R0
543B9E:  LDR             R0, [R4,#0x10]
543BA0:  CBZ             R0, loc_543BAC
543BA2:  LDR             R1, [R0]
543BA4:  LDR             R1, [R1,#8]
543BA6:  BLX             R1
543BA8:  MOV             R5, R0
543BAA:  B               loc_543BAE
543BAC:  MOVS            R5, #0
543BAE:  MOVS            R0, #dword_14; this
543BB0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
543BB4:  LDR             R6, [R4,#0xC]
543BB6:  LDRB            R4, [R4,#8]
543BB8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
543BBC:  LDR             R1, =(_ZTV35CTaskSimpleAffectSecondaryBehaviour_ptr - 0x543BC4)
543BBE:  STRB            R4, [R0,#8]
543BC0:  ADD             R1, PC; _ZTV35CTaskSimpleAffectSecondaryBehaviour_ptr
543BC2:  STRD.W          R6, R5, [R0,#0xC]
543BC6:  LDR             R1, [R1]; `vtable for'CTaskSimpleAffectSecondaryBehaviour ...
543BC8:  ADDS            R1, #8
543BCA:  STR             R1, [R0]
543BCC:  POP.W           {R11}
543BD0:  POP             {R4-R7,PC}
