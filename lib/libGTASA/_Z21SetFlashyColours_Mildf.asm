; =========================================================
; Game Engine Function: _Z21SetFlashyColours_Mildf
; Address            : 0x5D1DAC - 0x5D1E82
; =========================================================

5D1DAC:  PUSH            {R4-R7,LR}
5D1DAE:  ADD             R7, SP, #0xC
5D1DB0:  PUSH.W          {R11}
5D1DB4:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5D1DBA)
5D1DB6:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5D1DB8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5D1DBA:  LDRB            R1, [R1,#(_ZN6CTimer22m_snTimeInMillisecondsE+1 - 0x96B4D8)]; CTimer::m_snTimeInMilliseconds
5D1DBC:  LSLS            R1, R1, #0x1F
5D1DBE:  BNE             loc_5D1E3C
5D1DC0:  VMOV            S0, R0
5D1DC4:  LDR             R0, =(AmbientLightColourForFrame_ptr - 0x5D1DD0)
5D1DC6:  LDR             R1, =(DirectionalLightColourForFrame_ptr - 0x5D1DD2)
5D1DC8:  VLDR            S2, =0.9
5D1DCC:  ADD             R0, PC; AmbientLightColourForFrame_ptr
5D1DCE:  ADD             R1, PC; DirectionalLightColourForFrame_ptr
5D1DD0:  LDR             R4, =(dword_A83D40 - 0x5D1DDE)
5D1DD2:  VMUL.F32        S0, S0, S2
5D1DD6:  LDR             R0, [R0]; AmbientLightColourForFrame
5D1DD8:  LDR             R1, [R1]; DirectionalLightColourForFrame
5D1DDA:  ADD             R4, PC; dword_A83D40
5D1DDC:  VLDR            S2, [R0]
5D1DE0:  VLDR            S4, [R0,#4]
5D1DE4:  VLDR            S6, [R0,#8]
5D1DE8:  LDR             R0, =(pAmbient_ptr - 0x5D1DFA)
5D1DEA:  VLDR            S8, [R1]
5D1DEE:  VMUL.F32        S2, S0, S2
5D1DF2:  VLDR            S10, [R1,#4]
5D1DF6:  ADD             R0, PC; pAmbient_ptr
5D1DF8:  VLDR            S12, [R1,#8]
5D1DFC:  VMUL.F32        S8, S0, S8
5D1E00:  VMUL.F32        S4, S0, S4
5D1E04:  LDR             R0, [R0]; pAmbient
5D1E06:  VMUL.F32        S6, S0, S6
5D1E0A:  LDR             R1, =(dword_A83D30 - 0x5D1E1A)
5D1E0C:  VMUL.F32        S10, S0, S10
5D1E10:  VMUL.F32        S0, S0, S12
5D1E14:  LDR             R0, [R0]
5D1E16:  ADD             R1, PC; dword_A83D30
5D1E18:  VSTR            S2, [R1]
5D1E1C:  VSTR            S4, [R1,#4]
5D1E20:  VSTR            S8, [R4]
5D1E24:  VSTR            S10, [R4,#4]
5D1E28:  VSTR            S6, [R1,#8]
5D1E2C:  VSTR            S0, [R4,#8]
5D1E30:  BLX.W           j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
5D1E34:  LDR             R0, =(pDirect_ptr - 0x5D1E3C)
5D1E36:  MOV             R1, R4
5D1E38:  ADD             R0, PC; pDirect_ptr
5D1E3A:  B               loc_5D1E72
5D1E3C:  LDR             R0, =(DirectionalLightColourForFrame_ptr - 0x5D1E44)
5D1E3E:  LDR             R2, =(pAmbient_ptr - 0x5D1E48)
5D1E40:  ADD             R0, PC; DirectionalLightColourForFrame_ptr
5D1E42:  LDR             R1, =(dword_A83D30 - 0x5D1E4E)
5D1E44:  ADD             R2, PC; pAmbient_ptr
5D1E46:  LDR             R6, =(dword_A83D40 - 0x5D1E52)
5D1E48:  LDR             R0, [R0]; DirectionalLightColourForFrame
5D1E4A:  ADD             R1, PC; dword_A83D30
5D1E4C:  LDR             R2, [R2]; pAmbient
5D1E4E:  ADD             R6, PC; dword_A83D40
5D1E50:  LDM.W           R0, {R3-R5}
5D1E54:  LDR             R0, [R2]
5D1E56:  MOV             R2, #0x3F266666
5D1E5E:  STRD.W          R2, R2, [R1]
5D1E62:  STR             R2, [R1,#(dword_A83D38 - 0xA83D30)]
5D1E64:  STM.W           R6, {R3-R5}
5D1E68:  BLX.W           j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
5D1E6C:  LDR             R0, =(pDirect_ptr - 0x5D1E74)
5D1E6E:  MOV             R1, R6
5D1E70:  ADD             R0, PC; pDirect_ptr
5D1E72:  LDR             R0, [R0]; pDirect
5D1E74:  LDR             R0, [R0]
5D1E76:  POP.W           {R11}
5D1E7A:  POP.W           {R4-R7,LR}
5D1E7E:  B.W             sub_193254
