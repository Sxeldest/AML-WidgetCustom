; =========================================================
; Game Engine Function: sub_E73C0
; Address            : 0xE73C0 - 0xE742A
; =========================================================

E73C0:  PUSH            {R4-R7,LR}
E73C2:  ADD             R7, SP, #0xC
E73C4:  PUSH.W          {R8,R9,R11}
E73C8:  SUB             SP, SP, #0x10
E73CA:  MOV             R9, R0
E73CC:  ADR             R0, dword_E7430
E73CE:  VLD1.64         {D16-D17}, [R0]
E73D2:  MOV             R8, SP
E73D4:  MOVS            R4, #0
E73D6:  MOVS            R5, #0xC
E73D8:  MOVS            R6, #4
E73DA:  VST1.64         {D16-D17}, [R8,#0x28+var_28]
E73DE:  MOV             R0, R9
E73E0:  BL              sub_E71D0
E73E4:  LDR.W           R0, [R9,#0xC]
E73E8:  SUB.W           R1, R0, #0x30 ; '0'
E73EC:  CMP             R1, #0xA
E73EE:  BCC             loc_E740A
E73F0:  SUB.W           R1, R0, #0x41 ; 'A'
E73F4:  CMP             R1, #5
E73F6:  BHI             loc_E73FE
E73F8:  SUB.W           R1, R0, #0x37 ; '7'
E73FC:  B               loc_E740A
E73FE:  SUB.W           R1, R0, #0x61 ; 'a'
E7402:  CMP             R1, #5
E7404:  BHI             loc_E741C
E7406:  SUB.W           R1, R0, #0x57 ; 'W'
E740A:  LSL.W           R0, R1, R5
E740E:  ADD             R4, R0
E7410:  CMP             R6, #0x10
E7412:  BEQ             loc_E7420
E7414:  LDR.W           R5, [R8,R6]
E7418:  ADDS            R6, #4
E741A:  B               loc_E73DE
E741C:  MOV.W           R4, #0xFFFFFFFF
E7420:  MOV             R0, R4
E7422:  ADD             SP, SP, #0x10
E7424:  POP.W           {R8,R9,R11}
E7428:  POP             {R4-R7,PC}
