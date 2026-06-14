; =========================================================
; Game Engine Function: _ZN8CShadows24RenderExtraPlayerShadowsEv
; Address            : 0x5BDAC4 - 0x5BDE3A
; =========================================================

5BDAC4:  PUSH            {R4-R7,LR}
5BDAC6:  ADD             R7, SP, #0xC
5BDAC8:  PUSH.W          {R8-R11}
5BDACC:  SUB             SP, SP, #4
5BDACE:  VPUSH           {D8-D15}
5BDAD2:  SUB             SP, SP, #0x30
5BDAD4:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5BDADA)
5BDAD6:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5BDAD8:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
5BDADA:  LDRH.W          R0, [R0,#(dword_966594+2 - 0x96654C)]
5BDADE:  CBZ             R0, loc_5BDB18
5BDAE0:  MOV.W           R0, #0xFFFFFFFF; int
5BDAE4:  MOVS            R1, #0; bool
5BDAE6:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5BDAEA:  MOV             R4, R0
5BDAEC:  CMP             R4, #0
5BDAEE:  ITTT NE
5BDAF0:  LDRHNE          R0, [R4,#0x26]
5BDAF2:  MOVWNE          R1, #0x1B9
5BDAF6:  CMPNE           R0, R1
5BDAF8:  BEQ             loc_5BDB18
5BDAFA:  MOV             R0, R4; this
5BDAFC:  BLX.W           j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
5BDB00:  CMP             R0, #2
5BDB02:  BEQ             loc_5BDB18
5BDB04:  LDR.W           R0, [R4,#0x5A0]
5BDB08:  CMP             R0, #9
5BDB0A:  BHI             loc_5BDB26
5BDB0C:  MOVS            R1, #1
5BDB0E:  LSL.W           R0, R1, R0
5BDB12:  TST.W           R0, #0x320
5BDB16:  BEQ             loc_5BDB26
5BDB18:  ADD             SP, SP, #0x30 ; '0'
5BDB1A:  VPOP            {D8-D15}
5BDB1E:  ADD             SP, SP, #4
5BDB20:  POP.W           {R8-R11}
5BDB24:  POP             {R4-R7,PC}
5BDB26:  LDR             R0, =(_ZN12CPointLights9NumLightsE_ptr - 0x5BDB2C)
5BDB28:  ADD             R0, PC; _ZN12CPointLights9NumLightsE_ptr
5BDB2A:  LDR             R0, [R0]; CPointLights::NumLights ...
5BDB2C:  LDR             R0, [R0]; CPointLights::NumLights
5BDB2E:  CMP             R0, #1
5BDB30:  BLT             loc_5BDB18
5BDB32:  LDR             R0, =(_ZN12CPointLights7aLightsE_ptr - 0x5BDB42)
5BDB34:  VMOV.F32        S16, #0.5
5BDB38:  LDR             R1, =(gpShadowCarTex_ptr - 0x5BDB48)
5BDB3A:  VMOV.F32        S18, #1.0
5BDB3E:  ADD             R0, PC; _ZN12CPointLights7aLightsE_ptr
5BDB40:  VLDR            S20, =1.2
5BDB44:  ADD             R1, PC; gpShadowCarTex_ptr
5BDB46:  MOV.W           R8, #0
5BDB4A:  LDR             R0, [R0]; CPointLights::aLights ...
5BDB4C:  ADD.W           R6, R0, #0x2E ; '.'
5BDB50:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5BDB56)
5BDB52:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5BDB54:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
5BDB56:  STR             R0, [SP,#0x90+var_78]
5BDB58:  LDR             R0, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5BDB5E)
5BDB5A:  ADD             R0, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5BDB5C:  LDR             R0, [R0]; CShadows::ShadowsStoredToBeRendered ...
5BDB5E:  STR             R0, [SP,#0x90+var_70]
5BDB60:  LDR             R0, [R1]; gpShadowCarTex
5BDB62:  STR             R0, [SP,#0x90+var_74]
5BDB64:  LDR             R0, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BDB6A)
5BDB66:  ADD             R0, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BDB68:  LDR             R0, [R0]; CShadows::asShadowsStored ...
5BDB6A:  STR             R0, [SP,#0x90+var_80]
5BDB6C:  LDR             R0, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5BDB72)
5BDB6E:  ADD             R0, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5BDB70:  LDR             R0, [R0]; CShadows::ShadowsStoredToBeRendered ...
5BDB72:  STR             R0, [SP,#0x90+var_84]
5BDB74:  LDR             R0, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BDB7A)
5BDB76:  ADD             R0, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BDB78:  LDR             R0, [R0]; CShadows::asShadowsStored ...
5BDB7A:  STR             R0, [SP,#0x90+var_88]
5BDB7C:  LDR             R0, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5BDB82)
5BDB7E:  ADD             R0, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5BDB80:  LDR             R0, [R0]; CShadows::ShadowsStoredToBeRendered ...
5BDB82:  STR             R0, [SP,#0x90+var_8C]
5BDB84:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5BDB8A)
5BDB86:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5BDB88:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
5BDB8A:  STR             R0, [SP,#0x90+var_7C]
5BDB8C:  LDR             R0, =(_ZN12CPointLights9NumLightsE_ptr - 0x5BDB92)
5BDB8E:  ADD             R0, PC; _ZN12CPointLights9NumLightsE_ptr
5BDB90:  LDR.W           R9, [R0]; CPointLights::NumLights ...
5BDB94:  B               loc_5BDE20
5BDB96:  LDRB            R0, [R6]
5BDB98:  CMP             R0, #0
5BDB9A:  BEQ.W           loc_5BDE2A
5BDB9E:  SUB.W           R0, R6, #0x12
5BDBA2:  VLDR            S0, [R0]
5BDBA6:  VCMP.F32        S0, #0.0
5BDBAA:  VMRS            APSR_nzcv, FPSCR
5BDBAE:  BNE             loc_5BDBD6
5BDBB0:  SUB.W           R0, R6, #0xE
5BDBB4:  VLDR            S0, [R0]
5BDBB8:  VCMP.F32        S0, #0.0
5BDBBC:  VMRS            APSR_nzcv, FPSCR
5BDBC0:  BNE             loc_5BDBD6
5BDBC2:  SUB.W           R0, R6, #0xA
5BDBC6:  VLDR            S0, [R0]
5BDBCA:  VCMP.F32        S0, #0.0
5BDBCE:  VMRS            APSR_nzcv, FPSCR
5BDBD2:  BEQ.W           loc_5BDE2A
5BDBD6:  ADD             R0, SP, #0x90+var_6C; int
5BDBD8:  MOV.W           R1, #0xFFFFFFFF
5BDBDC:  BLX.W           j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
5BDBE0:  SUB.W           R0, R6, #0x2A ; '*'
5BDBE4:  VLDR            S0, [SP,#0x90+var_6C]
5BDBE8:  VLDR            S2, [SP,#0x90+var_68]
5BDBEC:  VLDR            S6, [R0]
5BDBF0:  SUB.W           R0, R6, #0x2E ; '.'
5BDBF4:  VLDR            S4, [SP,#0x90+var_64]
5BDBF8:  VLDR            S8, [R0]
5BDBFC:  VSUB.F32        S24, S6, S2
5BDC00:  SUB.W           R0, R6, #0x26 ; '&'
5BDC04:  VSUB.F32        S22, S8, S0
5BDC08:  VLDR            S0, [R0]
5BDC0C:  SUB.W           R0, R6, #0x16
5BDC10:  VSUB.F32        S0, S0, S4
5BDC14:  VMUL.F32        S2, S24, S24
5BDC18:  VMUL.F32        S4, S22, S22
5BDC1C:  VMUL.F32        S0, S0, S0
5BDC20:  VADD.F32        S2, S4, S2
5BDC24:  VADD.F32        S0, S2, S0
5BDC28:  VSQRT.F32       S26, S0
5BDC2C:  VLDR            S0, [R0]
5BDC30:  VCMPE.F32       S26, S0
5BDC34:  VMRS            APSR_nzcv, FPSCR
5BDC38:  BGE.W           loc_5BDE2A
5BDC3C:  VMUL.F32        S2, S0, S16
5BDC40:  VCMPE.F32       S26, S2
5BDC44:  VMRS            APSR_nzcv, FPSCR
5BDC48:  BGE             loc_5BDC60
5BDC4A:  LDR             R0, [SP,#0x90+var_78]
5BDC4C:  LDRSH.W         R0, [R0,#0x4A]
5BDC50:  ADD.W           R0, R0, R0,LSL#2
5BDC54:  ASRS            R1, R0, #0x1F
5BDC56:  ADD.W           R0, R0, R1,LSR#29
5BDC5A:  MOV.W           R10, R0,ASR#3
5BDC5E:  B               loc_5BDC96
5BDC60:  VADD.F32        S2, S26, S26
5BDC64:  LDR             R0, [SP,#0x90+var_7C]
5BDC66:  LDRSH.W         R0, [R0,#0x4A]
5BDC6A:  ADD.W           R0, R0, R0,LSL#2
5BDC6E:  VSUB.F32        S2, S2, S0
5BDC72:  ASRS            R1, R0, #0x1F
5BDC74:  ADD.W           R0, R0, R1,LSR#29
5BDC78:  ASRS            R0, R0, #3
5BDC7A:  VDIV.F32        S0, S2, S0
5BDC7E:  VMOV            S2, R0
5BDC82:  VSUB.F32        S0, S18, S0
5BDC86:  VCVT.F32.S32    S2, S2
5BDC8A:  VMUL.F32        S0, S0, S2
5BDC8E:  VCVT.S32.F32    S0, S0
5BDC92:  VMOV            R10, S0
5BDC96:  MOV.W           R0, #0xFFFFFFFF; int
5BDC9A:  MOVS            R1, #0; bool
5BDC9C:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5BDCA0:  LDR             R1, [R0,#0x14]
5BDCA2:  VDIV.F32        S26, S18, S26
5BDCA6:  ADD.W           R2, R1, #0x30 ; '0'
5BDCAA:  CMP             R1, #0
5BDCAC:  IT EQ
5BDCAE:  ADDEQ           R2, R0, #4
5BDCB0:  MOV             R0, R4; this
5BDCB2:  LDR.W           R11, [R2,#8]
5BDCB6:  VLDR            S28, [R2]
5BDCBA:  VLDR            S30, [R2,#4]
5BDCBE:  BLX.W           j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5BDCC2:  VLDR            S17, [R0,#0x10]
5BDCC6:  MOV             R0, R4; this
5BDCC8:  BLX.W           j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5BDCCC:  VLDR            S19, [R0,#4]
5BDCD0:  MOV             R0, R4; this
5BDCD2:  BLX.W           j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5BDCD6:  VSUB.F32        S0, S17, S19
5BDCDA:  VLDR            S17, [R0,#0xC]
5BDCDE:  MOV             R0, R4; this
5BDCE0:  VMUL.F32        S24, S24, S26
5BDCE4:  VMUL.F32        S19, S0, S16
5BDCE8:  BLX.W           j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5BDCEC:  VLDR            S21, [R0]
5BDCF0:  MOV             R0, R4; this
5BDCF2:  VMUL.F32        S22, S22, S26
5BDCF6:  BLX.W           j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5BDCFA:  VLDR            S0, [R0,#0x10]
5BDCFE:  VSUB.F32        S2, S17, S21
5BDD02:  VMUL.F32        S6, S24, S20
5BDD06:  LDR             R2, [R4,#0x14]
5BDD08:  VMUL.F32        S8, S22, S20
5BDD0C:  LDR             R0, [SP,#0x90+var_70]
5BDD0E:  VSUB.F32        S0, S19, S0
5BDD12:  LDR             R1, [SP,#0x90+var_74]
5BDD14:  VLDR            S12, [R2,#0x10]
5BDD18:  VLDR            S14, [R2,#0x14]
5BDD1C:  VLDR            S10, [R2]
5BDD20:  VMUL.F32        S4, S2, S16
5BDD24:  VLDR            S1, [R2,#0x28]
5BDD28:  VSUB.F32        S5, S30, S6
5BDD2C:  LDRH            R0, [R0]
5BDD2E:  VSUB.F32        S9, S28, S8
5BDD32:  LDR             R1, [R1]
5BDD34:  VMUL.F32        S3, S0, S14
5BDD38:  VMUL.F32        S7, S0, S12
5BDD3C:  VMUL.F32        S0, S19, S14
5BDD40:  VMUL.F32        S2, S19, S12
5BDD44:  VMUL.F32        S6, S4, S10
5BDD48:  VCMPE.F32       S1, #0.0
5BDD4C:  VMRS            APSR_nzcv, FPSCR
5BDD50:  VSUB.F32        S8, S5, S3
5BDD54:  VSUB.F32        S10, S9, S7
5BDD58:  BLE             loc_5BDDBA
5BDD5A:  CMP             R0, #0x2F ; '/'
5BDD5C:  BHI             loc_5BDE2A
5BDD5E:  VLDR            S12, [R2,#4]
5BDD62:  MOVS            R3, #0x34 ; '4'
5BDD64:  LDR             R5, [SP,#0x90+var_80]
5BDD66:  MLA.W           R3, R0, R3, R5
5BDD6A:  VMUL.F32        S4, S4, S12
5BDD6E:  MOVS            R5, #0
5BDD70:  MOVS            R2, #1
5BDD72:  MOVT            R5, #0x4090
5BDD76:  ADDS            R0, #1
5BDD78:  VSTR            S10, [R3]
5BDD7C:  VSTR            S8, [R3,#4]
5BDD80:  STR.W           R11, [R3,#8]
5BDD84:  VSTR            S2, [R3,#0xC]
5BDD88:  VSTR            S0, [R3,#0x10]
5BDD8C:  VSTR            S6, [R3,#0x14]
5BDD90:  VSTR            S4, [R3,#0x18]
5BDD94:  STRH.W          R10, [R3,#0x2C]
5BDD98:  STR.W           R2, [R3,#0x2E]
5BDD9C:  LDRB.W          R2, [R3,#0x32]
5BDDA0:  STR             R5, [R3,#0x1C]
5BDDA2:  MOV.W           R5, #0x3F800000
5BDDA6:  STRD.W          R5, R1, [R3,#0x20]
5BDDAA:  MOVS            R1, #0
5BDDAC:  STR             R1, [R3,#0x28]
5BDDAE:  AND.W           R1, R2, #0xFA
5BDDB2:  STRB.W          R1, [R3,#0x32]
5BDDB6:  LDR             R1, [SP,#0x90+var_84]
5BDDB8:  B               loc_5BDE1C
5BDDBA:  CMP             R0, #0x2F ; '/'
5BDDBC:  BHI             loc_5BDE2A
5BDDBE:  VLDR            S12, [R2,#4]
5BDDC2:  MOVS            R3, #0x34 ; '4'
5BDDC4:  VNEG.F32        S6, S6
5BDDC8:  LDR             R5, [SP,#0x90+var_88]
5BDDCA:  VNMUL.F32       S4, S4, S12
5BDDCE:  MLA.W           R3, R0, R3, R5
5BDDD2:  MOVS            R5, #0
5BDDD4:  MOVS            R2, #1
5BDDD6:  MOVT            R5, #0x4090
5BDDDA:  ADDS            R0, #1
5BDDDC:  VSTR            S10, [R3]
5BDDE0:  VSTR            S8, [R3,#4]
5BDDE4:  STR.W           R11, [R3,#8]
5BDDE8:  VSTR            S2, [R3,#0xC]
5BDDEC:  VSTR            S0, [R3,#0x10]
5BDDF0:  VSTR            S6, [R3,#0x14]
5BDDF4:  VSTR            S4, [R3,#0x18]
5BDDF8:  STRH.W          R10, [R3,#0x2C]
5BDDFC:  STR.W           R2, [R3,#0x2E]
5BDE00:  LDRB.W          R2, [R3,#0x32]
5BDE04:  STR             R5, [R3,#0x1C]
5BDE06:  MOV.W           R5, #0x3F800000
5BDE0A:  STRD.W          R5, R1, [R3,#0x20]
5BDE0E:  MOVS            R1, #0
5BDE10:  STR             R1, [R3,#0x28]
5BDE12:  AND.W           R1, R2, #0xFA
5BDE16:  STRB.W          R1, [R3,#0x32]
5BDE1A:  LDR             R1, [SP,#0x90+var_8C]
5BDE1C:  STRH            R0, [R1]
5BDE1E:  B               loc_5BDE2A
5BDE20:  LDRB.W          R0, [R6,#-2]
5BDE24:  CMP             R0, #0
5BDE26:  BEQ.W           loc_5BDB96
5BDE2A:  LDR.W           R0, [R9]; CPointLights::NumLights
5BDE2E:  ADD.W           R8, R8, #1
5BDE32:  ADDS            R6, #0x30 ; '0'
5BDE34:  CMP             R8, R0
5BDE36:  BLT             loc_5BDE20
5BDE38:  B               loc_5BDB18
