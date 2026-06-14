; =========================================================
; Game Engine Function: _Z22NvQuatFromEulerReversePffff
; Address            : 0x27969C - 0x2797DA
; =========================================================

27969C:  PUSH            {R4-R7,LR}
27969E:  ADD             R7, SP, #0xC
2796A0:  PUSH.W          {R8}
2796A4:  VPUSH           {D8-D15}
2796A8:  VMOV.F32        S16, #0.5
2796AC:  MOV             R8, R0
2796AE:  VMOV            S0, R2
2796B2:  MOV             R5, R1
2796B4:  VMUL.F32        S0, S0, S16
2796B8:  VMOV            R6, S0
2796BC:  VMOV            S0, R3
2796C0:  VMUL.F32        S18, S0, S16
2796C4:  MOV             R0, R6; x
2796C6:  BLX             cosf
2796CA:  MOV             R4, R0
2796CC:  MOV             R0, R6; x
2796CE:  BLX             sinf
2796D2:  VMOV            S0, R5
2796D6:  MOV             R6, R0
2796D8:  VMUL.F32        S0, S0, S16
2796DC:  VMOV            R5, S0
2796E0:  MOV             R0, R5; x
2796E2:  BLX             sinf
2796E6:  VMOV            S20, R0
2796EA:  VLDR            S16, =0.0
2796EE:  VMOV            S24, R6
2796F2:  MOV             R0, R5; x
2796F4:  VMUL.F32        S22, S20, S16
2796F8:  VMOV            S26, R4
2796FC:  VMUL.F32        S28, S24, S16
279700:  VMUL.F32        S30, S24, S20
279704:  BLX             cosf
279708:  VMOV            R4, S18
27970C:  VMUL.F32        S0, S26, S16
279710:  VSUB.F32        S2, S16, S22
279714:  VMUL.F32        S6, S26, S20
279718:  VSUB.F32        S8, S16, S28
27971C:  VMOV            S4, R0
279720:  VMUL.F32        S10, S26, S4
279724:  VMUL.F32        S12, S4, S16
279728:  VADD.F32        S14, S0, S30
27972C:  VADD.F32        S0, S0, S2
279730:  VMUL.F32        S4, S24, S4
279734:  VADD.F32        S2, S8, S6
279738:  VSUB.F32        S18, S10, S28
27973C:  VADD.F32        S20, S12, S14
279740:  VADD.F32        S24, S4, S0
279744:  VADD.F32        S26, S12, S2
279748:  MOV             R0, R4; x
27974A:  BLX             sinf
27974E:  VMOV            S28, R0
279752:  MOV             R0, R4; x
279754:  VSUB.F32        S18, S18, S22
279758:  VMUL.F32        S22, S20, S16
27975C:  VMUL.F32        S30, S28, S24
279760:  VMUL.F32        S17, S28, S26
279764:  BLX             cosf
279768:  VMOV            S0, R0
27976C:  VMUL.F32        S2, S24, S16
279770:  VMUL.F32        S4, S26, S16
279774:  VMUL.F32        S6, S0, S18
279778:  VMUL.F32        S8, S18, S16
27977C:  VSUB.F32        S10, S22, S30
279780:  VSUB.F32        S12, S17, S22
279784:  VMUL.F32        S14, S28, S18
279788:  VMUL.F32        S3, S0, S24
27978C:  VSUB.F32        S1, S2, S4
279790:  VSUB.F32        S2, S6, S2
279794:  VMUL.F32        S6, S0, S26
279798:  VADD.F32        S10, S8, S10
27979C:  VADD.F32        S8, S8, S12
2797A0:  VMUL.F32        S0, S0, S20
2797A4:  VADD.F32        S12, S14, S1
2797A8:  VSUB.F32        S2, S2, S4
2797AC:  VMUL.F32        S14, S28, S20
2797B0:  VADD.F32        S4, S6, S10
2797B4:  VADD.F32        S6, S3, S8
2797B8:  VADD.F32        S0, S0, S12
2797BC:  VSUB.F32        S2, S2, S14
2797C0:  VSTR            S6, [R8]
2797C4:  VSTR            S4, [R8,#4]
2797C8:  VSTR            S0, [R8,#8]
2797CC:  VSTR            S2, [R8,#0xC]
2797D0:  VPOP            {D8-D15}
2797D4:  POP.W           {R8}
2797D8:  POP             {R4-R7,PC}
