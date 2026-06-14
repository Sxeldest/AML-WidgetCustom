; =========================================================
; Game Engine Function: _ZN15CTaskSimpleFall11ProcessFallEP4CPed
; Address            : 0x52B8D0 - 0x52BA3A
; =========================================================

52B8D0:  PUSH            {R4-R7,LR}
52B8D2:  ADD             R7, SP, #0xC
52B8D4:  PUSH.W          {R11}
52B8D8:  MOV             R4, R1
52B8DA:  MOV             R0, R4; this
52B8DC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52B8E0:  LDR.W           R3, [R4,#0x484]
52B8E4:  MOVS            R2, #0x10
52B8E6:  LDR.W           R1, [R4,#0x488]
52B8EA:  CMP             R0, #0
52B8EC:  MOVT            R2, #0x8000
52B8F0:  IT NE
52B8F2:  TSTNE           R1, R2
52B8F4:  BEQ             loc_52B918
52B8F6:  ANDS.W          R0, R3, #1
52B8FA:  BNE             loc_52B918
52B8FC:  LDR             R0, [R4,#0x18]
52B8FE:  MOVS            R1, #0x10
52B900:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
52B904:  MOV             R6, R0
52B906:  CBZ             R6, loc_52B956
52B908:  LDRSH.W         R0, [R6,#0x2C]
52B90C:  BIC.W           R0, R0, #1
52B910:  CMP             R0, #0x7C ; '|'
52B912:  BNE             loc_52B956
52B914:  MOV             R5, R6
52B916:  B               loc_52B9DA
52B918:  AND.W           R0, R3, #3
52B91C:  TEQ.W           R0, #1
52B920:  BNE             loc_52BA1E
52B922:  ANDS.W          R0, R1, R2
52B926:  BEQ             loc_52BA1E
52B928:  LDR             R0, [R4,#0x18]
52B92A:  MOVS            R1, #0x7C ; '|'
52B92C:  ADDW            R5, R4, #0x484
52B930:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52B934:  CBNZ            R0, loc_52B940
52B936:  LDR             R0, [R4,#0x18]
52B938:  MOVS            R1, #0x7D ; '}'
52B93A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52B93E:  CBZ             R0, loc_52B9B0
52B940:  LDR             R1, [R5,#4]
52B942:  BIC.W           R1, R1, #0x10
52B946:  STR             R1, [R5,#4]
52B948:  MOVS            R1, #0x40400000
52B94E:  STR             R1, [R0,#0x24]
52B950:  POP.W           {R11}
52B954:  POP             {R4-R7,PC}
52B956:  LDR             R0, [R4,#0x18]
52B958:  MOVS            R1, #0x7C ; '|'
52B95A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52B95E:  MOV             R5, R0
52B960:  CBNZ            R5, loc_52B9DA
52B962:  LDR             R0, [R4,#0x18]
52B964:  MOVS            R1, #0x7D ; '}'
52B966:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52B96A:  CBZ             R6, loc_52B9D0
52B96C:  CMP             R0, #0
52B96E:  MOV             R5, R0
52B970:  BNE             loc_52B9D8
52B972:  LDR             R1, [R6,#0x14]
52B974:  VLDR            S0, =0.8
52B978:  VLDR            S2, [R1,#0x10]
52B97C:  VMUL.F32        S0, S2, S0
52B980:  VLDR            S2, [R6,#0x20]
52B984:  VCMPE.F32       S2, S0
52B988:  VMRS            APSR_nzcv, FPSCR
52B98C:  BLE             loc_52B9D6
52B98E:  LDRB.W          R1, [R6,#0x2F]
52B992:  MOV.W           R3, #0x41000000
52B996:  LDR             R0, [R4,#0x18]
52B998:  LSLS            R1, R1, #0x1C
52B99A:  MOV.W           R1, #0
52B99E:  ITE MI
52B9A0:  MOVMI           R2, #0x7D ; '}'
52B9A2:  MOVPL           R2, #0x7C ; '|'
52B9A4:  POP.W           {R11}
52B9A8:  POP.W           {R4-R7,LR}
52B9AC:  B.W             sub_197F88
52B9B0:  LDR             R0, [R4,#0x18]
52B9B2:  MOVS            R1, #0x10
52B9B4:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
52B9B8:  CBZ             R0, loc_52BA1E
52B9BA:  LDRB.W          R0, [R0,#0x2E]
52B9BE:  LSLS            R0, R0, #0x1F
52B9C0:  ITTT EQ
52B9C2:  LDREQ           R0, [R5,#4]
52B9C4:  BICEQ.W         R0, R0, #0x10
52B9C8:  STREQ           R0, [R5,#4]
52B9CA:  POP.W           {R11}
52B9CE:  POP             {R4-R7,PC}
52B9D0:  MOV             R5, R0
52B9D2:  CBNZ            R0, loc_52B9DA
52B9D4:  B               loc_52BA1E
52B9D6:  MOVS            R5, #0
52B9D8:  CBZ             R0, loc_52BA1E
52B9DA:  VLDR            S0, =0.3
52B9DE:  VLDR            S2, [R5,#0x18]
52B9E2:  VCMPE.F32       S2, S0
52B9E6:  VMRS            APSR_nzcv, FPSCR
52B9EA:  BLE             loc_52BA1E
52B9EC:  VLDR            S0, [R5,#0x1C]
52B9F0:  VCMPE.F32       S0, #0.0
52B9F4:  VMRS            APSR_nzcv, FPSCR
52B9F8:  BLT             loc_52BA1E
52B9FA:  VLDR            S0, =0.667
52B9FE:  VLDR            S2, [R5,#0x20]
52BA02:  VCMPE.F32       S2, S0
52BA06:  VMRS            APSR_nzcv, FPSCR
52BA0A:  BLE             loc_52BA1E
52BA0C:  VLDR            S4, [R5,#0x28]
52BA10:  VSUB.F32        S2, S2, S4
52BA14:  VCMPE.F32       S2, S0
52BA18:  VMRS            APSR_nzcv, FPSCR
52BA1C:  BLE             loc_52BA24
52BA1E:  POP.W           {R11}
52BA22:  POP             {R4-R7,PC}
52BA24:  MOV             R0, R5; this
52BA26:  MOVS            R1, #0; float
52BA28:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
52BA2C:  LDRH            R0, [R5,#0x2E]
52BA2E:  ORR.W           R0, R0, #1
52BA32:  STRH            R0, [R5,#0x2E]
52BA34:  POP.W           {R11}
52BA38:  POP             {R4-R7,PC}
