; =========================================================
; Game Engine Function: _ZN25CTaskComplexWalkRoundFireC2EiRK7CVectorfS2_
; Address            : 0x50EA1C - 0x50EA5C
; =========================================================

50EA1C:  PUSH            {R4-R7,LR}
50EA1E:  ADD             R7, SP, #0xC
50EA20:  PUSH.W          {R11}
50EA24:  MOV             R4, R3
50EA26:  MOV             R5, R2
50EA28:  MOV             R6, R1
50EA2A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50EA2E:  LDR             R1, =(_ZTV25CTaskComplexWalkRoundFire_ptr - 0x50EA36)
50EA30:  STR             R6, [R0,#0xC]
50EA32:  ADD             R1, PC; _ZTV25CTaskComplexWalkRoundFire_ptr
50EA34:  LDR             R2, [R7,#arg_0]
50EA36:  LDR             R1, [R1]; `vtable for'CTaskComplexWalkRoundFire ...
50EA38:  ADDS            R1, #8
50EA3A:  STR             R1, [R0]
50EA3C:  VLDR            D16, [R5]
50EA40:  LDR             R1, [R5,#8]
50EA42:  STRD.W          R1, R4, [R0,#0x18]
50EA46:  VSTR            D16, [R0,#0x10]
50EA4A:  VLDR            D16, [R2]
50EA4E:  LDR             R1, [R2,#8]
50EA50:  STR             R1, [R0,#0x28]
50EA52:  VSTR            D16, [R0,#0x20]
50EA56:  POP.W           {R11}
50EA5A:  POP             {R4-R7,PC}
