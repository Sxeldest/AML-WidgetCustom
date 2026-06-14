; =========================================================
; Game Engine Function: silk_NLSF_VQ_weights_laroia
; Address            : 0xD3728 - 0xD3834
; =========================================================

D3728:  PUSH            {R4-R7,LR}
D372A:  ADD             R7, SP, #0xC
D372C:  PUSH.W          {R8-R11}
D3730:  SUB             SP, SP, #0xC
D3732:  LDRSH.W         R4, [R1]
D3736:  MOV             R8, R0
D3738:  STR             R1, [SP,#0x28+var_20]
D373A:  MOV.W           R0, #0x20000
D373E:  LDRSH.W         R5, [R1,#2]
D3742:  CMP             R4, #1
D3744:  MOV.W           R1, #1
D3748:  MOV             R6, R2
D374A:  IT GT
D374C:  MOVGT           R1, R4
D374E:  MOV.W           R11, #1
D3752:  BLX             sub_108874
D3756:  SUBS            R1, R5, R4
D3758:  MOV             R10, R0
D375A:  CMP             R1, #1
D375C:  MOV.W           R0, #0x20000
D3760:  IT LE
D3762:  MOVLE           R1, R11
D3764:  BLX             sub_108874
D3768:  MOV             R9, R0
D376A:  ADD.W           R0, R9, R10
D376E:  MOVW            R1, #0x7FFF
D3772:  CMP             R0, R1
D3774:  SUB.W           R4, R6, #1
D3778:  IT CS
D377A:  MOVCS           R0, R1
D377C:  MOV             R5, R8
D377E:  CMP             R6, #3
D3780:  STRH            R0, [R5]
D3782:  BLT             loc_D37FE
D3784:  MOV.W           R8, #0
D3788:  STR             R4, [SP,#0x28+var_24]
D378A:  LDR             R0, [SP,#0x28+var_20]
D378C:  MOVS            R2, #1
D378E:  ADD.W           R11, R0, R8,LSL#1
D3792:  LDRSH.W         R0, [R11,#2]
D3796:  LDRSH.W         R1, [R11,#4]
D379A:  SUBS            R1, R1, R0
D379C:  MOV.W           R0, #0x20000
D37A0:  CMP             R1, #1
D37A2:  IT LE
D37A4:  MOVLE           R1, R2
D37A6:  BLX             sub_108874
D37AA:  MOV             R6, R0
D37AC:  ADD.W           R0, R6, R9
D37B0:  MOVW            R4, #0x7FFF
D37B4:  CMP             R0, R4
D37B6:  ADD.W           R10, R5, R8,LSL#1
D37BA:  IT CS
D37BC:  MOVCS           R0, R4
D37BE:  STRH.W          R0, [R10,#2]
D37C2:  LDRSH.W         R0, [R11,#4]
D37C6:  LDRSH.W         R1, [R11,#6]
D37CA:  MOV.W           R11, #1
D37CE:  SUBS            R1, R1, R0
D37D0:  MOV.W           R0, #0x20000
D37D4:  CMP             R1, #1
D37D6:  IT LE
D37D8:  MOVLE           R1, R11
D37DA:  BLX             sub_108874
D37DE:  MOV             R9, R0
D37E0:  ADD.W           R0, R9, R6
D37E4:  CMP             R0, R4
D37E6:  IT CS
D37E8:  MOVCS           R0, R4
D37EA:  STRH.W          R0, [R10,#4]
D37EE:  ADD.W           R0, R8, #3
D37F2:  LDR             R4, [SP,#0x28+var_24]
D37F4:  ADD.W           R8, R8, #2
D37F8:  CMP             R0, R4
D37FA:  BLT             loc_D378A
D37FC:  B               loc_D3802
D37FE:  MOVW            R0, #0x7FFF
D3802:  LDR             R0, [SP,#0x28+var_20]
D3804:  LDRSH.W         R0, [R0,R4,LSL#1]
D3808:  RSB.W           R0, R0, #0x8000
D380C:  CMP             R0, #1
D380E:  IT GT
D3810:  MOVGT           R11, R0
D3812:  MOV.W           R0, #0x20000
D3816:  MOV             R1, R11
D3818:  BLX             sub_108874
D381C:  ADD             R0, R9
D381E:  MOVW            R1, #0x7FFF
D3822:  CMP             R0, R1
D3824:  IT CC
D3826:  MOVCC           R1, R0
D3828:  STRH.W          R1, [R5,R4,LSL#1]
D382C:  ADD             SP, SP, #0xC
D382E:  POP.W           {R8-R11}
D3832:  POP             {R4-R7,PC}
