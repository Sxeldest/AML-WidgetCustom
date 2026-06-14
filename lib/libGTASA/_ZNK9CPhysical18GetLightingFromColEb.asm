; =========================================================
; Game Engine Function: _ZNK9CPhysical18GetLightingFromColEb
; Address            : 0x407D20 - 0x407DC8
; =========================================================

407D20:  PUSH            {R4,R6,R7,LR}
407D22:  ADD             R7, SP, #8
407D24:  VPUSH           {D8-D9}
407D28:  MOV             R4, R1
407D2A:  VLDR            S16, [R0,#0x130]
407D2E:  BLX             j__ZN10CTimeCycle30GetAmbientRed_BeforeBrightnessEv; CTimeCycle::GetAmbientRed_BeforeBrightness(void)
407D32:  VMOV            S18, R0; this
407D36:  BLX             j__ZN10CTimeCycle32GetAmbientGreen_BeforeBrightnessEv; CTimeCycle::GetAmbientGreen_BeforeBrightness(void)
407D3A:  VMOV            S0, R0; this
407D3E:  VADD.F32        S18, S18, S0
407D42:  BLX             j__ZN10CTimeCycle31GetAmbientBlue_BeforeBrightnessEv; CTimeCycle::GetAmbientBlue_BeforeBrightness(void)
407D46:  VMOV            S0, R0
407D4A:  VLDR            S2, =0.33333
407D4E:  CMP             R4, #0
407D50:  VADD.F32        S0, S18, S0
407D54:  VMUL.F32        S0, S0, S2
407D58:  VADD.F32        S0, S16, S0
407D5C:  BNE             loc_407DBE
407D5E:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x407D64)
407D60:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
407D62:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
407D64:  VLDR            S2, [R0,#0x78]
407D68:  VLDR            S4, [R0,#0x7C]
407D6C:  VLDR            S6, [R0,#0x80]
407D70:  VADD.F32        S2, S2, S4
407D74:  VLDR            S8, [R0,#0x88]
407D78:  VLDR            S10, [R0,#0x8C]
407D7C:  VLDR            S12, [R0,#0x90]
407D80:  VADD.F32        S4, S8, S10
407D84:  LDR             R0, =(TEST_ADD_AMBIENT_LIGHT_FRAC_ptr - 0x407D8E)
407D86:  VMOV.F32        S8, #1.0
407D8A:  ADD             R0, PC; TEST_ADD_AMBIENT_LIGHT_FRAC_ptr
407D8C:  VADD.F32        S2, S2, S6
407D90:  VLDR            S6, =765.0
407D94:  LDR             R0, [R0]; TEST_ADD_AMBIENT_LIGHT_FRAC
407D96:  VADD.F32        S4, S4, S12
407D9A:  VDIV.F32        S2, S2, S6
407D9E:  VDIV.F32        S4, S4, S6
407DA2:  VLDR            S6, [R0]
407DA6:  VSUB.F32        S8, S8, S6
407DAA:  VMUL.F32        S2, S6, S2
407DAE:  VMUL.F32        S4, S6, S4
407DB2:  VADD.F32        S2, S8, S2
407DB6:  VMUL.F32        S0, S0, S2
407DBA:  VADD.F32        S0, S0, S4
407DBE:  VMOV            R0, S0
407DC2:  VPOP            {D8-D9}
407DC6:  POP             {R4,R6,R7,PC}
