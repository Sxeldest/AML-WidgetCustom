; =========================================================
; Game Engine Function: sub_11E598
; Address            : 0x11E598 - 0x11E70C
; =========================================================

11E598:  PUSH            {R4-R7,LR}
11E59A:  ADD             R7, SP, #0xC
11E59C:  PUSH.W          {R8-R10}
11E5A0:  LDRSH.W         R6, [R0,#6]
11E5A4:  CMP             R6, #0
11E5A6:  BEQ.W           loc_11E706
11E5AA:  MOV             R10, R0
11E5AC:  LDRH            R0, [R0,#4]
11E5AE:  MOV             R9, R1
11E5B0:  LSLS            R0, R0, #0x1E
11E5B2:  BMI             loc_11E668
11E5B4:  CMP.W           R9, #0
11E5B8:  MOV             R8, R9
11E5BA:  BNE             loc_11E5C8
11E5BC:  ADD.W           R0, R6, R6,LSL#2
11E5C0:  LSLS            R0, R0, #1; size
11E5C2:  BLX             malloc
11E5C6:  MOV             R8, R0
11E5C8:  LDR.W           R0, [R10,#8]
11E5CC:  CMP             R6, #1
11E5CE:  BLT.W           loc_11E6DC
11E5D2:  VMOV.F32        S0, #0.5
11E5D6:  VLDR            S2, =4096.0
11E5DA:  VLDR            S4, =60.0
11E5DE:  MOVS            R1, #0
11E5E0:  MOV             R2, R0
11E5E2:  MOV             R3, R8
11E5E4:  LDR.W           LR, [R2]
11E5E8:  VMOV.F32        S1, S0
11E5EC:  LDR             R6, [R2,#0x10]
11E5EE:  ADDS            R1, #1
11E5F0:  LDR.W           R12, [R2,#4]
11E5F4:  VMOV            S6, LR
11E5F8:  LDR             R4, [R2,#8]
11E5FA:  VMOV            S12, R6
11E5FE:  LDR             R5, [R2,#0xC]
11E600:  VMUL.F32        S6, S6, S2
11E604:  ADDS            R2, #0x14
11E606:  VMOV            S14, R12
11E60A:  VMLA.F32        S1, S12, S4
11E60E:  VMOV            S8, R4
11E612:  VMUL.F32        S12, S14, S2
11E616:  VMUL.F32        S8, S8, S2
11E61A:  VMOV            S10, R5
11E61E:  VCVT.S32.F32    S6, S6
11E622:  VMUL.F32        S10, S10, S2
11E626:  VCVT.S32.F32    S14, S1
11E62A:  VCVT.S32.F32    S12, S12
11E62E:  VCVT.S32.F32    S8, S8
11E632:  VMOV            R6, S6
11E636:  VCVT.S32.F32    S10, S10
11E63A:  STRH.W          R6, [R3],#0xA
11E63E:  VMOV            R6, S12
11E642:  STRH.W          R6, [R3,#-8]
11E646:  VMOV            R6, S8
11E64A:  STRH.W          R6, [R3,#-6]
11E64E:  VMOV            R6, S10
11E652:  STRH.W          R6, [R3,#-4]
11E656:  VMOV            R6, S14
11E65A:  STRH.W          R6, [R3,#-2]
11E65E:  LDRSH.W         R6, [R10,#6]
11E662:  CMP             R1, R6
11E664:  BLT             loc_11E5E4
11E666:  B               loc_11E6DC
11E668:  CMP.W           R9, #0
11E66C:  MOV             R8, R9
11E66E:  BNE             loc_11E678
11E670:  LSLS            R0, R6, #4; size
11E672:  BLX             malloc
11E676:  MOV             R8, R0
11E678:  LDR.W           R0, [R10,#8]; ptr
11E67C:  CMP             R6, #1
11E67E:  BLT             loc_11E6DC
11E680:  VMOV.F32        S0, #0.5
11E684:  VLDR            S2, =1024.0
11E688:  VLDR            S4, =60.0
11E68C:  MOVS            R1, #0
11E68E:  VLDR            D16, =9.44473538e21
11E692:  MOV             R2, R0
11E694:  MOV             R3, R8
11E696:  LDR             R5, [R2,#0x14]
11E698:  MOV             R6, R2
11E69A:  VLD1.8          {D18-D19}, [R6]!
11E69E:  ADDS            R2, #0x18
11E6A0:  VCVT.S32.F32    Q9, Q9, #0xC
11E6A4:  ADDS            R1, #1
11E6A6:  LDR             R6, [R6]
11E6A8:  VMOV            S6, R5
11E6AC:  VLD1.8          {D17}, [R2]!
11E6B0:  VMUL.F32        S13, S6, S2
11E6B4:  VMOV.F32        S12, S0
11E6B8:  VMOV            S8, R6
11E6BC:  VMOVN.I32       D18, Q9
11E6C0:  VMLA.F32        S12, S8, S4
11E6C4:  VMUL.F32        D7, D17, D16
11E6C8:  VCVT.S32.F32    Q10, Q3
11E6CC:  VMOVN.I32       D19, Q10
11E6D0:  VST1.8          {D18-D19}, [R3]!
11E6D4:  LDRSH.W         R6, [R10,#6]
11E6D8:  CMP             R1, R6
11E6DA:  BLT             loc_11E696
11E6DC:  LDRH.W          R1, [R10,#4]
11E6E0:  LSLS            R2, R1, #0x1C
11E6E2:  BMI             loc_11E6EC
11E6E4:  BLX             free
11E6E8:  LDRH.W          R1, [R10,#4]
11E6EC:  ORR.W           R0, R1, #0xC
11E6F0:  STR.W           R8, [R10,#8]
11E6F4:  ORR.W           R1, R1, #4
11E6F8:  CMP.W           R9, #0
11E6FC:  IT EQ
11E6FE:  BICEQ.W         R0, R1, #8
11E702:  STRH.W          R0, [R10,#4]
11E706:  POP.W           {R8-R10}
11E70A:  POP             {R4-R7,PC}
