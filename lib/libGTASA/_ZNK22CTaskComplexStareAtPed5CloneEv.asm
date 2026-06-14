; =========================================================
; Game Engine Function: _ZNK22CTaskComplexStareAtPed5CloneEv
; Address            : 0x5198DC - 0x519958
; =========================================================

5198DC:  PUSH            {R4-R7,LR}
5198DE:  ADD             R7, SP, #0xC
5198E0:  PUSH.W          {R8,R9,R11}
5198E4:  MOV             R5, R0
5198E6:  LDRB.W          R0, [R5,#0x20]
5198EA:  CBZ             R0, loc_519900
5198EC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5198F6)
5198EE:  LDRD.W          R1, R2, [R5,#0x18]
5198F2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5198F4:  ADD             R1, R2; unsigned int
5198F6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5198F8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5198FA:  SUB.W           R8, R1, R0
5198FE:  B               loc_519904
519900:  LDR.W           R8, [R5,#0x14]
519904:  MOVS            R0, #word_28; this
519906:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51990A:  MOV             R4, R0
51990C:  LDRD.W          R6, R5, [R5,#0xC]
519910:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
519914:  LDR             R0, =(_ZTV22CTaskComplexStareAtPed_ptr - 0x519922)
519916:  MOV.W           R9, #0
51991A:  STRH.W          R9, [R4,#0x20]
51991E:  ADD             R0, PC; _ZTV22CTaskComplexStareAtPed_ptr
519920:  STR             R6, [R4,#0xC]
519922:  STRD.W          R9, R9, [R4,#0x18]
519926:  LDR             R0, [R0]; `vtable for'CTaskComplexStareAtPed ...
519928:  ADDS            R0, #8
51992A:  STR             R0, [R4]
51992C:  MOV             R0, R5; CEntity *
51992E:  BLX             j__Z20IsEntityPointerValidP7CEntity; IsEntityPointerValid(CEntity *)
519932:  ADD.W           R1, R4, #0x10; CEntity **
519936:  CMP             R0, #1
519938:  BNE             loc_519944
51993A:  MOV             R0, R5; this
51993C:  STR             R5, [R1]
51993E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
519942:  B               loc_519948
519944:  STR.W           R9, [R1]
519948:  MOVS            R0, #0
51994A:  STR.W           R8, [R4,#0x14]
51994E:  STRH            R0, [R4,#0x24]
519950:  MOV             R0, R4
519952:  POP.W           {R8,R9,R11}
519956:  POP             {R4-R7,PC}
