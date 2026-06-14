; =========================================================
; Game Engine Function: sub_14B5E4
; Address            : 0x14B5E4 - 0x14B670
; =========================================================

14B5E4:  PUSH            {R4-R7,LR}
14B5E6:  ADD             R7, SP, #0xC
14B5E8:  PUSH.W          {R8,R9,R11}
14B5EC:  VPUSH           {D8-D10}
14B5F0:  SUB             SP, SP, #0x10; float
14B5F2:  MOV             R4, R0
14B5F4:  MOVS            R0, #1
14B5F6:  STRB.W          R0, [R4,#0x130]
14B5FA:  MOV             R5, R1
14B5FC:  LDR.W           R1, [R4,#0x12C]
14B600:  MOV             R8, R3
14B602:  LDR             R6, =(off_234970 - 0x14B60A)
14B604:  MOV             R9, R2
14B606:  ADD             R6, PC; off_234970
14B608:  CBZ             R1, loc_14B618
14B60A:  LDR             R0, [R6]; dword_23DEF0
14B60C:  LDR             R0, [R0]
14B60E:  BL              sub_F9A3C
14B612:  MOVS            R0, #0
14B614:  STR.W           R0, [R4,#0x12C]
14B618:  LDR.W           R0, [R4,#0x128]
14B61C:  CBZ             R0, loc_14B664
14B61E:  VMOV            S0, R5
14B622:  LDR             R0, [R6]; dword_23DEF0
14B624:  LDRH            R1, [R4,#0x14]
14B626:  MOVS            R6, #0
14B628:  VCVT.F32.S32    S16, S0
14B62C:  STRD.W          R1, R6, [SP,#0x40+var_3C]; int
14B630:  VMOV            S0, R9
14B634:  LDR             R0, [R0]; int
14B636:  MOVS            R1, #0; int
14B638:  VCVT.F32.S32    S18, S0
14B63C:  VMOV            S0, R8
14B640:  VCVT.F32.S32    S20, S0
14B644:  VMOV            R2, S16; int
14B648:  VMOV            R3, S18; int
14B64C:  VSTR            S20, [SP,#0x40+var_40]
14B650:  BL              sub_F9904
14B654:  VSTR            S16, [R4,#0x134]
14B658:  VSTR            S18, [R4,#0x138]
14B65C:  VSTR            S20, [R4,#0x13C]
14B660:  STR.W           R0, [R4,#0x12C]
14B664:  ADD             SP, SP, #0x10
14B666:  VPOP            {D8-D10}
14B66A:  POP.W           {R8,R9,R11}
14B66E:  POP             {R4-R7,PC}
