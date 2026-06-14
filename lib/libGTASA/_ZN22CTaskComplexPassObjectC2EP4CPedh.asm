; =========================================================
; Game Engine Function: _ZN22CTaskComplexPassObjectC2EP4CPedh
; Address            : 0x51ACD8 - 0x51AD18
; =========================================================

51ACD8:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexPassObject::CTaskComplexPassObject(CPed *, unsigned char)'
51ACDA:  ADD             R7, SP, #0xC
51ACDC:  PUSH.W          {R11}
51ACE0:  MOV             R6, R2
51ACE2:  MOV             R5, R1
51ACE4:  MOV             R4, R0
51ACE6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51ACEA:  LDR             R0, =(_ZTV22CTaskComplexPassObject_ptr - 0x51ACF6)
51ACEC:  MOVS            R1, #0
51ACEE:  STRH            R1, [R4,#0x28]
51ACF0:  CMP             R5, #0
51ACF2:  ADD             R0, PC; _ZTV22CTaskComplexPassObject_ptr
51ACF4:  STRB            R6, [R4,#0x10]
51ACF6:  STRD.W          R1, R1, [R4,#0x20]
51ACFA:  MOV             R1, R4
51ACFC:  LDR             R0, [R0]; `vtable for'CTaskComplexPassObject ...
51ACFE:  ADD.W           R0, R0, #8
51AD02:  STR             R0, [R4]
51AD04:  STR.W           R5, [R1,#0xC]!; CEntity **
51AD08:  ITT NE
51AD0A:  MOVNE           R0, R5; this
51AD0C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51AD10:  MOV             R0, R4
51AD12:  POP.W           {R11}
51AD16:  POP             {R4-R7,PC}
