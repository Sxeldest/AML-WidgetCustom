; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwim25ProcessSwimmingResistanceEP4CPed
; Address            : 0x53B9B8 - 0x53BFAA
; =========================================================

53B9B8:  PUSH            {R4-R7,LR}
53B9BA:  ADD             R7, SP, #0xC
53B9BC:  PUSH.W          {R8-R11}
53B9C0:  SUB             SP, SP, #4
53B9C2:  VPUSH           {D8-D15}
53B9C6:  SUB             SP, SP, #0x10
53B9C8:  MOV             R5, R0
53B9CA:  VLDR            S16, =0.001
53B9CE:  LDRSH.W         R0, [R5,#0xA]
53B9D2:  MOV             R8, R1
53B9D4:  CMP             R0, #5; switch 6 cases
53B9D6:  BHI.W           def_53B9EA; jumptable 0053B9EA default case
53B9DA:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53B9E2)
53B9DE:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53B9E0:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
53B9E2:  VLDR            S0, [R1]
53B9E6:  VMAX.F32        D9, D0, D8
53B9EA:  TBH.W           [PC,R0,LSL#1]; switch jump
53B9EE:  DCW 6; jump table for switch statement
53B9F0:  DCW 6
53B9F2:  DCW 6
53B9F4:  DCW 0x87
53B9F6:  DCW 0xD3
53B9F8:  DCW 0x134
53B9FA:  LDR.W           R0, [R8,#0x18]; jumptable 0053B9EA cases 0-2
53B9FE:  MOVW            R1, #0x137
53BA02:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53BA06:  MOV             R6, R0
53BA08:  LDR.W           R0, [R8,#0x18]
53BA0C:  MOV.W           R1, #0x138
53BA10:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53BA14:  CBZ             R6, loc_53BA2C
53BA16:  VMOV.F32        S2, #1.0
53BA1A:  VLDR            S4, [R6,#0x18]
53BA1E:  VLDR            S0, =0.4
53BA22:  VMUL.F32        S0, S4, S0
53BA26:  VSUB.F32        S2, S2, S4
53BA2A:  B               loc_53BA34
53BA2C:  VMOV.F32        S2, #1.0
53BA30:  VLDR            S0, =0.0
53BA34:  STR             R5, [SP,#0x70+var_68]
53BA36:  CMP             R0, #0
53BA38:  ITTTT NE
53BA3A:  VLDRNE          S4, =0.2
53BA3E:  VLDRNE          S6, [R0,#0x18]
53BA42:  VMULNE.F32      S4, S6, S4
53BA46:  VSUBNE.F32      S2, S2, S6
53BA4A:  MOV             R4, R8
53BA4C:  IT NE
53BA4E:  VADDNE.F32      S0, S0, S4
53BA52:  VMOV.F32        S4, #1.0
53BA56:  LDR.W           R0, [R4,#0x14]!
53BA5A:  VLDR            S6, [R0]
53BA5E:  VLDR            S8, [R0,#4]
53BA62:  VLDR            S10, [R0,#8]
53BA66:  VDIV.F32        S4, S4, S18
53BA6A:  VLDR            S12, [R0,#0x10]
53BA6E:  VLDR            S14, [R0,#0x14]
53BA72:  VLDR            S1, [R0,#0x18]
53BA76:  ADD.W           R0, R4, #0x4D0
53BA7A:  VLDR            S18, =0.0
53BA7E:  VLDR            S5, [R0]
53BA82:  ADDW            R0, R4, #0x4D4
53BA86:  VMAX.F32        D1, D1, D9
53BA8A:  VMUL.F32        S10, S5, S10
53BA8E:  VLDR            S7, [R0]
53BA92:  VMUL.F32        S8, S5, S8
53BA96:  VMUL.F32        S6, S5, S6
53BA9A:  VLDR            S5, =0.55
53BA9E:  VMUL.F32        S1, S7, S1
53BAA2:  VMUL.F32        S12, S7, S12
53BAA6:  VMUL.F32        S14, S7, S14
53BAAA:  VMUL.F32        S2, S2, S5
53BAAE:  VMUL.F32        S10, S4, S10
53BAB2:  VMUL.F32        S8, S4, S8
53BAB6:  VMUL.F32        S6, S4, S6
53BABA:  VMUL.F32        S1, S4, S1
53BABE:  VMUL.F32        S12, S4, S12
53BAC2:  VMUL.F32        S14, S4, S14
53BAC6:  VADD.F32        S10, S10, S18
53BACA:  VADD.F32        S8, S8, S18
53BACE:  VADD.F32        S6, S6, S18
53BAD2:  VADD.F32        S18, S0, S2
53BAD6:  VADD.F32        S4, S10, S1
53BADA:  VADD.F32        S2, S8, S14
53BADE:  VADD.F32        S0, S6, S12
53BAE2:  B               loc_53BD14
53BAE4:  VLDR            S0, =0.0; jumptable 0053B9EA default case
53BAE8:  VMOV.F32        S18, #-1.0
53BAEC:  STR             R5, [SP,#0x70+var_68]
53BAEE:  ADD.W           R4, R8, #0x14
53BAF2:  VMOV.F32        S2, S0
53BAF6:  VMOV.F32        S4, S0
53BAFA:  B               loc_53BD14
53BAFC:  VMOV.F32        S0, #1.0; jumptable 0053B9EA case 3
53BB00:  STR             R5, [SP,#0x70+var_68]; CVector *
53BB02:  MOV             R4, R8
53BB04:  VLDR            S30, =0.0
53BB08:  LDR.W           R0, [R4,#0x14]!
53BB0C:  MOVW            R1, #0x139
53BB10:  VLDR            S2, [R0,#4]
53BB14:  VLDR            S22, [R0,#8]
53BB18:  VDIV.F32        S20, S0, S18
53BB1C:  VLDR            S0, [R0]
53BB20:  VLDR            S4, [R0,#0x10]
53BB24:  VLDR            S6, [R0,#0x14]
53BB28:  VLDR            S24, [R0,#0x18]
53BB2C:  ADD.W           R0, R4, #0x4D0
53BB30:  VLDR            S26, [R0]
53BB34:  ADDW            R0, R4, #0x4D4
53BB38:  VMUL.F32        S2, S26, S2
53BB3C:  VLDR            S28, [R0]
53BB40:  VMUL.F32        S0, S26, S0
53BB44:  LDR             R0, [R4,#4]
53BB46:  VMUL.F32        S6, S28, S6
53BB4A:  VMUL.F32        S4, S28, S4
53BB4E:  VMUL.F32        S2, S20, S2
53BB52:  VMUL.F32        S0, S20, S0
53BB56:  VMUL.F32        S19, S20, S6
53BB5A:  VMUL.F32        S23, S20, S4
53BB5E:  VADD.F32        S21, S2, S30
53BB62:  VADD.F32        S25, S0, S30
53BB66:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53BB6A:  VMOV.F32        S18, #-1.0
53BB6E:  CMP             R0, #0
53BB70:  VADD.F32        S2, S21, S19
53BB74:  VADD.F32        S0, S25, S23
53BB78:  BEQ.W           loc_53BCFC
53BB7C:  VLDR            S6, [R0,#0x20]
53BB80:  VLDR            S4, =-0.1
53BB84:  LDR             R0, [R0,#0x14]
53BB86:  VMUL.F32        S4, S6, S4
53BB8A:  VLDR            S6, [R0,#0x10]
53BB8E:  VDIV.F32        S4, S4, S6
53BB92:  B               loc_53BD14
53BB94:  VMOV.F32        S0, #1.0; jumptable 0053B9EA case 4
53BB98:  MOV             R4, R8
53BB9A:  LDR.W           R6, [R4,#0x14]!
53BB9E:  STR             R5, [SP,#0x70+var_68]
53BBA0:  ADD.W           R10, R4, #0x4D0
53BBA4:  LDR.W           R9, [R5,#0x24]
53BBA8:  MOV             R0, R9; x
53BBAA:  VDIV.F32        S20, S0, S18
53BBAE:  BLX             cosf
53BBB2:  VMOV            S30, R0
53BBB6:  MOV             R0, R9; x
53BBB8:  ADDW            R11, R4, #0x4D4
53BBBC:  VLDR            S22, [R6]
53BBC0:  VLDR            S24, [R6,#4]
53BBC4:  VLDR            S26, [R6,#8]
53BBC8:  VLDR            S28, [R6,#0x10]
53BBCC:  VLDR            S21, [R6,#0x18]
53BBD0:  BLX             sinf
53BBD4:  VLDR            S2, [R10]
53BBD8:  VMOV            S0, R0
53BBDC:  VLDR            S4, [R11]
53BBE0:  VMUL.F32        S6, S30, S21
53BBE4:  VMUL.F32        S8, S2, S26
53BBE8:  VLDR            S10, [R6,#0x14]
53BBEC:  VMUL.F32        S0, S4, S0
53BBF0:  VLDR            S1, =0.0
53BBF4:  VMUL.F32        S14, S2, S24
53BBF8:  VMUL.F32        S10, S30, S10
53BBFC:  VMUL.F32        S2, S2, S22
53BC00:  VMUL.F32        S12, S30, S28
53BC04:  VMUL.F32        S6, S6, S4
53BC08:  VMUL.F32        S8, S20, S8
53BC0C:  VDIV.F32        S0, S0, S18
53BC10:  VMUL.F32        S6, S20, S6
53BC14:  VADD.F32        S8, S8, S1
53BC18:  VMUL.F32        S10, S10, S4
53BC1C:  VMUL.F32        S4, S12, S4
53BC20:  VMUL.F32        S2, S20, S2
53BC24:  VMUL.F32        S14, S20, S14
53BC28:  VMOV.F32        S18, #-1.0
53BC2C:  VADD.F32        S6, S8, S6
53BC30:  VMUL.F32        S8, S20, S10
53BC34:  VMUL.F32        S4, S20, S4
53BC38:  VADD.F32        S12, S2, S1
53BC3C:  VADD.F32        S10, S14, S1
53BC40:  VLDR            S14, =0.0075
53BC44:  VADD.F32        S6, S6, S0
53BC48:  VADD.F32        S0, S12, S4
53BC4C:  VADD.F32        S2, S10, S8
53BC50:  VADD.F32        S4, S6, S14
53BC54:  B               loc_53BD14
53BC56:  LDR.W           R0, [R8,#0x18]; jumptable 0053B9EA case 5
53BC5A:  MOVS            R1, #0x80
53BC5C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53BC60:  CBNZ            R0, loc_53BC74
53BC62:  LDR.W           R0, [R8,#0x18]
53BC66:  MOV.W           R1, #0x13C
53BC6A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53BC6E:  CMP             R0, #0
53BC70:  BEQ.W           loc_53BF9C
53BC74:  LDR             R1, [R0,#0x14]
53BC76:  VLDR            S0, [R0,#0x20]
53BC7A:  VLDR            S2, [R1,#0x10]
53BC7E:  VCMPE.F32       S0, S2
53BC82:  VMRS            APSR_nzcv, FPSCR
53BC86:  BGE.W           loc_53BF9C
53BC8A:  VMOV.F32        S0, #1.0
53BC8E:  VLDR            S2, [R0,#0x18]
53BC92:  VCMPE.F32       S2, S0
53BC96:  VMRS            APSR_nzcv, FPSCR
53BC9A:  BGE             loc_53BCAC
53BC9C:  VLDR            S0, [R0,#0x1C]
53BCA0:  VCMPE.F32       S0, #0.0
53BCA4:  VMRS            APSR_nzcv, FPSCR
53BCA8:  BLE.W           loc_53BF9C
53BCAC:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53BCBE)
53BCAE:  MOVS            R1, #0
53BCB0:  VLDR            S0, =0.0024
53BCB4:  MOVS            R2, #0
53BCB6:  VLDR            S2, [R8,#0x90]
53BCBA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53BCBC:  VMUL.F32        S0, S2, S0
53BCC0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53BCC2:  VLDR            S2, [R0]
53BCC6:  MOV             R0, R8
53BCC8:  VMUL.F32        S0, S0, S2
53BCCC:  VMOV            R3, S0
53BCD0:  ADD             SP, SP, #0x10
53BCD2:  VPOP            {D8-D15}
53BCD6:  ADD             SP, SP, #4
53BCD8:  POP.W           {R8-R11}
53BCDC:  POP.W           {R4-R7,LR}
53BCE0:  B.W             sub_193318
53BCE4:  DCFS 0.001
53BCE8:  DCFS 0.4
53BCEC:  DCFS 0.0
53BCF0:  DCFS 0.2
53BCF4:  DCFS 0.55
53BCF8:  DCFS -0.1
53BCFC:  VMUL.F32        S4, S26, S22
53BD00:  VMUL.F32        S6, S28, S24
53BD04:  VMUL.F32        S4, S20, S4
53BD08:  VMUL.F32        S6, S20, S6
53BD0C:  VADD.F32        S4, S4, S30
53BD10:  VADD.F32        S4, S4, S6
53BD14:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53BD24)
53BD16:  ADD.W           R6, R8, #4
53BD1A:  VSTR            S0, [R8,#0x48]
53BD1E:  MOVS            R3, #0
53BD20:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53BD22:  VSTR            S2, [R8,#0x4C]
53BD26:  VSTR            S4, [R8,#0x50]
53BD2A:  MOV             R2, R6
53BD2C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53BD2E:  MOVS            R5, #(stderr+1)
53BD30:  VLDR            S4, [R0]
53BD34:  LDR             R0, [R4]
53BD36:  VMUL.F32        S0, S4, S0
53BD3A:  VMUL.F32        S2, S4, S2
53BD3E:  CMP             R0, #0
53BD40:  IT NE
53BD42:  ADDNE.W         R2, R0, #0x30 ; '0'
53BD46:  VLDR            S4, [R2]
53BD4A:  VLDR            S6, [R2,#4]
53BD4E:  STR             R3, [SP,#0x70+var_64]
53BD50:  LDR             R2, [R2,#8]; float
53BD52:  VADD.F32        S0, S0, S4
53BD56:  STRD.W          R5, R3, [SP,#0x70+var_70]; float *
53BD5A:  VADD.F32        S2, S2, S6
53BD5E:  ADD             R3, SP, #0x70+var_64; float
53BD60:  VMOV            R0, S0; this
53BD64:  VMOV            R1, S2; float
53BD68:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
53BD6C:  CMP             R0, #1
53BD6E:  BNE.W           loc_53BF68
53BD72:  LDR             R5, [SP,#0x70+var_68]
53BD74:  LDRH            R0, [R5,#0xA]
53BD76:  CMP             R0, #4
53BD78:  BNE.W           loc_53BEF0
53BD7C:  VLDR            S22, [R5,#0x34]
53BD80:  VCMPE.F32       S22, #0.0
53BD84:  VMRS            APSR_nzcv, FPSCR
53BD88:  BLT.W           loc_53BEF0
53BD8C:  LDR             R0, [R4]
53BD8E:  MOV             R1, R6
53BD90:  VLDR            S24, =0.65
53BD94:  CMP             R0, #0
53BD96:  IT NE
53BD98:  ADDNE.W         R1, R0, #0x30 ; '0'
53BD9C:  VLDR            S26, [SP,#0x70+var_64]
53BDA0:  VLDR            S28, [R1,#8]
53BDA4:  VLDR            S20, [R5,#0x24]
53BDA8:  VADD.F32        S0, S28, S24
53BDAC:  VCMPE.F32       S26, S0
53BDB0:  VMRS            APSR_nzcv, FPSCR
53BDB4:  BGE             loc_53BDCC
53BDB6:  VLDR            S2, =0.7854
53BDBA:  VCMPE.F32       S20, S2
53BDBE:  VMRS            APSR_nzcv, FPSCR
53BDC2:  BLE             loc_53BDCC
53BDC4:  MOVS            R0, #0
53BDC6:  STR             R0, [R5,#0x34]
53BDC8:  STRH            R0, [R5,#0xA]
53BDCA:  B               loc_53BEF0
53BDCC:  VCMPE.F32       S20, #0.0
53BDD0:  VMRS            APSR_nzcv, FPSCR
53BDD4:  BGE             loc_53BE1E
53BDD6:  VMOV            R0, S20; x
53BDDA:  BLX             sinf
53BDDE:  VMOV            S0, R0
53BDE2:  VSUB.F32        S0, S28, S0
53BDE6:  VADD.F32        S0, S0, S24
53BDEA:  VCMPE.F32       S26, S0
53BDEE:  VMRS            APSR_nzcv, FPSCR
53BDF2:  BGE             loc_53BE98
53BDF4:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53BDFE)
53BDF6:  VLDR            S0, =0.002
53BDFA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53BDFC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53BDFE:  VLDR            S2, [R0]
53BE02:  VMUL.F32        S0, S2, S0
53BE06:  VADD.F32        S4, S22, S0
53BE0A:  VLDR            S0, =0.05
53BE0E:  VCMPE.F32       S4, S0
53BE12:  VMRS            APSR_nzcv, FPSCR
53BE16:  IT GT
53BE18:  VMOVGT.F32      S4, S0
53BE1C:  B               loc_53BEC0
53BE1E:  VCMPE.F32       S26, S0
53BE22:  VMRS            APSR_nzcv, FPSCR
53BE26:  BGE             loc_53BED2
53BE28:  VLDR            S0, =0.025
53BE2C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53BE3A)
53BE2E:  VCMPE.F32       S22, S0
53BE32:  VMRS            APSR_nzcv, FPSCR
53BE36:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53BE38:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53BE3A:  ITTT GT
53BE3C:  VLDRGT          S2, =0.95
53BE40:  VMULGT.F32      S22, S22, S2
53BE44:  VSTRGT          S22, [R5,#0x34]
53BE48:  VLDR            S2, [R0]
53BE4C:  VCMPE.F32       S22, S0
53BE50:  VMRS            APSR_nzcv, FPSCR
53BE54:  BGE             loc_53BE6A
53BE56:  VLDR            S4, =0.002
53BE5A:  VMUL.F32        S4, S2, S4
53BE5E:  VADD.F32        S4, S22, S4
53BE62:  VMIN.F32        D11, D2, D0
53BE66:  VSTR            S22, [R5,#0x34]
53BE6A:  VMUL.F32        S0, S22, S2
53BE6E:  VLDR            S2, =0.7854
53BE72:  VMOV.F32        S4, #0.75
53BE76:  VADD.F32        S0, S20, S0
53BE7A:  VDIV.F32        S2, S0, S2
53BE7E:  VMUL.F32        S2, S2, S4
53BE82:  VLDR            S4, =0.35
53BE86:  VSTR            S0, [R5,#0x24]
53BE8A:  VMUL.F32        S2, S2, S4
53BE8E:  VLDR            S4, =0.2
53BE92:  VADD.F32        S18, S2, S4
53BE96:  B               loc_53BEF0
53BE98:  VCMPE.F32       S22, S16
53BE9C:  VLDR            S2, =0.95
53BEA0:  VMRS            APSR_nzcv, FPSCR
53BEA4:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53BEB2)
53BEA6:  VMUL.F32        S2, S22, S2
53BEAA:  VLDR            S0, =0.0
53BEAE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53BEB0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53BEB2:  IT GT
53BEB4:  VMOVGT.F32      S0, S2
53BEB8:  VLDR            S2, [R0]
53BEBC:  VMOV.F32        S4, S0
53BEC0:  VMUL.F32        S0, S4, S2
53BEC4:  VSTR            S4, [R5,#0x34]
53BEC8:  VADD.F32        S0, S20, S0
53BECC:  VSTR            S0, [R5,#0x24]
53BED0:  B               loc_53BEF0
53BED2:  VCMPE.F32       S22, S16
53BED6:  VLDR            S0, =0.95
53BEDA:  VMRS            APSR_nzcv, FPSCR
53BEDE:  VMUL.F32        S0, S22, S0
53BEE2:  VLDR            S2, =0.0
53BEE6:  IT GT
53BEE8:  VMOVGT.F32      S2, S0
53BEEC:  VSTR            S2, [R5,#0x34]
53BEF0:  VCMPE.F32       S18, #0.0
53BEF4:  VMRS            APSR_nzcv, FPSCR
53BEF8:  BLE             loc_53BF68
53BEFA:  LDR             R0, [R4]
53BEFC:  MOV             R1, R6
53BEFE:  VLDR            S8, =0.1
53BF02:  CMP             R0, #0
53BF04:  VLDR            S6, =-0.1
53BF08:  IT NE
53BF0A:  ADDNE.W         R1, R0, #0x30 ; '0'
53BF0E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53BF1C)
53BF10:  VLDR            S0, [R1,#8]
53BF14:  VLDR            S2, [SP,#0x70+var_64]
53BF18:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53BF1A:  VADD.F32        S0, S18, S0
53BF1E:  VLDR            S10, =0.02
53BF22:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53BF24:  VSUB.F32        S0, S2, S0
53BF28:  VLDR            S2, [R0]
53BF2C:  VMUL.F32        S8, S2, S8
53BF30:  VMUL.F32        S6, S2, S6
53BF34:  VDIV.F32        S4, S0, S2
53BF38:  VMIN.F32        D16, D4, D2
53BF3C:  VSTR            S0, [SP,#0x70+var_64]
53BF40:  VLDR            S0, [R8,#0x50]
53BF44:  VMUL.F32        S8, S2, S10
53BF48:  VMAX.F32        D2, D3, D16
53BF4C:  VLDR            S6, =-0.02
53BF50:  VMUL.F32        S2, S2, S6
53BF54:  VSUB.F32        S4, S4, S0
53BF58:  VMIN.F32        D16, D4, D2
53BF5C:  VMAX.F32        D1, D1, D16
53BF60:  VADD.F32        S0, S0, S2
53BF64:  VSTR            S0, [R8,#0x50]
53BF68:  LDR             R0, [R4]
53BF6A:  VLDR            S0, =-69.0
53BF6E:  CMP             R0, #0
53BF70:  IT NE
53BF72:  ADDNE.W         R6, R0, #0x30 ; '0'
53BF76:  VLDR            S2, [R6,#8]
53BF7A:  VCMPE.F32       S2, S0
53BF7E:  VMRS            APSR_nzcv, FPSCR
53BF82:  BGE             loc_53BF9C
53BF84:  MOVS            R0, #0
53BF86:  VLDR            S0, =0.0
53BF8A:  MOVT            R0, #0xC28A
53BF8E:  STR             R0, [R6,#8]
53BF90:  VLDR            S2, [R8,#0x50]
53BF94:  VMAX.F32        D0, D1, D0
53BF98:  VSTR            S0, [R8,#0x50]
53BF9C:  ADD             SP, SP, #0x10
53BF9E:  VPOP            {D8-D15}
53BFA2:  ADD             SP, SP, #4
53BFA4:  POP.W           {R8-R11}
53BFA8:  POP             {R4-R7,PC}
