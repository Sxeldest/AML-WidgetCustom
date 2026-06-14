; =========================================================
; Game Engine Function: _ZN26CEventPotentialWalkIntoPedC2EP4CPedRK7CVectori
; Address            : 0x3742A8 - 0x3742F2
; =========================================================

3742A8:  PUSH            {R4,R6,R7,LR}
3742AA:  ADD             R7, SP, #8
3742AC:  LDR.W           R12, =(_ZTV26CEventPotentialWalkIntoPed_ptr - 0x3742B8)
3742B0:  MOV             R4, R0
3742B2:  MOVS            R0, #0
3742B4:  ADD             R12, PC; _ZTV26CEventPotentialWalkIntoPed_ptr
3742B6:  STR             R0, [R4,#4]
3742B8:  MOV             R0, #0xC80100
3742C0:  LDR.W           R12, [R12]; `vtable for'CEventPotentialWalkIntoPed ...
3742C4:  STR             R0, [R4,#8]
3742C6:  MOVW            R0, #0xFFFF
3742CA:  STRH            R0, [R4,#0xC]
3742CC:  ADD.W           R0, R12, #8
3742D0:  STR             R0, [R4]
3742D2:  VLDR            D16, [R2]
3742D6:  LDR             R0, [R2,#8]
3742D8:  MOV             R2, R4
3742DA:  STR             R0, [R4,#0x18]
3742DC:  MOV             R0, R1; this
3742DE:  STR             R3, [R4,#0x20]
3742E0:  VSTR            D16, [R4,#0x10]
3742E4:  STR.W           R1, [R2,#0x1C]!
3742E8:  MOV             R1, R2; CEntity **
3742EA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3742EE:  MOV             R0, R4
3742F0:  POP             {R4,R6,R7,PC}
