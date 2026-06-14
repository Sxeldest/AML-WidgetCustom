; =========================================================
; Game Engine Function: _ZNK23CTaskComplexAvoidEntity5CloneEv
; Address            : 0x5280B4 - 0x528126
; =========================================================

5280B4:  PUSH            {R4-R7,LR}
5280B6:  ADD             R7, SP, #0xC
5280B8:  PUSH.W          {R8}
5280BC:  MOV             R6, R0
5280BE:  MOVS            R0, #dword_54; this
5280C0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5280C4:  MOV             R4, R0
5280C6:  LDRD.W          R8, R5, [R6,#0xC]
5280CA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5280CE:  LDR             R0, =(_ZTV23CTaskComplexAvoidEntity_ptr - 0x5280DC)
5280D0:  MOV             R1, R4
5280D2:  STR             R5, [R4,#0x10]
5280D4:  CMP.W           R8, #0
5280D8:  ADD             R0, PC; _ZTV23CTaskComplexAvoidEntity_ptr
5280DA:  LDR             R0, [R0]; `vtable for'CTaskComplexAvoidEntity ...
5280DC:  ADD.W           R0, R0, #8
5280E0:  STR             R0, [R4]
5280E2:  STR.W           R8, [R1,#0xC]!; CEntity **
5280E6:  VLDR            D16, [R6,#0x20]
5280EA:  LDR             R0, [R6,#0x28]
5280EC:  STR             R0, [R4,#0x28]
5280EE:  VSTR            D16, [R4,#0x20]
5280F2:  VLDR            D16, [R6,#0x20]
5280F6:  LDR             R0, [R6,#0x28]
5280F8:  STR             R0, [R4,#0x34]
5280FA:  MOV.W           R0, #0
5280FE:  STRH.W          R0, [R4,#0x4C]
528102:  VSTR            D16, [R4,#0x2C]
528106:  LDRB.W          R2, [R4,#0x50]
52810A:  STRD.W          R0, R0, [R4,#0x44]
52810E:  AND.W           R0, R2, #0xFE
528112:  STRB.W          R0, [R4,#0x50]
528116:  ITT NE
528118:  MOVNE           R0, R8; this
52811A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
52811E:  MOV             R0, R4
528120:  POP.W           {R8}
528124:  POP             {R4-R7,PC}
