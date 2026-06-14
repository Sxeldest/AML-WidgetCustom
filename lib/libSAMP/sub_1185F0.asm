; =========================================================
; Game Engine Function: sub_1185F0
; Address            : 0x1185F0 - 0x118656
; =========================================================

1185F0:  PUSH            {R4,R5,R7,LR}
1185F2:  ADD             R7, SP, #8
1185F4:  VPUSH           {D8-D9}
1185F8:  SUB             SP, SP, #0x18
1185FA:  MOV             R4, R0
1185FC:  LDR             R0, [R0]
1185FE:  MOV             R5, R1
118600:  MOV             R1, R4
118602:  LDR             R2, [R0,#0x14]
118604:  ADD             R0, SP, #0x30+var_20
118606:  BLX             R2
118608:  LDR             R0, [R4]
11860A:  MOV             R1, R4
11860C:  VLDR            S18, [SP,#0x30+var_20]
118610:  LDR             R2, [R0,#0x14]
118612:  ADD             R0, SP, #0x30+var_28
118614:  BLX             R2
118616:  LDR             R0, [R4]
118618:  VMOV            S16, R5
11861C:  VLDR            S0, [SP,#0x30+var_24]
118620:  MOV             R1, R4
118622:  LDR             R2, [R0,#0x14]
118624:  VCMP.F32        S18, S0
118628:  MOV             R0, SP
11862A:  VMRS            APSR_nzcv, FPSCR
11862E:  BLE             loc_118638
118630:  BLX             R2
118632:  VLDR            S0, [SP,#0x30+var_2C]
118636:  B               loc_11863E
118638:  BLX             R2
11863A:  VLDR            S0, [SP,#0x30+var_30]
11863E:  VMUL.F32        S0, S0, S16
118642:  VLDR            S2, =1485.0
118646:  VDIV.F32        S0, S0, S2
11864A:  VMOV            R0, S0
11864E:  ADD             SP, SP, #0x18
118650:  VPOP            {D8-D9}
118654:  POP             {R4,R5,R7,PC}
