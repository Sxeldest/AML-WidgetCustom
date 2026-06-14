; =========================================================
; Game Engine Function: _ZN6CBirds6RenderEv
; Address            : 0x59D9D0 - 0x59E106
; =========================================================

59D9D0:  PUSH            {R4-R7,LR}
59D9D2:  ADD             R7, SP, #0xC
59D9D4:  PUSH.W          {R8-R11}
59D9D8:  SUB             SP, SP, #4
59D9DA:  VPUSH           {D8-D15}
59D9DE:  SUB             SP, SP, #0x168
59D9E0:  MOV             R4, SP
59D9E2:  BFC.W           R4, #0, #4
59D9E6:  MOV             SP, R4
59D9E8:  LDR.W           R0, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59D9F0)
59D9EC:  ADD             R0, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59D9EE:  LDR             R0, [R0]; CBirds::NumberOfBirds ...
59D9F0:  LDR             R0, [R0]; CBirds::NumberOfBirds
59D9F2:  CMP             R0, #0
59D9F4:  BEQ.W           loc_59E0F4
59D9F8:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x59DA0C)
59D9FC:  MOV.W           R11, #0
59DA00:  LDR.W           R1, =(TempBufferIndicesStored_ptr - 0x59DA12)
59DA04:  ADD.W           LR, SP, #0x1C8+var_138
59DA08:  ADD             R0, PC; TempBufferVerticesStored_ptr
59DA0A:  VMOV.F32        S24, #1.0
59DA0E:  ADD             R1, PC; TempBufferIndicesStored_ptr
59DA10:  VMOV.F32        S27, #0.5
59DA14:  LDR             R0, [R0]; TempBufferVerticesStored
59DA16:  MOVS            R6, #0
59DA18:  LDR             R1, [R1]; TempBufferIndicesStored
59DA1A:  VLDR            S26, =6.28
59DA1E:  STR.W           R11, [R0]
59DA22:  ADD             R0, SP, #0x1C8+var_B0
59DA24:  ADD.W           R10, R0, #0x30 ; '0'
59DA28:  LDR.W           R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59DA34)
59DA2C:  STR.W           R11, [R1]
59DA30:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59DA32:  LDR.W           R1, =(_ZN6CBirds6aBirdsE_ptr - 0x59DA40)
59DA36:  VLDR            S21, =0.1
59DA3A:  LDR             R0, [R0]; CBirds::aBirds ...
59DA3C:  ADD             R1, PC; _ZN6CBirds6aBirdsE_ptr
59DA3E:  STR             R0, [SP,#0x1C8+var_104]
59DA40:  LDR.W           R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59DA4C)
59DA44:  VLDR            S16, =0.8
59DA48:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59DA4A:  STR.W           R10, [SP,#0x1C8+var_11C]
59DA4E:  LDR             R0, [R0]; CBirds::aBirds ...
59DA50:  STR             R0, [SP,#0x1C8+var_10C]
59DA52:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x59DA5A)
59DA56:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
59DA58:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
59DA5A:  STR             R0, [SP,#0x1C8+var_110]
59DA5C:  LDR             R0, [R1]; CBirds::aBirds ...
59DA5E:  ADR.W           R1, dword_59E110
59DA62:  STR             R0, [SP,#0x1C8+var_114]
59DA64:  LDR.W           R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59DA70)
59DA68:  VLD1.64         {D16-D17}, [R1@128]
59DA6C:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59DA6E:  VST1.64         {D16-D17}, [LR@128]
59DA72:  ADD.W           LR, SP, #0x1C8+var_158
59DA76:  LDR             R0, [R0]; CBirds::aBirds ...
59DA78:  STR             R0, [SP,#0x1C8+var_118]
59DA7A:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x59DA86)
59DA7E:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x59DA88)
59DA82:  ADD             R0, PC; TempBufferVerticesStored_ptr
59DA84:  ADD             R1, PC; TempBufferRenderIndexList_ptr
59DA86:  LDR             R0, [R0]; TempBufferVerticesStored
59DA88:  STR             R0, [SP,#0x1C8+var_13C]
59DA8A:  ADR.W           R0, dword_59E120
59DA8E:  VLD1.64         {D16-D17}, [R0@128]
59DA92:  ADR.W           R0, dword_59E130
59DA96:  VST1.64         {D16-D17}, [LR@128]
59DA9A:  ADD.W           LR, SP, #0x1C8+var_168
59DA9E:  VLD1.64         {D16-D17}, [R0@128]
59DAA2:  ADR.W           R0, dword_59E140
59DAA6:  VST1.64         {D16-D17}, [LR@128]
59DAAA:  ADD.W           LR, SP, #0x1C8+var_178
59DAAE:  VLD1.64         {D16-D17}, [R0@128]
59DAB2:  ADR.W           R0, dword_59E150
59DAB6:  VST1.64         {D16-D17}, [LR@128]
59DABA:  ADD.W           LR, SP, #0x1C8+var_188
59DABE:  VLD1.64         {D16-D17}, [R0@128]
59DAC2:  ADR.W           R0, dword_59E160
59DAC6:  VST1.64         {D16-D17}, [LR@128]
59DACA:  ADD.W           LR, SP, #0x1C8+var_1A8
59DACE:  VLD1.64         {D16-D17}, [R0@128]
59DAD2:  ADR.W           R0, dword_59E170
59DAD6:  VLD1.64         {D14-D15}, [R0@128]
59DADA:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x59DAE4)
59DADE:  LDR             R1, [R1]; TempBufferRenderIndexList
59DAE0:  ADD             R0, PC; TempBufferIndicesStored_ptr
59DAE2:  STR             R1, [SP,#0x1C8+var_190]
59DAE4:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x59DAF0)
59DAE8:  LDR             R0, [R0]; TempBufferIndicesStored
59DAEA:  STR             R0, [SP,#0x1C8+var_18C]
59DAEC:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
59DAEE:  LDR.W           R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59DAFA)
59DAF2:  VST1.64         {D16-D17}, [LR@128]
59DAF6:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59DAF8:  LDR             R0, [R0]; CBirds::aBirds ...
59DAFA:  STR             R0, [SP,#0x1C8+var_194]
59DAFC:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds ...
59DAFE:  STR             R0, [SP,#0x1C8+var_198]
59DB00:  LDR.W           R0, =(TheCamera_ptr - 0x59DB0C)
59DB04:  LDR.W           R1, =(TempBufferVerticesStored_ptr - 0x59DB0E)
59DB08:  ADD             R0, PC; TheCamera_ptr
59DB0A:  ADD             R1, PC; TempBufferVerticesStored_ptr
59DB0C:  LDR             R0, [R0]; TheCamera
59DB0E:  STR             R0, [SP,#0x1C8+var_1AC]
59DB10:  LDR.W           R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59DB18)
59DB14:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59DB16:  LDR             R0, [R0]; CBirds::aBirds ...
59DB18:  STR             R0, [SP,#0x1C8+var_1B0]
59DB1A:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x59DB22)
59DB1E:  ADD             R0, PC; TempBufferVerticesStored_ptr
59DB20:  LDR             R0, [R0]; TempBufferVerticesStored
59DB22:  STR             R0, [SP,#0x1C8+var_E4]
59DB24:  LDR.W           R0, =(TempVertexBuffer_ptr - 0x59DB2C)
59DB28:  ADD             R0, PC; TempVertexBuffer_ptr
59DB2A:  LDR             R0, [R0]; TempVertexBuffer
59DB2C:  STR             R0, [SP,#0x1C8+var_E8]
59DB2E:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x59DB36)
59DB32:  ADD             R0, PC; TempBufferIndicesStored_ptr
59DB34:  LDR             R0, [R0]; TempBufferIndicesStored
59DB36:  STR             R0, [SP,#0x1C8+var_1B4]
59DB38:  LDR             R0, [R1]; TempBufferVerticesStored
59DB3A:  STR             R0, [SP,#0x1C8+var_1B8]
59DB3C:  STR             R0, [SP,#0x1C8+var_EC]
59DB3E:  B               loc_59DB4C
59DB40:  DCFS 6.28
59DB44:  DCFS 0.1
59DB48:  DCFS 0.8
59DB4C:  ADD.W           R8, R6, R6,LSL#4
59DB50:  LDR             R0, [SP,#0x1C8+var_104]
59DB52:  ADD.W           R0, R0, R8,LSL#2
59DB56:  LDRB.W          R0, [R0,#0x3F]
59DB5A:  CMP             R0, #0
59DB5C:  BEQ.W           loc_59E0A6
59DB60:  STR             R4, [SP,#0x1C8+var_D8]
59DB62:  STRD.W          R11, R11, [SP,#0x1C8+var_70]
59DB66:  LDR             R0, [SP,#0x1C8+var_10C]
59DB68:  ADD.W           R4, R0, R8,LSL#2
59DB6C:  LDR.W           R1, [R0,R8,LSL#2]; float
59DB70:  MOV             R0, R4
59DB72:  LDR.W           R2, [R0,#4]!; float
59DB76:  LDR             R3, [R4,#8]; float
59DB78:  STR             R0, [SP,#0x1C8+var_DC]
59DB7A:  ADD             R0, SP, #0x1C8+var_B0; this
59DB7C:  BLX.W           j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
59DB80:  MOV             R9, R4
59DB82:  STR             R4, [SP,#0x1C8+var_E0]
59DB84:  LDRB.W          R0, [R9,#0x38]!
59DB88:  SUBS            R0, #1
59DB8A:  UXTB            R0, R0
59DB8C:  CMP             R0, #1
59DB8E:  BHI             loc_59DBE6
59DB90:  LDR             R0, [SP,#0x1C8+var_110]
59DB92:  MOVS            R1, #0x64 ; 'd'
59DB94:  MOV             R11, R8
59DB96:  LDR             R0, [R0]
59DB98:  MLA.W           R0, R6, R1, R0
59DB9C:  LDR             R1, [SP,#0x1C8+var_114]
59DB9E:  ADD.W           R1, R1, R8,LSL#2
59DBA2:  LDR.W           R8, [R1,#0x2C]
59DBA6:  MOV             R1, R8
59DBA8:  BLX.W           __aeabi_uidivmod
59DBAC:  VMOV            S0, R8
59DBB0:  MOV             R8, R11
59DBB2:  VMOV            S2, R1
59DBB6:  MOV.W           R11, #0
59DBBA:  VCVT.F32.U32    S0, S0
59DBBE:  VCVT.F32.U32    S2, S2
59DBC2:  VDIV.F32        S0, S26, S0
59DBC6:  VMUL.F32        S0, S0, S2
59DBCA:  VMOV            R0, S0; x
59DBCE:  BLX.W           sinf
59DBD2:  VMOV            S0, R0
59DBD6:  VLDR            S2, [SP,#0x1C8+var_78]
59DBDA:  VMUL.F32        S0, S0, S21
59DBDE:  VADD.F32        S0, S2, S0
59DBE2:  VSTR            S0, [SP,#0x1C8+var_78]
59DBE6:  MOVS            R0, #1
59DBE8:  ADD             R1, SP, #0x1C8+var_BC
59DBEA:  ADD             R2, SP, #0x1C8+var_64
59DBEC:  ADD             R3, SP, #0x1C8+var_68
59DBEE:  STR.W           R11, [SP,#0x1C8+var_1C8]
59DBF2:  STR             R0, [SP,#0x1C8+var_1C4]
59DBF4:  MOV             R0, R10
59DBF6:  BLX.W           j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
59DBFA:  LDR             R4, [SP,#0x1C8+var_D8]
59DBFC:  CMP             R0, #1
59DBFE:  BNE.W           loc_59E0A0
59DC02:  LDR             R0, [SP,#0x1C8+var_118]
59DC04:  MOVS            R1, #0
59DC06:  STR             R6, [SP,#0x1C8+var_108]
59DC08:  MOV             R6, R8
59DC0A:  ADD.W           R0, R0, R8,LSL#2
59DC0E:  LDR.W           R11, [R0,#0x24]
59DC12:  STRD.W          R1, R1, [SP,#0x1C8+var_90]
59DC16:  LDR.W           R8, [R0,#0x30]
59DC1A:  MOV             R0, R11; x
59DC1C:  BLX.W           cosf
59DC20:  VMOV            S20, R0
59DC24:  MOV             R0, R11; x
59DC26:  VMOV            S18, R8
59DC2A:  MOV.W           R11, #0
59DC2E:  BLX.W           sinf
59DC32:  VMOV            S0, R0
59DC36:  LDRB.W          R0, [R9]
59DC3A:  VMUL.F32        S2, S20, S18
59DC3E:  STR.W           R8, [SP,#0x1C8+var_88]
59DC42:  VNMUL.F32       S4, S0, S18
59DC46:  SUBS            R0, #1
59DC48:  VMUL.F32        S0, S0, S18
59DC4C:  STR.W           R11, [SP,#0x1C8+var_A8]
59DC50:  UXTB            R0, R0
59DC52:  CMP             R0, #1
59DC54:  STR.W           R11, [SP,#0x1C8+var_98]
59DC58:  VSTR            S2, [SP,#0x1C8+var_B0]
59DC5C:  VSTR            S4, [SP,#0x1C8+var_AC]
59DC60:  VSTR            S0, [SP,#0x1C8+var_A0]
59DC64:  VSTR            S2, [SP,#0x1C8+var_9C]
59DC68:  BHI.W           loc_59E09A
59DC6C:  LDR             R0, [SP,#0x1C8+var_13C]
59DC6E:  ADD.W           LR, SP, #0x1C8+var_138
59DC72:  VLD1.64         {D26-D27}, [LR@128]
59DC76:  ADD.W           LR, SP, #0x1C8+var_158
59DC7A:  MOV             R10, R6
59DC7C:  LDR             R0, [R0]
59DC7E:  VLD1.64         {D2-D3}, [LR@128]
59DC82:  ADD.W           LR, SP, #0x1C8+var_168
59DC86:  ADD.W           R1, R0, #8
59DC8A:  VLD1.64         {D6-D7}, [LR@128]
59DC8E:  ADD.W           LR, SP, #0x1C8+var_178
59DC92:  VDUP.32         Q8, R0
59DC96:  LDR             R2, [SP,#0x1C8+var_190]
59DC98:  VLD1.64         {D0-D1}, [LR@128]
59DC9C:  VADD.I32        Q10, Q8, Q1
59DCA0:  VADD.I32        Q14, Q8, Q0
59DCA4:  ADD.W           LR, SP, #0x1C8+var_188
59DCA8:  VDUP.32         Q12, R1
59DCAC:  LDR             R1, [SP,#0x1C8+var_18C]
59DCAE:  VLD1.64         {D30-D31}, [LR@128]
59DCB2:  VADD.I32        Q9, Q8, Q13
59DCB6:  VMOVN.I32       D20, Q10
59DCBA:  ADD.W           LR, SP, #0x1C8+var_1A8
59DCBE:  VMOVN.I32       D21, Q14
59DCC2:  LDR             R1, [R1]
59DCC4:  VADD.I32        Q14, Q8, Q15
59DCC8:  VADD.I32        Q11, Q8, Q3
59DCCC:  VADD.I32        Q13, Q12, Q13
59DCD0:  ADD.W           R1, R2, R1,LSL#1
59DCD4:  VMOVN.I32       D18, Q9
59DCD8:  ADD.W           R3, R1, #0x3C ; '<'
59DCDC:  VMOVN.I32       D19, Q14
59DCE0:  VLD1.64         {D28-D29}, [LR@128]
59DCE4:  VMOVN.I32       D22, Q11
59DCE8:  MOV             R2, R1
59DCEA:  VMOVN.I32       D23, Q13
59DCEE:  ADD.W           R12, R1, #0x10
59DCF2:  VADD.I32        Q13, Q8, Q14
59DCF6:  VADD.I32        Q8, Q8, Q7
59DCFA:  VADD.I32        Q14, Q12, Q14
59DCFE:  VADD.I32        Q15, Q12, Q15
59DD02:  VADD.I32        Q0, Q12, Q0
59DD06:  VADD.I32        Q1, Q12, Q1
59DD0A:  VADD.I32        Q2, Q12, Q7
59DD0E:  VADD.I32        Q12, Q12, Q3
59DD12:  VMOVN.I32       D16, Q8
59DD16:  VMOVN.I32       D26, Q13
59DD1A:  VST1.16         {D16}, [R2]!
59DD1E:  VMOVN.I32       D17, Q12
59DD22:  VMOVN.I32       D25, Q2
59DD26:  VMOVN.I32       D28, Q14
59DD2A:  VST1.16         {D25}, [R3]
59DD2E:  VMOVN.I32       D27, Q15
59DD32:  VMOVN.I32       D24, Q0
59DD36:  VST1.16         {D26}, [R2]
59DD3A:  ADD.W           R2, R1, #0x44 ; 'D'
59DD3E:  VMOVN.I32       D16, Q1
59DD42:  VST1.16         {D19}, [R12]
59DD46:  VST1.16         {D28}, [R2]
59DD4A:  ADD.W           R2, R1, #0x4C ; 'L'
59DD4E:  VST1.16         {D27}, [R2]
59DD52:  ADD.W           R2, R1, #0x18
59DD56:  VST1.16         {D21}, [R2]
59DD5A:  ADD.W           R2, R1, #0x54 ; 'T'
59DD5E:  VST1.16         {D24}, [R2]
59DD62:  ADD.W           R2, R1, #0x20 ; ' '
59DD66:  VST1.16         {D20}, [R2]
59DD6A:  ADD.W           R2, R1, #0x5C ; '\'
59DD6E:  VST1.16         {D16}, [R2]
59DD72:  ADD.W           R2, R1, #0x28 ; '('
59DD76:  VST1.16         {D22}, [R2]
59DD7A:  ADD.W           R2, R1, #0x64 ; 'd'
59DD7E:  VST1.16         {D17}, [R2]
59DD82:  ADD.W           R2, R1, #0x30 ; '0'
59DD86:  VST1.16         {D18}, [R2]
59DD8A:  ADD.W           R2, R1, #0x6C ; 'l'
59DD8E:  VST1.16         {D23}, [R2]
59DD92:  ADDS            R2, R0, #7
59DD94:  STRH            R2, [R1,#0x38]
59DD96:  ADD.W           R2, R0, #0xF
59DD9A:  STRH.W          R2, [R1,#0x74]
59DD9E:  ADDS            R2, R0, #6
59DDA0:  ADDS            R0, #0xE
59DDA2:  STRH            R2, [R1,#0x3A]
59DDA4:  STRH.W          R0, [R1,#0x76]
59DDA8:  MOVS            R2, #0x64 ; 'd'
59DDAA:  LDR             R0, [SP,#0x1C8+var_194]
59DDAC:  LDR             R3, [SP,#0x1C8+var_108]
59DDAE:  ADD.W           R9, R0, R6,LSL#2
59DDB2:  MOV             R0, #0xAAAAAAAB
59DDBA:  LDR.W           R8, [R9,#0x2C]
59DDBE:  UMULL.W         R0, R1, R8, R0
59DDC2:  LDR             R0, [SP,#0x1C8+var_198]
59DDC4:  LDR             R0, [R0]
59DDC6:  MLA.W           R6, R3, R2, R0
59DDCA:  ADD.W           R0, R6, R1,LSR#2
59DDCE:  MOV             R1, R8
59DDD0:  BLX.W           __aeabi_uidivmod
59DDD4:  VMOV            S0, R8
59DDD8:  VCVT.F32.U32    S0, S0
59DDDC:  VDIV.F32        S20, S26, S0
59DDE0:  VMOV            S0, R1
59DDE4:  VCVT.F32.U32    S0, S0
59DDE8:  VMUL.F32        S0, S20, S0
59DDEC:  VMOV            R0, S0; x
59DDF0:  BLX.W           sinf
59DDF4:  MOV             R11, R0
59DDF6:  MOV             R0, R6
59DDF8:  MOV             R1, R8
59DDFA:  BLX.W           __aeabi_uidivmod
59DDFE:  VMOV            S0, R1
59DE02:  EOR.W           R1, R11, #0x80000000
59DE06:  VMOV.F64        D11, D12
59DE0A:  VCVT.F32.U32    S0, S0
59DE0E:  VMAX.F32        D9, D9, D11
59DE12:  VMUL.F32        S0, S20, S0
59DE16:  VMOV            S20, R1
59DE1A:  VMOV            R0, S0; x
59DE1E:  BLX.W           sinf
59DE22:  VDIV.F32        S2, S20, S18
59DE26:  EOR.W           R0, R0, #0x80000000
59DE2A:  VMOV            R8, S2
59DE2E:  VMOV            S0, R0
59DE32:  VDIV.F32        S18, S0, S18
59DE36:  MOV             R0, R8; x
59DE38:  BLX.W           cosf
59DE3C:  MOV             R11, R0
59DE3E:  MOV             R0, R8; x
59DE40:  BLX.W           sinf
59DE44:  VMOV            R8, S18
59DE48:  MOV             R6, R0
59DE4A:  MOV             R0, R8; x
59DE4C:  BLX.W           cosf
59DE50:  STR             R0, [SP,#0x1C8+var_F0]
59DE52:  MOV             R0, R8; x
59DE54:  BLX.W           sinf
59DE58:  LDR             R3, [SP,#0x1C8+var_1AC]
59DE5A:  VMOV            S12, R6
59DE5E:  LDR             R2, [SP,#0x1C8+var_E0]
59DE60:  VMOV            S14, R11
59DE64:  VMUL.F32        S18, S12, S27
59DE68:  LDR             R1, [R3,#0x14]
59DE6A:  VMUL.F32        S17, S14, S27
59DE6E:  VLDR            S0, [R2]
59DE72:  ADD.W           R2, R1, #0x30 ; '0'
59DE76:  CMP             R1, #0
59DE78:  IT EQ
59DE7A:  ADDEQ           R2, R3, #4
59DE7C:  LDR             R1, [SP,#0x1C8+var_DC]
59DE7E:  VLDR            S2, [R2]
59DE82:  VLDR            D17, [R2,#4]
59DE86:  VSUB.F32        S0, S0, S2
59DE8A:  VLDR            D16, [R1]
59DE8E:  VSUB.F32        D16, D16, D17
59DE92:  VLDR            S6, [R9,#0x34]
59DE96:  VMUL.F32        D1, D16, D16
59DE9A:  VMUL.F32        S0, S0, S0
59DE9E:  VADD.F32        S0, S0, S2
59DEA2:  VADD.F32        S0, S0, S3
59DEA6:  VLDR            S2, =0.7
59DEAA:  VMUL.F32        S8, S6, S2
59DEAE:  VSQRT.F32       S4, S0
59DEB2:  VMOV            S0, R0
59DEB6:  LDR             R0, [SP,#0x1C8+var_F0]
59DEB8:  VCMPE.F32       S4, S8
59DEBC:  VMUL.F32        S2, S0, S27
59DEC0:  VMRS            APSR_nzcv, FPSCR
59DEC4:  VMOV            S10, R0
59DEC8:  VMUL.F32        S0, S10, S27
59DECC:  BLE             loc_59DEFC
59DECE:  VSUB.F32        S4, S4, S8
59DED2:  VLDR            S8, =-0.3
59DED6:  VMUL.F32        S6, S6, S8
59DEDA:  VDIV.F32        S4, S4, S6
59DEDE:  VADD.F32        S4, S4, S22
59DEE2:  VLDR            S6, =0.0
59DEE6:  VMAX.F32        D2, D2, D3
59DEEA:  VLDR            S6, =255.0
59DEEE:  VMUL.F32        S4, S4, S6
59DEF2:  VCVT.U32.F32    S4, S4
59DEF6:  VMOV            R0, S4
59DEFA:  B               loc_59DEFE
59DEFC:  MOVS            R0, #0xFF
59DEFE:  LDR             R1, [SP,#0x1C8+var_1B0]
59DF00:  VADD.F32        S19, S18, S2
59DF04:  VADD.F32        S20, S17, S0
59DF08:  LDR             R6, [SP,#0x1C8+var_EC]
59DF0A:  ADD.W           R1, R1, R10,LSL#2
59DF0E:  LSLS            R0, R0, #0x18
59DF10:  ADD.W           R2, R1, #0x3E ; '>'
59DF14:  STR             R2, [SP,#0x1C8+var_F8]
59DF16:  ADD.W           R2, R1, #0x3D ; '='
59DF1A:  STR             R2, [SP,#0x1C8+var_FC]
59DF1C:  ADD.W           R2, R1, #0x3C ; '<'
59DF20:  STR             R2, [SP,#0x1C8+var_100]
59DF22:  ADD.W           R2, R1, #0x3B ; ';'
59DF26:  MOV.W           R10, #0
59DF2A:  STR             R2, [SP,#0x1C8+var_EC]
59DF2C:  ADD.W           R2, R1, #0x3A ; ':'
59DF30:  ADDS            R1, #0x39 ; '9'
59DF32:  STR             R2, [SP,#0x1C8+var_F0]
59DF34:  STR             R1, [SP,#0x1C8+var_F4]
59DF36:  STR             R0, [SP,#0x1C8+var_E0]
59DF38:  CMP.W           R10, #7; switch 8 cases
59DF3C:  BHI             def_59DF3E; jumptable 0059DF3E default case
59DF3E:  TBB.W           [PC,R10]; switch jump
59DF42:  DCB 4; jump table for switch statement
59DF43:  DCB 4
59DF44:  DCB 8
59DF45:  DCB 8
59DF46:  DCB 0xD
59DF47:  DCB 0xD
59DF48:  DCB 0x17
59DF49:  DCB 4
59DF4A:  MOVS            R0, #0; jumptable 0059DF3E cases 0,1,7
59DF4C:  STR             R0, [SP,#0x1C8+var_C0]
59DF4E:  STR             R0, [SP,#0x1C8+var_C8]
59DF50:  B               loc_59DF7E
59DF52:  VSTR            S18, [SP,#0x1C8+var_C0]; jumptable 0059DF3E cases 2,3
59DF56:  VSTR            S17, [SP,#0x1C8+var_C8]
59DF5A:  B               loc_59DF7E
59DF5C:  LDR             R0, [SP,#0x1C8+var_F8]; jumptable 0059DF3E cases 4,5
59DF5E:  VSTR            S19, [SP,#0x1C8+var_C0]
59DF62:  VSTR            S20, [SP,#0x1C8+var_C8]
59DF66:  LDRB            R6, [R0]
59DF68:  LDR             R0, [SP,#0x1C8+var_FC]
59DF6A:  LDRB            R5, [R0]
59DF6C:  LDR             R0, [SP,#0x1C8+var_100]
59DF6E:  B               loc_59DF88
59DF70:  MOV             R0, #0x3DCCCCCD; jumptable 0059DF3E case 6
59DF78:  STR             R0, [SP,#0x1C8+var_C8]
59DF7A:  MOVS            R0, #0
59DF7C:  STR             R0, [SP,#0x1C8+var_C0]
59DF7E:  LDR             R0, [SP,#0x1C8+var_EC]
59DF80:  LDRB            R6, [R0]
59DF82:  LDR             R0, [SP,#0x1C8+var_F0]
59DF84:  LDRB            R5, [R0]
59DF86:  LDR             R0, [SP,#0x1C8+var_F4]
59DF88:  LDRB            R4, [R0]
59DF8A:  ADR             R0, dword_59E1CC; jumptable 0059DF3E default case
59DF8C:  ADD.W           R11, SP, #0x1C8+var_B0
59DF90:  ADD             R2, SP, #0x1C8+var_C8
59DF92:  LDR.W           R0, [R0,R10,LSL#2]
59DF96:  MOV             R1, R11
59DF98:  STR             R0, [SP,#0x1C8+var_C4]
59DF9A:  ADD             R0, SP, #0x1C8+var_D4
59DF9C:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
59DFA0:  ADD             R2, SP, #0x1C8+var_D4
59DFA2:  UXTB            R5, R5
59DFA4:  UXTB            R4, R4
59DFA6:  UXTB            R6, R6
59DFA8:  LDM             R2, {R0-R2}
59DFAA:  LDR.W           R11, [SP,#0x1C8+var_E4]
59DFAE:  LDR.W           R9, [SP,#0x1C8+var_E8]
59DFB2:  LDR.W           R8, [SP,#0x1C8+var_E0]
59DFB6:  LDR.W           R3, [R11]
59DFBA:  ADD             R3, R10
59DFBC:  ADD.W           R3, R3, R3,LSL#3
59DFC0:  STR.W           R0, [R9,R3,LSL#2]
59DFC4:  ADD.W           R3, R9, R3,LSL#2
59DFC8:  ORR.W           R0, R8, R4
59DFCC:  STRD.W          R1, R2, [R3,#4]
59DFD0:  ADR             R1, dword_59E1F4
59DFD2:  ORR.W           R0, R0, R5,LSL#8
59DFD6:  ADDS            R3, #0x18
59DFD8:  LDR.W           R2, [R1,R10,LSL#2]
59DFDC:  ADR             R1, dword_59E214
59DFDE:  ORR.W           R0, R0, R6,LSL#16
59DFE2:  LDR.W           R1, [R1,R10,LSL#2]
59DFE6:  STR             R2, [SP,#0x1C8+var_D8]
59DFE8:  STR             R1, [SP,#0x1C8+var_DC]
59DFEA:  STM             R3!, {R0-R2}
59DFEC:  ADD             R0, SP, #0x1C8+var_D4
59DFEE:  ADD             R1, SP, #0x1C8+var_B0
59DFF0:  VLDR            S0, [SP,#0x1C8+var_C8]
59DFF4:  ADD             R2, SP, #0x1C8+var_C8
59DFF6:  VNEG.F32        S0, S0
59DFFA:  VSTR            S0, [SP,#0x1C8+var_C8]
59DFFE:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
59E002:  LDRD.W          R1, R12, [SP,#0x1C8+var_D4]
59E006:  VMOV            S0, R4
59E00A:  LDR.W           R0, [R11]
59E00E:  LDR             R3, [SP,#0x1C8+var_CC]
59E010:  ADD.W           R2, R10, R0
59E014:  ADD.W           R10, R10, #1
59E018:  CMP.W           R10, #8
59E01C:  ADD.W           R2, R2, R2,LSL#3
59E020:  ADD.W           R2, R9, R2,LSL#2
59E024:  STR.W           R1, [R2,#0x120]
59E028:  VCVT.F32.U32    S0, S0
59E02C:  VMUL.F32        S0, S0, S16
59E030:  VCVT.U32.F32    S0, S0
59E034:  VMOV            R4, S0
59E038:  VMOV            S0, R5
59E03C:  VCVT.F32.U32    S0, S0
59E040:  VMUL.F32        S0, S0, S16
59E044:  VCVT.U32.F32    S0, S0
59E048:  ORR.W           R1, R8, R4
59E04C:  VMOV            R5, S0
59E050:  VMOV            S0, R6
59E054:  VCVT.F32.U32    S0, S0
59E058:  VMUL.F32        S0, S0, S16
59E05C:  VCVT.U32.F32    S0, S0
59E060:  STRD.W          R12, R3, [R2,#0x124]
59E064:  ORR.W           R1, R1, R5,LSL#8
59E068:  VMOV            R6, S0
59E06C:  ORR.W           R1, R1, R6,LSL#16
59E070:  STR.W           R1, [R2,#0x138]
59E074:  LDR             R1, [SP,#0x1C8+var_DC]
59E076:  STR.W           R1, [R2,#0x13C]
59E07A:  LDR             R1, [SP,#0x1C8+var_D8]
59E07C:  STR.W           R1, [R2,#0x140]
59E080:  BNE.W           loc_59DF38
59E084:  LDR             R2, [SP,#0x1C8+var_1B4]
59E086:  ADDS            R0, #0x10
59E088:  LDR             R3, [SP,#0x1C8+var_1B8]
59E08A:  MOV.W           R11, #0
59E08E:  STR             R6, [SP,#0x1C8+var_EC]
59E090:  LDR             R1, [R2]
59E092:  STR             R0, [R3]
59E094:  ADD.W           R0, R1, #0x3C ; '<'
59E098:  STR             R0, [R2]
59E09A:  LDR.W           R10, [SP,#0x1C8+var_11C]
59E09E:  LDR             R6, [SP,#0x1C8+var_108]
59E0A0:  ADD             R0, SP, #0x1C8+var_B0; this
59E0A2:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
59E0A6:  ADDS            R6, #1
59E0A8:  CMP             R6, #6
59E0AA:  BNE.W           loc_59DB4C
59E0AE:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x59E0B4)
59E0B0:  ADD             R0, PC; TempBufferIndicesStored_ptr
59E0B2:  LDR             R0, [R0]; TempBufferIndicesStored
59E0B4:  LDR             R0, [R0]
59E0B6:  CBZ             R0, loc_59E0F4
59E0B8:  MOVS            R0, #0xA
59E0BA:  MOVS            R1, #5
59E0BC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59E0C0:  MOVS            R0, #0xB
59E0C2:  MOVS            R1, #6
59E0C4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59E0C8:  MOVS            R0, #2
59E0CA:  MOVS            R1, #3
59E0CC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59E0D0:  MOVS            R0, #0xE
59E0D2:  MOVS            R1, #0
59E0D4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59E0D8:  MOVS            R0, #0xC
59E0DA:  MOVS            R1, #1
59E0DC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59E0E0:  LDR             R0, =(gpCloudTex_ptr - 0x59E0E6)
59E0E2:  ADD             R0, PC; gpCloudTex_ptr
59E0E4:  LDR             R0, [R0]; gpCloudTex
59E0E6:  LDR             R0, [R0,#(dword_A23DEC - 0xA23DE8)]
59E0E8:  LDR             R1, [R0]
59E0EA:  MOVS            R0, #1
59E0EC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59E0F0:  BLX.W           j__ZN13CBrightLights23RenderOutGeometryBufferEv; CBrightLights::RenderOutGeometryBuffer(void)
59E0F4:  SUB.W           R4, R7, #-var_60
59E0F8:  MOV             SP, R4
59E0FA:  VPOP            {D8-D15}
59E0FE:  ADD             SP, SP, #4
59E100:  POP.W           {R8-R11}
59E104:  POP             {R4-R7,PC}
