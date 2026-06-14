; =========================================================
; Game Engine Function: _ZNK26CTaskSimpleFightingControl5CloneEv
; Address            : 0x4E9458 - 0x4E94AE
; =========================================================

4E9458:  PUSH            {R4-R7,LR}
4E945A:  ADD             R7, SP, #0xC
4E945C:  PUSH.W          {R8,R9,R11}
4E9460:  MOV             R6, R0
4E9462:  MOVS            R0, #dword_24; this
4E9464:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E9468:  ADD.W           R9, R6, #0xC
4E946C:  MOV             R4, R0
4E946E:  LDM.W           R9, {R5,R8,R9}
4E9472:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E9476:  LDR             R0, =(_ZTV26CTaskSimpleFightingControl_ptr - 0x4E9482)
4E9478:  MOVS            R6, #0
4E947A:  MOV             R1, R4
4E947C:  STRB            R6, [R4,#8]
4E947E:  ADD             R0, PC; _ZTV26CTaskSimpleFightingControl_ptr
4E9480:  STRH            R6, [R4,#0xA]
4E9482:  CMP             R5, #0
4E9484:  LDR             R0, [R0]; `vtable for'CTaskSimpleFightingControl ...
4E9486:  ADD.W           R0, R0, #8
4E948A:  STR             R0, [R4]
4E948C:  STR.W           R5, [R1,#0xC]!; CEntity **
4E9490:  ITT NE
4E9492:  MOVNE           R0, R5; this
4E9494:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E9498:  MOV.W           R0, #0x3F800000
4E949C:  STRD.W          R8, R9, [R4,#0x10]
4E94A0:  STRD.W          R0, R6, [R4,#0x18]
4E94A4:  MOV             R0, R4
4E94A6:  STR             R6, [R4,#0x20]
4E94A8:  POP.W           {R8,R9,R11}
4E94AC:  POP             {R4-R7,PC}
