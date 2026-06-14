; =========================================================
; Game Engine Function: _ZNK39CTaskComplexGoToPointAndStandStillTimed5CloneEv
; Address            : 0x527670 - 0x527732
; =========================================================

527670:  PUSH            {R4-R7,LR}
527672:  ADD             R7, SP, #0xC
527674:  PUSH.W          {R8}
527678:  VPUSH           {D8}
52767C:  MOV             R4, R0
52767E:  MOVS            R0, #dword_38; this
527680:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
527684:  LDR.W           R8, [R4,#0x28]
527688:  VLDR            S16, [R4,#0x20]
52768C:  LDR             R6, [R4,#0x1C]
52768E:  LDR             R5, [R4,#0xC]
527690:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
527694:  LDR             R1, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x52769C)
527696:  STR             R5, [R0,#0xC]
527698:  ADD             R1, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
52769A:  LDRB.W          R2, [R0,#0x24]
52769E:  VLDR            S0, [R0,#0x10]
5276A2:  LDR             R1, [R1]; `vtable for'CTaskComplexGoToPointAndStandStill ...
5276A4:  ADDS            R1, #8
5276A6:  STR             R1, [R0]
5276A8:  BIC.W           R1, R2, #0x1B
5276AC:  STRB.W          R1, [R0,#0x24]
5276B0:  VLDR            S2, [R4,#0x10]
5276B4:  VCMP.F32        S0, S2
5276B8:  VMRS            APSR_nzcv, FPSCR
5276BC:  BNE             loc_5276F0
5276BE:  VLDR            S0, [R4,#0x14]
5276C2:  VLDR            S2, [R0,#0x14]
5276C6:  VCMP.F32        S2, S0
5276CA:  VMRS            APSR_nzcv, FPSCR
5276CE:  BNE             loc_5276F0
5276D0:  VLDR            S0, [R4,#0x18]
5276D4:  VLDR            S2, [R0,#0x18]
5276D8:  VCMP.F32        S2, S0
5276DC:  VMRS            APSR_nzcv, FPSCR
5276E0:  BNE             loc_5276F0
5276E2:  VLDR            S0, [R0,#0x20]
5276E6:  VCMP.F32        S0, S16
5276EA:  VMRS            APSR_nzcv, FPSCR
5276EE:  BEQ             loc_527712
5276F0:  ADD.W           R2, R4, #0x10
5276F4:  ADD.W           R3, R0, #0x10
5276F8:  ORR.W           R1, R1, #4
5276FC:  VLDR            D16, [R2]
527700:  LDR             R2, [R2,#8]
527702:  STR             R2, [R3,#8]
527704:  VSTR            D16, [R3]
527708:  VSTR            S16, [R0,#0x20]
52770C:  STR             R6, [R0,#0x1C]
52770E:  STRB.W          R1, [R0,#0x24]
527712:  LDR             R1, =(_ZTV39CTaskComplexGoToPointAndStandStillTimed_ptr - 0x52771E)
527714:  MOVS            R2, #0
527716:  STR.W           R8, [R0,#0x28]
52771A:  ADD             R1, PC; _ZTV39CTaskComplexGoToPointAndStandStillTimed_ptr
52771C:  STRH            R2, [R0,#0x34]
52771E:  STRD.W          R2, R2, [R0,#0x2C]
527722:  LDR             R1, [R1]; `vtable for'CTaskComplexGoToPointAndStandStillTimed ...
527724:  ADDS            R1, #8
527726:  STR             R1, [R0]
527728:  VPOP            {D8}
52772C:  POP.W           {R8}
527730:  POP             {R4-R7,PC}
