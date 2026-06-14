; =========================================================
; Game Engine Function: sub_686A0
; Address            : 0x686A0 - 0x6875A
; =========================================================

686A0:  PUSH            {R4-R7,LR}
686A2:  ADD             R7, SP, #0xC
686A4:  PUSH.W          {R11}
686A8:  LDR             R3, [R2,#4]
686AA:  LDR             R6, [R1,#0x10]
686AC:  LDR             R5, [R2,#8]
686AE:  VMOV            S0, R3
686B2:  LDR             R3, [R1]
686B4:  VMOV            S2, R6
686B8:  LDR             R6, [R1,#0x20]
686BA:  VMOV            S4, R5
686BE:  LDR             R4, [R2]
686C0:  VMUL.F32        S2, S2, S0
686C4:  LDR.W           LR, [R1,#4]
686C8:  VMOV            S6, R6
686CC:  LDR.W           R12, [R1,#8]
686D0:  VMOV            S8, R3
686D4:  LDR             R3, [R1,#0x30]
686D6:  VMLA.F32        S2, S6, S4
686DA:  VMOV            S6, R4
686DE:  LDR             R4, [R1,#0x14]
686E0:  VMLA.F32        S2, S8, S6
686E4:  VMOV            S6, R3
686E8:  VADD.F32        S2, S2, S6
686EC:  VMOV            R3, S2
686F0:  VMOV            S2, R4
686F4:  LDR             R4, [R1,#0x24]
686F6:  VMUL.F32        S0, S0, S2
686FA:  VMOV            S2, R4
686FE:  VMLA.F32        S0, S2, S4
68702:  VMOV            S2, LR
68706:  STR             R3, [R0]
68708:  LDR             R3, [R2]
6870A:  LDR             R6, [R1,#0x18]
6870C:  VMOV            S6, R3
68710:  LDR             R3, [R1,#0x34]
68712:  VMLA.F32        S0, S2, S6
68716:  VMOV            S2, R3
6871A:  VADD.F32        S0, S0, S2
6871E:  VMOV            R3, S0
68722:  VMOV            S0, R6
68726:  STR             R3, [R0,#4]
68728:  LDR             R2, [R2,#4]
6872A:  VMOV            S2, R2
6872E:  LDR             R2, [R1,#0x28]
68730:  LDR             R1, [R1,#0x38]
68732:  VMUL.F32        S0, S0, S2
68736:  VMOV            S2, R2
6873A:  VMLA.F32        S0, S2, S4
6873E:  VMOV            S2, R12
68742:  VMLA.F32        S0, S2, S6
68746:  VMOV            S2, R1
6874A:  VADD.F32        S0, S2, S0
6874E:  VMOV            R1, S0
68752:  STR             R1, [R0,#8]
68754:  POP.W           {R11}
68758:  POP             {R4-R7,PC}
