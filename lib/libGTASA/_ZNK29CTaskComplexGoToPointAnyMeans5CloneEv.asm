; =========================================================
; Game Engine Function: _ZNK29CTaskComplexGoToPointAnyMeans5CloneEv
; Address            : 0x528184 - 0x5281E4
; =========================================================

528184:  PUSH            {R4-R7,LR}
528186:  ADD             R7, SP, #0xC
528188:  PUSH.W          {R8-R10}
52818C:  MOV             R6, R0
52818E:  MOVS            R0, #dword_34; this
528190:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
528194:  LDRD.W          R8, R9, [R6,#0x18]
528198:  MOV             R4, R0
52819A:  LDRD.W          R5, R10, [R6,#0x20]
52819E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5281A2:  LDR             R0, =(_ZTV29CTaskComplexGoToPointAnyMeans_ptr - 0x5281AE)
5281A4:  ADD.W           R1, R4, #0x14
5281A8:  CMP             R5, #0
5281AA:  ADD             R0, PC; _ZTV29CTaskComplexGoToPointAnyMeans_ptr
5281AC:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAnyMeans ...
5281AE:  ADD.W           R0, R0, #8
5281B2:  STR             R0, [R4]
5281B4:  LDR             R0, [R6,#0x14]
5281B6:  VLDR            D16, [R6,#0xC]
5281BA:  STM.W           R1, {R0,R8,R9}
5281BE:  MOV.W           R0, #0
5281C2:  MOV             R1, R4
5281C4:  STRD.W          R10, R0, [R4,#0x24]
5281C8:  STR             R0, [R4,#0x2C]
5281CA:  STRH            R0, [R4,#0x30]
5281CC:  VSTR            D16, [R4,#0xC]
5281D0:  STR.W           R5, [R1,#0x20]!; CEntity **
5281D4:  ITT NE
5281D6:  MOVNE           R0, R5; this
5281D8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5281DC:  MOV             R0, R4
5281DE:  POP.W           {R8-R10}
5281E2:  POP             {R4-R7,PC}
