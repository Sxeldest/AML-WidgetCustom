; =========================================================
; Game Engine Function: _ZNK24CTaskComplexEvasiveCower5CloneEv
; Address            : 0x50FEDC - 0x50FF24
; =========================================================

50FEDC:  PUSH            {R4-R7,LR}
50FEDE:  ADD             R7, SP, #0xC
50FEE0:  PUSH.W          {R11}
50FEE4:  MOV             R6, R0
50FEE6:  MOVS            R0, #dword_1C; this
50FEE8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50FEEC:  MOV             R4, R0
50FEEE:  LDR             R5, [R6,#0x18]
50FEF0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50FEF4:  LDR             R0, =(_ZTV24CTaskComplexEvasiveCower_ptr - 0x50FEFE)
50FEF6:  MOV             R1, R4
50FEF8:  CMP             R5, #0
50FEFA:  ADD             R0, PC; _ZTV24CTaskComplexEvasiveCower_ptr
50FEFC:  LDR             R0, [R0]; `vtable for'CTaskComplexEvasiveCower ...
50FEFE:  ADD.W           R0, R0, #8
50FF02:  STR             R0, [R4]
50FF04:  VLDR            D16, [R6,#0xC]
50FF08:  LDR             R0, [R6,#0x14]
50FF0A:  STR             R0, [R4,#0x14]
50FF0C:  VSTR            D16, [R4,#0xC]
50FF10:  STR.W           R5, [R1,#0x18]!; CEntity **
50FF14:  ITT NE
50FF16:  MOVNE           R0, R5; this
50FF18:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50FF1C:  MOV             R0, R4
50FF1E:  POP.W           {R11}
50FF22:  POP             {R4-R7,PC}
