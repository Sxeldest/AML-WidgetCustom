; =========================================================
; Game Engine Function: _ZN39CTaskComplexGoToPointAndStandStillTimedC2EiRK7CVectorffi
; Address            : 0x51D820 - 0x51D8D0
; =========================================================

51D820:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexGoToPointAndStandStillTimed::CTaskComplexGoToPointAndStandStillTimed(int, CVector const&, float, float, int)'
51D822:  ADD             R7, SP, #0xC
51D824:  PUSH.W          {R11}
51D828:  MOV             R5, R3
51D82A:  MOV             R4, R2
51D82C:  MOV             R6, R1
51D82E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51D832:  LDR             R2, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x51D83C)
51D834:  VLDR            S2, [R0,#0x10]
51D838:  ADD             R2, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
51D83A:  LDRB.W          R3, [R0,#0x24]
51D83E:  STR             R6, [R0,#0xC]
51D840:  LDR             R6, [R2]; `vtable for'CTaskComplexGoToPointAndStandStill ...
51D842:  BIC.W           R2, R3, #0x1B
51D846:  STRB.W          R2, [R0,#0x24]
51D84A:  ADD.W           R3, R6, #8
51D84E:  STR             R3, [R0]
51D850:  VLDR            S4, [R4]
51D854:  LDR             R1, [R7,#arg_4]
51D856:  VCMP.F32        S2, S4
51D85A:  VLDR            S0, [R7,#arg_0]
51D85E:  VMRS            APSR_nzcv, FPSCR
51D862:  BNE             loc_51D896
51D864:  VLDR            S2, [R4,#4]
51D868:  VLDR            S4, [R0,#0x14]
51D86C:  VCMP.F32        S4, S2
51D870:  VMRS            APSR_nzcv, FPSCR
51D874:  BNE             loc_51D896
51D876:  VLDR            S2, [R4,#8]
51D87A:  VLDR            S4, [R0,#0x18]
51D87E:  VCMP.F32        S4, S2
51D882:  VMRS            APSR_nzcv, FPSCR
51D886:  BNE             loc_51D896
51D888:  VLDR            S2, [R0,#0x20]
51D88C:  VCMP.F32        S2, S0
51D890:  VMRS            APSR_nzcv, FPSCR
51D894:  BEQ             loc_51D8B6
51D896:  VMOV            S2, R5
51D89A:  VLDR            D16, [R4]
51D89E:  LDR             R3, [R4,#8]
51D8A0:  ORR.W           R2, R2, #4
51D8A4:  STR             R3, [R0,#0x18]
51D8A6:  VSTR            S2, [R0,#0x1C]
51D8AA:  VSTR            S0, [R0,#0x20]
51D8AE:  STRB.W          R2, [R0,#0x24]
51D8B2:  VSTR            D16, [R0,#0x10]
51D8B6:  LDR             R2, =(_ZTV39CTaskComplexGoToPointAndStandStillTimed_ptr - 0x51D8BE)
51D8B8:  STR             R1, [R0,#0x28]
51D8BA:  ADD             R2, PC; _ZTV39CTaskComplexGoToPointAndStandStillTimed_ptr
51D8BC:  LDR             R1, [R2]; `vtable for'CTaskComplexGoToPointAndStandStillTimed ...
51D8BE:  MOVS            R2, #0
51D8C0:  STRH            R2, [R0,#0x34]
51D8C2:  STRD.W          R2, R2, [R0,#0x2C]
51D8C6:  ADDS            R1, #8
51D8C8:  STR             R1, [R0]
51D8CA:  POP.W           {R11}
51D8CE:  POP             {R4-R7,PC}
