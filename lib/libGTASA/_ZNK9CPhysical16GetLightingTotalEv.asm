; =========================================================
; Game Engine Function: _ZNK9CPhysical16GetLightingTotalEv
; Address            : 0x407DD8 - 0x407EBA
; =========================================================

407DD8:  PUSH            {R4,R5,R7,LR}
407DDA:  ADD             R7, SP, #8
407DDC:  VPUSH           {D8-D9}
407DE0:  MOV             R4, R0
407DE2:  LDRB.W          R0, [R4,#0x33]
407DE6:  CBZ             R0, loc_407DEC
407DE8:  MOVS            R5, #1
407DEA:  B               loc_407E14
407DEC:  LDRB.W          R0, [R4,#0x3A]
407DF0:  AND.W           R0, R0, #7
407DF4:  CMP             R0, #3
407DF6:  BNE             loc_407E12
407DF8:  LDR.W           R0, [R4,#0x444]
407DFC:  CBZ             R0, loc_407E12
407DFE:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x407E04)
407E00:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
407E02:  LDR             R1, [R1]; CGame::currArea ...
407E04:  LDR             R1, [R1]; CGame::currArea
407E06:  CMP             R1, #0
407E08:  ITT EQ
407E0A:  LDRBEQ.W        R0, [R0,#0x86]; this
407E0E:  CMPEQ           R0, #0
407E10:  BNE             loc_407DE8
407E12:  MOVS            R5, #0
407E14:  VLDR            S16, [R4,#0x130]
407E18:  BLX             j__ZN10CTimeCycle30GetAmbientRed_BeforeBrightnessEv; CTimeCycle::GetAmbientRed_BeforeBrightness(void)
407E1C:  VMOV            S18, R0; this
407E20:  BLX             j__ZN10CTimeCycle32GetAmbientGreen_BeforeBrightnessEv; CTimeCycle::GetAmbientGreen_BeforeBrightness(void)
407E24:  VMOV            S0, R0; this
407E28:  VADD.F32        S18, S18, S0
407E2C:  BLX             j__ZN10CTimeCycle31GetAmbientBlue_BeforeBrightnessEv; CTimeCycle::GetAmbientBlue_BeforeBrightness(void)
407E30:  VMOV            S0, R0
407E34:  VLDR            S2, =0.33333
407E38:  CMP             R5, #0
407E3A:  VADD.F32        S0, S18, S0
407E3E:  VMUL.F32        S0, S0, S2
407E42:  VADD.F32        S0, S16, S0
407E46:  BNE             loc_407EA8
407E48:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x407E4E)
407E4A:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
407E4C:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
407E4E:  VLDR            S2, [R0,#0x78]
407E52:  VLDR            S4, [R0,#0x7C]
407E56:  VLDR            S6, [R0,#0x80]
407E5A:  VADD.F32        S2, S2, S4
407E5E:  VLDR            S8, [R0,#0x88]
407E62:  VLDR            S10, [R0,#0x8C]
407E66:  VLDR            S12, [R0,#0x90]
407E6A:  VADD.F32        S4, S8, S10
407E6E:  LDR             R0, =(TEST_ADD_AMBIENT_LIGHT_FRAC_ptr - 0x407E78)
407E70:  VMOV.F32        S8, #1.0
407E74:  ADD             R0, PC; TEST_ADD_AMBIENT_LIGHT_FRAC_ptr
407E76:  VADD.F32        S2, S2, S6
407E7A:  VLDR            S6, =765.0
407E7E:  LDR             R0, [R0]; TEST_ADD_AMBIENT_LIGHT_FRAC
407E80:  VADD.F32        S4, S4, S12
407E84:  VDIV.F32        S2, S2, S6
407E88:  VDIV.F32        S4, S4, S6
407E8C:  VLDR            S6, [R0]
407E90:  VSUB.F32        S8, S8, S6
407E94:  VMUL.F32        S2, S6, S2
407E98:  VMUL.F32        S4, S6, S4
407E9C:  VADD.F32        S2, S8, S2
407EA0:  VMUL.F32        S0, S0, S2
407EA4:  VADD.F32        S0, S0, S4
407EA8:  VLDR            S2, [R4,#0x134]
407EAC:  VADD.F32        S0, S0, S2
407EB0:  VMOV            R0, S0
407EB4:  VPOP            {D8-D9}
407EB8:  POP             {R4,R5,R7,PC}
