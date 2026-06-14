; =========================================================
; Game Engine Function: sub_13A5C8
; Address            : 0x13A5C8 - 0x13A75C
; =========================================================

13A5C8:  PUSH            {R4-R7,LR}
13A5CA:  ADD             R7, SP, #0xC
13A5CC:  PUSH.W          {R8}
13A5D0:  VPUSH           {D8}
13A5D4:  SUB             SP, SP, #0x10
13A5D6:  MOV             R4, R0
13A5D8:  LDR             R0, =(off_234BC0 - 0x13A5E0)
13A5DA:  LDR             R1, =(off_234BC4 - 0x13A5E4)
13A5DC:  ADD             R0, PC; off_234BC0
13A5DE:  LDR             R2, =(off_234B7C - 0x13A5EC)
13A5E0:  ADD             R1, PC; off_234BC4
13A5E2:  VLDR            S6, [R4,#0x24]
13A5E6:  LDR             R6, [R0]; dword_238F38
13A5E8:  ADD             R2, PC; off_234B7C
13A5EA:  LDR             R5, [R1]; dword_238F50
13A5EC:  LDR.W           R8, [R2]; dword_238EC8
13A5F0:  VLDR            S0, [R6,#4]
13A5F4:  VLDR            S2, [R5]
13A5F8:  VLDR            S8, [R4,#0x28]
13A5FC:  VADD.F32        S0, S2, S0
13A600:  VLDR            S2, [R8]
13A604:  LDR             R0, [R4,#0x6C]
13A606:  VADD.F32        S4, S2, S2
13A60A:  VADD.F32        S10, S2, S0
13A60E:  VSUB.F32        S0, S8, S0
13A612:  VSUB.F32        S6, S6, S4
13A616:  VADD.F32        S2, S2, S10
13A61A:  VSTR            S0, [R0,#0x28]
13A61E:  VSTR            S6, [R0,#0x24]
13A622:  VLDR            S0, [R4,#0x1C]
13A626:  VLDR            S6, [R4,#0x20]
13A62A:  VSUB.F32        S0, S0, S4
13A62E:  LDR             R0, [R4,#0x6C]
13A630:  VSUB.F32        S2, S6, S2
13A634:  VSTR            S0, [R0,#0x1C]
13A638:  VSTR            S2, [R0,#0x20]
13A63C:  LDR             R0, [R4,#0x6C]
13A63E:  LDR             R1, [R0]
13A640:  LDR             R1, [R1,#8]
13A642:  BLX             R1
13A644:  LDR             R0, [R4,#0x6C]
13A646:  ADD             R1, SP, #0x28+var_20
13A648:  VLDR            S0, [R5]
13A64C:  VLDR            S4, [R0,#0x18]
13A650:  VLDR            S2, [R0,#0x14]
13A654:  MOV             R0, R4
13A656:  VADD.F32        S0, S0, S4
13A65A:  VLDR            S4, [R6,#4]
13A65E:  VADD.F32        S0, S0, S4
13A662:  VLDR            S4, [R8]
13A666:  VADD.F32        S6, S4, S4
13A66A:  VADD.F32        S0, S4, S0
13A66E:  VADD.F32        S2, S2, S6
13A672:  VADD.F32        S0, S4, S0
13A676:  VSTR            S2, [SP,#0x28+var_20]
13A67A:  VSTR            S0, [SP,#0x28+var_1C]
13A67E:  BL              sub_12BD38
13A682:  LDR             R1, [R5]
13A684:  LDR             R0, [R4,#0x68]
13A686:  LDR             R2, [SP,#0x28+var_20]
13A688:  STRD.W          R2, R1, [SP,#0x28+var_28]
13A68C:  MOV             R1, SP
13A68E:  BL              sub_12BD38
13A692:  LDR             R0, [R4,#0x68]
13A694:  LDR             R1, [R0]
13A696:  LDR             R1, [R1,#8]
13A698:  BLX             R1
13A69A:  LDRD.W          R0, R1, [R6]
13A69E:  LDR             R2, [R4,#0x70]
13A6A0:  VMOV            D16, R0, R1
13A6A4:  ADDS            R2, #0x14
13A6A6:  VMOV            D17, D16
13A6AA:  VST1.32         {D16-D17}, [R2]!
13A6AE:  STRD.W          R0, R1, [R2]
13A6B2:  LDR             R0, [R4,#0x70]
13A6B4:  LDR             R1, [R0]
13A6B6:  LDR             R1, [R1,#8]
13A6B8:  BLX             R1
13A6BA:  LDR             R0, [R4,#0x68]
13A6BC:  MOVS            R1, #0
13A6BE:  STRD.W          R1, R1, [SP,#0x28+var_28]
13A6C2:  MOV             R1, SP
13A6C4:  BL              sub_12BD92
13A6C8:  LDRD.W          R1, R0, [R4,#0x68]
13A6CC:  VLDR            S0, [R1,#0x10]
13A6D0:  VLDR            S2, [R1,#0x18]
13A6D4:  MOV             R1, SP
13A6D6:  VADD.F32        S0, S0, S2
13A6DA:  VLDR            S2, [R8]
13A6DE:  VSTR            S2, [SP,#0x28+var_28]
13A6E2:  VADD.F32        S0, S2, S0
13A6E6:  VSTR            S0, [SP,#0x28+var_24]
13A6EA:  BL              sub_12BD92
13A6EE:  LDR             R0, [R4,#0x70]
13A6F0:  VMOV.F32        S16, #0.5
13A6F4:  VLDR            S0, [SP,#0x28+var_20]
13A6F8:  MOV             R1, SP
13A6FA:  VLDR            S2, [SP,#0x28+var_1C]
13A6FE:  VLDR            S4, [R0,#0x14]
13A702:  VLDR            S6, [R0,#0x18]
13A706:  VSUB.F32        S0, S0, S4
13A70A:  VSUB.F32        S2, S2, S6
13A70E:  VMUL.F32        S0, S0, S16
13A712:  VSTR            S2, [SP,#0x28+var_24]
13A716:  VSTR            S0, [SP,#0x28+var_28]
13A71A:  BL              sub_12BD92
13A71E:  LDR             R0, [R4,#8]
13A720:  MOV             R1, SP
13A722:  VLDR            S0, [R4,#0x14]
13A726:  VLDR            S2, [R4,#0x18]
13A72A:  VLDR            S4, [R0,#0x14]
13A72E:  VLDR            S6, [R0,#0x18]
13A732:  MOV             R0, R4
13A734:  VSUB.F32        S0, S4, S0
13A738:  VSUB.F32        S2, S6, S2
13A73C:  VMUL.F32        S0, S0, S16
13A740:  VMUL.F32        S2, S2, S16
13A744:  VSTR            S0, [SP,#0x28+var_28]
13A748:  VSTR            S2, [SP,#0x28+var_24]
13A74C:  BL              sub_12BD92
13A750:  ADD             SP, SP, #0x10
13A752:  VPOP            {D8}
13A756:  POP.W           {R8}
13A75A:  POP             {R4-R7,PC}
