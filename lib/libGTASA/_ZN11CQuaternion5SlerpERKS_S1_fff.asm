; =========================================================
; Game Engine Function: _ZN11CQuaternion5SlerpERKS_S1_fff
; Address            : 0x4505E4 - 0x4506F4
; =========================================================

4505E4:  PUSH            {R4-R7,LR}
4505E6:  ADD             R7, SP, #0xC
4505E8:  PUSH.W          {R8}
4505EC:  VPUSH           {D8-D10}
4505F0:  VMOV            S20, R3
4505F4:  MOV             R5, R2
4505F6:  MOV             R6, R1
4505F8:  MOV             R4, R0
4505FA:  VCMP.F32        S20, #0.0
4505FE:  VMRS            APSR_nzcv, FPSCR
450602:  BNE             loc_450616
450604:  LDR             R0, [R5]
450606:  STR             R0, [R4]
450608:  LDR             R0, [R5,#4]
45060A:  STR             R0, [R4,#4]
45060C:  LDR             R0, [R5,#8]
45060E:  STR             R0, [R4,#8]
450610:  LDR             R0, [R5,#0xC]
450612:  STR             R0, [R4,#0xC]
450614:  B               loc_4506EA
450616:  VLDR            S0, =1.5708
45061A:  VLDR            S18, [R7,#arg_4]
45061E:  VCMPE.F32       S20, S0
450622:  VLDR            S16, [R7,#arg_0]
450626:  VMOV.F32        S0, #1.0
45062A:  VMRS            APSR_nzcv, FPSCR
45062E:  BLE             loc_45065C
450630:  VLDR            S2, =3.1416
450634:  VSUB.F32        S0, S0, S18
450638:  VSUB.F32        S20, S2, S20
45063C:  VMUL.F32        S0, S20, S0
450640:  VMOV            R0, S0; x
450644:  BLX             sinf
450648:  VMUL.F32        S0, S20, S18
45064C:  MOV             R8, R0
45064E:  VMOV            R0, S0; x
450652:  BLX             sinf
450656:  EOR.W           R0, R0, #0x80000000
45065A:  B               loc_45067A
45065C:  VSUB.F32        S0, S0, S18
450660:  VMUL.F32        S0, S0, S20
450664:  VMOV            R0, S0; x
450668:  BLX             sinf
45066C:  VMUL.F32        S0, S20, S18
450670:  MOV             R8, R0
450672:  VMOV            R0, S0; x
450676:  BLX             sinf
45067A:  VMOV            S0, R0
45067E:  VLDR            S4, [R5]
450682:  VMOV            S2, R8
450686:  VLDR            S6, [R6]
45068A:  VMUL.F32        S0, S0, S16
45068E:  VMUL.F32        S2, S2, S16
450692:  VMUL.F32        S4, S0, S4
450696:  VMUL.F32        S6, S2, S6
45069A:  VADD.F32        S4, S6, S4
45069E:  VSTR            S4, [R4]
4506A2:  VLDR            S4, [R5,#4]
4506A6:  VLDR            S6, [R6,#4]
4506AA:  VMUL.F32        S4, S0, S4
4506AE:  VMUL.F32        S6, S2, S6
4506B2:  VADD.F32        S4, S6, S4
4506B6:  VSTR            S4, [R4,#4]
4506BA:  VLDR            S4, [R5,#8]
4506BE:  VLDR            S6, [R6,#8]
4506C2:  VMUL.F32        S4, S0, S4
4506C6:  VMUL.F32        S6, S2, S6
4506CA:  VADD.F32        S4, S6, S4
4506CE:  VSTR            S4, [R4,#8]
4506D2:  VLDR            S4, [R5,#0xC]
4506D6:  VLDR            S6, [R6,#0xC]
4506DA:  VMUL.F32        S0, S0, S4
4506DE:  VMUL.F32        S2, S2, S6
4506E2:  VADD.F32        S0, S2, S0
4506E6:  VSTR            S0, [R4,#0xC]
4506EA:  VPOP            {D8-D10}
4506EE:  POP.W           {R8}
4506F2:  POP             {R4-R7,PC}
