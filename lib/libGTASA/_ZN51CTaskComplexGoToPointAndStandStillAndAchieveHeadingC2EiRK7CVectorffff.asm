; =========================================================
; Game Engine Function: _ZN51CTaskComplexGoToPointAndStandStillAndAchieveHeadingC2EiRK7CVectorffff
; Address            : 0x51E0D0 - 0x51E126
; =========================================================

51E0D0:  PUSH            {R4-R7,LR}
51E0D2:  ADD             R7, SP, #0xC
51E0D4:  PUSH.W          {R11}
51E0D8:  MOV             R4, R3
51E0DA:  MOV             R5, R2
51E0DC:  MOV             R6, R1
51E0DE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51E0E2:  LDR             R1, =(_ZTV51CTaskComplexGoToPointAndStandStillAndAchieveHeading_ptr - 0x51E0EA)
51E0E4:  STR             R6, [R0,#0xC]
51E0E6:  ADD             R1, PC; _ZTV51CTaskComplexGoToPointAndStandStillAndAchieveHeading_ptr
51E0E8:  VLDR            S0, [R7,#arg_0]
51E0EC:  VLDR            S2, [R7,#arg_4]
51E0F0:  LDR             R1, [R1]; `vtable for'CTaskComplexGoToPointAndStandStillAndAchieveHeading ...
51E0F2:  VLDR            S4, [R7,#arg_8]
51E0F6:  ADDS            R1, #8
51E0F8:  STR             R1, [R0]
51E0FA:  VLDR            D16, [R5]
51E0FE:  LDRB.W          R2, [R0,#0x2C]
51E102:  LDR             R1, [R5,#8]
51E104:  STR             R1, [R0,#0x18]
51E106:  ORR.W           R1, R2, #1
51E10A:  VSTR            S0, [R0,#0x1C]
51E10E:  STR             R4, [R0,#0x20]
51E110:  VSTR            S2, [R0,#0x24]
51E114:  VSTR            S4, [R0,#0x28]
51E118:  STRB.W          R1, [R0,#0x2C]
51E11C:  VSTR            D16, [R0,#0x10]
51E120:  POP.W           {R11}
51E124:  POP             {R4-R7,PC}
