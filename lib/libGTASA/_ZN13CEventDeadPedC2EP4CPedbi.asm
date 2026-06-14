; =========================================================
; Game Engine Function: _ZN13CEventDeadPedC2EP4CPedbi
; Address            : 0x373AE0 - 0x373B24
; =========================================================

373AE0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventDeadPed::CEventDeadPed(CPed *, bool, int)'
373AE2:  ADD             R7, SP, #8
373AE4:  LDR.W           R12, =(_ZTV13CEventDeadPed_ptr - 0x373AFC)
373AE8:  MOV             R4, R0
373AEA:  MOVS            R0, #0
373AEC:  CMP             R1, #0
373AEE:  STR             R0, [R4,#4]
373AF0:  MOV             R0, #0xC80100
373AF8:  ADD             R12, PC; _ZTV13CEventDeadPed_ptr
373AFA:  STR             R0, [R4,#8]
373AFC:  MOVW            R0, #0xFFFF
373B00:  STRH            R0, [R4,#0xC]
373B02:  LDR.W           R0, [R12]; `vtable for'CEventDeadPed ...
373B06:  STRB            R2, [R4,#0x14]
373B08:  MOV             R2, R4
373B0A:  STR             R3, [R4,#0x18]
373B0C:  ADD.W           R0, R0, #8
373B10:  STR             R0, [R4]
373B12:  STR.W           R1, [R2,#0x10]!
373B16:  ITTT NE
373B18:  MOVNE           R0, R1; this
373B1A:  MOVNE           R1, R2; CEntity **
373B1C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
373B20:  MOV             R0, R4
373B22:  POP             {R4,R6,R7,PC}
