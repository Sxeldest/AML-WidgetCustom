; =========================================================
; Game Engine Function: _ZNK23CTaskComplexFallToDeath5CloneEv
; Address            : 0x532F80 - 0x532FD6
; =========================================================

532F80:  PUSH            {R4-R7,LR}
532F82:  ADD             R7, SP, #0xC
532F84:  PUSH.W          {R11}
532F88:  MOV             R4, R0
532F8A:  MOVS            R0, #dword_24; this
532F8C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
532F90:  LDRB.W          R5, [R4,#0x20]
532F94:  LDRB.W          R6, [R4,#0x21]
532F98:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
532F9C:  LDR             R1, =(_ZTV23CTaskComplexFallToDeath_ptr - 0x532FA6)
532F9E:  MOV.W           R3, #0xFFFFFFFF
532FA2:  ADD             R1, PC; _ZTV23CTaskComplexFallToDeath_ptr
532FA4:  LDR             R1, [R1]; `vtable for'CTaskComplexFallToDeath ...
532FA6:  ADDS            R1, #8
532FA8:  STR             R1, [R0]
532FAA:  LDRB.W          R1, [R0,#0x21]
532FAE:  VLDR            D16, [R4,#0xC]
532FB2:  LDR             R2, [R4,#0x14]
532FB4:  AND.W           R1, R1, #0xE0
532FB8:  STRD.W          R2, R3, [R0,#0x14]
532FBC:  AND.W           R2, R6, #0x18
532FC0:  STR             R3, [R0,#0x1C]
532FC2:  ORRS            R1, R2
532FC4:  STRB.W          R5, [R0,#0x20]
532FC8:  STRB.W          R1, [R0,#0x21]
532FCC:  VSTR            D16, [R0,#0xC]
532FD0:  POP.W           {R11}
532FD4:  POP             {R4-R7,PC}
