; =========================================================
; Game Engine Function: _ZN15CEventAttractorC2EP9C2dEffectP7CEntityh
; Address            : 0x374BAC - 0x374BEE
; =========================================================

374BAC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventAttractor::CEventAttractor(C2dEffect *, CEntity *, unsigned char)'
374BAE:  ADD             R7, SP, #8
374BB0:  LDR.W           R12, =(_ZTV15CEventAttractor_ptr - 0x374BC8)
374BB4:  MOV             R4, R0
374BB6:  MOVS            R0, #0
374BB8:  CMP             R2, #0
374BBA:  STR             R0, [R4,#4]
374BBC:  MOV             R0, #0xC80100
374BC4:  ADD             R12, PC; _ZTV15CEventAttractor_ptr
374BC6:  STR             R0, [R4,#8]
374BC8:  MOVW            R0, #0xFFFF
374BCC:  STRH            R0, [R4,#0xC]
374BCE:  LDR.W           R0, [R12]; `vtable for'CEventAttractor ...
374BD2:  STR             R1, [R4,#0x10]
374BD4:  MOV             R1, R4
374BD6:  STRB            R3, [R4,#0x18]
374BD8:  ADD.W           R0, R0, #8
374BDC:  STR             R0, [R4]
374BDE:  STR.W           R2, [R1,#0x14]!; CEntity **
374BE2:  ITT NE
374BE4:  MOVNE           R0, R2; this
374BE6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
374BEA:  MOV             R0, R4
374BEC:  POP             {R4,R6,R7,PC}
