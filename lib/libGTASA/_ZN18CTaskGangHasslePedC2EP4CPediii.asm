; =========================================================
; Game Engine Function: _ZN18CTaskGangHasslePedC2EP4CPediii
; Address            : 0x5192DC - 0x519326
; =========================================================

5192DC:  PUSH            {R4-R7,LR}
5192DE:  ADD             R7, SP, #0xC
5192E0:  PUSH.W          {R8}
5192E4:  MOV             R8, R3
5192E6:  MOV             R6, R2
5192E8:  MOV             R5, R1
5192EA:  MOV             R4, R0
5192EC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5192F0:  LDR             R0, =(_ZTV18CTaskGangHasslePed_ptr - 0x5192FC)
5192F2:  MOVS            R2, #0
5192F4:  LDR             R1, [R7,#arg_0]
5192F6:  CMP             R5, #0
5192F8:  ADD             R0, PC; _ZTV18CTaskGangHasslePed_ptr
5192FA:  STRH            R2, [R4,#0x28]
5192FC:  STR             R6, [R4,#0x10]
5192FE:  LDR             R0, [R0]; `vtable for'CTaskGangHasslePed ...
519300:  STRD.W          R8, R1, [R4,#0x14]
519304:  MOV             R1, R4
519306:  STRB            R2, [R4,#0x1C]
519308:  ADD.W           R0, R0, #8
51930C:  STRD.W          R2, R2, [R4,#0x20]
519310:  STR             R0, [R4]
519312:  STR.W           R5, [R1,#0xC]!; CEntity **
519316:  ITT NE
519318:  MOVNE           R0, R5; this
51931A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51931E:  MOV             R0, R4
519320:  POP.W           {R8}
519324:  POP             {R4-R7,PC}
