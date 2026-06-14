; =========================================================
; Game Engine Function: sub_17A5BE
; Address            : 0x17A5BE - 0x17A718
; =========================================================

17A5BE:  PUSH            {R4-R7,LR}
17A5C0:  ADD             R7, SP, #0xC
17A5C2:  PUSH.W          {R11}
17A5C6:  VPUSH           {D8-D15}
17A5CA:  CMP             R2, #0x10
17A5CC:  BGT.W           loc_17A70E
17A5D0:  VMOV.F32        S28, S2
17A5D4:  ADDS            R6, R2, #1
17A5D6:  VSUB.F32        S2, S7, S1
17A5DA:  MOV             R4, R1
17A5DC:  VMOV.F32        S24, S4
17A5E0:  MOV             R5, R0
17A5E2:  VSUB.F32        S4, S6, S0
17A5E6:  VMOV.F32        S20, S8
17A5EA:  VMOV.F32        S16, S7
17A5EE:  VMOV.F32        S18, S6
17A5F2:  VMOV.F32        S22, S5
17A5F6:  VMUL.F32        S2, S2, S2
17A5FA:  VMOV.F32        S26, S3
17A5FE:  VMOV.F32        S19, #0.5
17A602:  VMLA.F32        S2, S4, S4
17A606:  VSQRT.F32       S2, S2
17A60A:  VSUB.F32        S4, S22, S26
17A60E:  VSUB.F32        S6, S26, S1
17A612:  VSUB.F32        S10, S24, S28
17A616:  VSUB.F32        S12, S28, S0
17A61A:  VSUB.F32        S8, S16, S22
17A61E:  VSUB.F32        S14, S18, S24
17A622:  VMUL.F32        S4, S4, S4
17A626:  VMUL.F32        S6, S6, S6
17A62A:  VMUL.F32        S8, S8, S8
17A62E:  VMLA.F32        S4, S10, S10
17A632:  VMLA.F32        S6, S12, S12
17A636:  VMLA.F32        S8, S14, S14
17A63A:  VSQRT.F32       S4, S4
17A63E:  VSQRT.F32       S6, S6
17A642:  VSQRT.F32       S8, S8
17A646:  VADD.F32        S4, S6, S4
17A64A:  VADD.F32        S4, S8, S4
17A64E:  VMUL.F32        S4, S4, S4
17A652:  VMLS.F32        S4, S2, S2
17A656:  VCMP.F32        S4, S20
17A65A:  VMRS            APSR_nzcv, FPSCR
17A65E:  BLE             loc_17A6FA
17A660:  VADD.F32        S4, S26, S22
17A664:  MOV             R0, R5
17A666:  VADD.F32        S2, S22, S16
17A66A:  MOV             R1, R4
17A66C:  VADD.F32        S6, S1, S26
17A670:  MOV             R2, R6
17A672:  VADD.F32        S8, S24, S18
17A676:  VADD.F32        S10, S28, S24
17A67A:  VADD.F32        S12, S0, S28
17A67E:  VMUL.F32        S4, S4, S19
17A682:  VMUL.F32        S22, S2, S19
17A686:  VMUL.F32        S3, S6, S19
17A68A:  VMUL.F32        S24, S8, S19
17A68E:  VMUL.F32        S6, S10, S19
17A692:  VMUL.F32        S2, S12, S19
17A696:  VADD.F32        S8, S4, S22
17A69A:  VADD.F32        S4, S3, S4
17A69E:  VADD.F32        S10, S6, S24
17A6A2:  VADD.F32        S6, S2, S6
17A6A6:  VMUL.F32        S26, S8, S19
17A6AA:  VMUL.F32        S5, S4, S19
17A6AE:  VMUL.F32        S28, S10, S19
17A6B2:  VMUL.F32        S4, S6, S19
17A6B6:  VADD.F32        S6, S5, S26
17A6BA:  VADD.F32        S8, S4, S28
17A6BE:  VMUL.F32        S30, S6, S19
17A6C2:  VMUL.F32        S17, S8, S19
17A6C6:  VMOV.F32        S8, S20
17A6CA:  VMOV.F32        S7, S30
17A6CE:  VMOV.F32        S6, S17
17A6D2:  BL              sub_17A5BE
17A6D6:  VSUB.F32        S0, S16, S30
17A6DA:  ADDS            R6, #1
17A6DC:  VSUB.F32        S2, S18, S17
17A6E0:  CMP             R6, #0x12
17A6E2:  VMOV.F32        S1, S30
17A6E6:  VMUL.F32        S0, S0, S0
17A6EA:  VMLA.F32        S0, S2, S2
17A6EE:  VSQRT.F32       S2, S0
17A6F2:  VMOV.F32        S0, S17
17A6F6:  BNE             loc_17A60A
17A6F8:  B               loc_17A70E
17A6FA:  LDR             R0, [R4]
17A6FC:  CBZ             R5, loc_17A70A
17A6FE:  ADD.W           R1, R5, R0,LSL#3
17A702:  VSTR            S18, [R1]
17A706:  VSTR            S16, [R1,#4]
17A70A:  ADDS            R0, #1
17A70C:  STR             R0, [R4]
17A70E:  VPOP            {D8-D15}
17A712:  POP.W           {R11}
17A716:  POP             {R4-R7,PC}
