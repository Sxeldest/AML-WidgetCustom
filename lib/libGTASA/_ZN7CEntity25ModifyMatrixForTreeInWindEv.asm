; =========================================================
; Game Engine Function: _ZN7CEntity25ModifyMatrixForTreeInWindEv
; Address            : 0x3ECDA0 - 0x3ECF1C
; =========================================================

3ECDA0:  PUSH            {R4,R5,R7,LR}
3ECDA2:  ADD             R7, SP, #8
3ECDA4:  VPUSH           {D8-D9}
3ECDA8:  SUB             SP, SP, #8
3ECDAA:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3ECDB4)
3ECDAC:  MOV             R4, R0
3ECDAE:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3ECDB6)
3ECDB0:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
3ECDB2:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3ECDB4:  LDR             R1, [R1]; CTimer::m_CodePause ...
3ECDB6:  LDR             R0, [R0]; CTimer::m_UserPause ...
3ECDB8:  LDRB            R1, [R1]; CTimer::m_CodePause
3ECDBA:  LDRB            R0, [R0]; CTimer::m_UserPause
3ECDBC:  ORRS            R0, R1
3ECDBE:  LSLS            R0, R0, #0x18
3ECDC0:  BEQ             loc_3ECDCA
3ECDC2:  ADD             SP, SP, #8
3ECDC4:  VPOP            {D8-D9}
3ECDC8:  POP             {R4,R5,R7,PC}
3ECDCA:  LDR             R0, [R4,#0x18]
3ECDCC:  CMP             R0, #0
3ECDCE:  BEQ             loc_3ECDC2
3ECDD0:  LDR             R1, =(_ZN8CWeather4WindE_ptr - 0x3ECDDC)
3ECDD2:  VMOV.F32        S0, #0.5
3ECDD6:  LDR             R5, [R0,#4]
3ECDD8:  ADD             R1, PC; _ZN8CWeather4WindE_ptr
3ECDDA:  LDR             R1, [R1]; CWeather::Wind ...
3ECDDC:  VLDR            S16, [R1]
3ECDE0:  VCMPE.F32       S16, S0
3ECDE4:  VMRS            APSR_nzcv, FPSCR
3ECDE8:  BGE             loc_3ECE30
3ECDEA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3ECDF6)
3ECDEC:  ADR             R1, dword_3ECF44
3ECDEE:  VLDR            S2, =0.0015332
3ECDF2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3ECDF4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3ECDF6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3ECDF8:  ADD             R0, R4
3ECDFA:  BFC.W           R0, #0xC, #0x14
3ECDFE:  VMOV            S0, R0
3ECE02:  VCVT.F32.U32    S0, S0
3ECE06:  VMUL.F32        S0, S0, S2
3ECE0A:  VMOV            R0, S0; x
3ECE0E:  VLDR            S0, =0.2
3ECE12:  VCMPE.F32       S16, S0
3ECE16:  VMRS            APSR_nzcv, FPSCR
3ECE1A:  IT LT
3ECE1C:  ADDLT           R1, #4
3ECE1E:  VLDR            S18, [R1]
3ECE22:  BLX             sinf
3ECE26:  VMOV            S0, R0
3ECE2A:  VMUL.F32        S0, S18, S0
3ECE2E:  B               loc_3ECE9C
3ECE30:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3ECE3C)
3ECE32:  VMOV.F32        S4, #1.0
3ECE36:  LDRH            R1, [R4,#0x24]
3ECE38:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3ECE3A:  VLDR            S2, =0.00024414
3ECE3E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3ECE40:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3ECE42:  ADD.W           R0, R1, R0,LSL#3
3ECE46:  MOV             R1, R0
3ECE48:  BFC.W           R1, #0xC, #0x14
3ECE4C:  VMOV            S0, R1
3ECE50:  LDR             R1, =(WindTabel_ptr - 0x3ECE5A)
3ECE52:  VCVT.F32.U32    S0, S0
3ECE56:  ADD             R1, PC; WindTabel_ptr
3ECE58:  UBFX.W          R2, R0, #0xC, #4
3ECE5C:  LDR             R1, [R1]; WindTabel
3ECE5E:  ADD.W           R2, R1, R2,LSL#2
3ECE62:  VLDR            S6, [R2]
3ECE66:  MOVS            R2, #1
3ECE68:  VMUL.F32        S0, S0, S2
3ECE6C:  ADD.W           R0, R2, R0,LSR#12
3ECE70:  AND.W           R0, R0, #0xF
3ECE74:  ADD.W           R0, R1, R0,LSL#2
3ECE78:  VSUB.F32        S2, S4, S0
3ECE7C:  VMUL.F32        S2, S6, S2
3ECE80:  VLDR            S6, [R0]
3ECE84:  VMUL.F32        S0, S6, S0
3ECE88:  VADD.F32        S2, S2, S4
3ECE8C:  VADD.F32        S0, S0, S2
3ECE90:  VLDR            S2, =0.015
3ECE94:  VMUL.F32        S0, S0, S2
3ECE98:  VMUL.F32        S0, S16, S0
3ECE9C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3ECEAA)
3ECE9E:  ADD.W           R3, R5, #0x34 ; '4'
3ECEA2:  VSTR            S0, [R5,#0x30]
3ECEA6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3ECEA8:  LDRSH.W         R1, [R4,#0x26]
3ECEAC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3ECEAE:  LDR.W           R0, [R0,R1,LSL#2]
3ECEB2:  LDRH            R0, [R0,#0x28]
3ECEB4:  AND.W           R0, R0, #0x7800
3ECEB8:  CMP.W           R0, #0x1000
3ECEBC:  LDR             R0, =(_ZN8CWeather7WindDirE_ptr - 0x3ECED4)
3ECEBE:  ITTTT EQ
3ECEC0:  VLDREQ          S2, =0.03
3ECEC4:  VMULEQ.F32      S2, S16, S2
3ECEC8:  VADDEQ.F32      S0, S0, S2
3ECECC:  VSTREQ          S0, [R5,#0x30]
3ECED0:  ADD             R0, PC; _ZN8CWeather7WindDirE_ptr
3ECED2:  LDR             R0, [R0]; CWeather::WindDir ...
3ECED4:  VLDR            S2, [R0]
3ECED8:  VLDR            S4, [R0,#4]
3ECEDC:  VMUL.F32        S2, S2, S0
3ECEE0:  VMUL.F32        S0, S4, S0
3ECEE4:  VSTR            S2, [R5,#0x30]
3ECEE8:  VSTR            S0, [R5,#0x34]
3ECEEC:  LDR             R0, [R4,#0x14]
3ECEEE:  ADD.W           R2, R0, #0x30 ; '0'
3ECEF2:  CMP             R0, #0
3ECEF4:  IT EQ
3ECEF6:  ADDEQ           R2, R4, #4
3ECEF8:  LDM             R2, {R0-R2}
3ECEFA:  STR             R3, [SP,#0x20+var_20]
3ECEFC:  ADD.W           R3, R5, #0x30 ; '0'
3ECF00:  BLX             j__ZN14CWindModifiers16FindWindModifierE7CVectorPfS1_; CWindModifiers::FindWindModifier(CVector,float *,float *)
3ECF04:  LDR             R0, [R4,#0x18]
3ECF06:  CMP             R0, #0
3ECF08:  BEQ.W           loc_3ECDC2
3ECF0C:  LDR             R0, [R0,#4]
3ECF0E:  ADD             SP, SP, #8
3ECF10:  VPOP            {D8-D9}
3ECF14:  POP.W           {R4,R5,R7,LR}
3ECF18:  B.W             j_j__Z20RwFrameUpdateObjectsP7RwFrame; j_RwFrameUpdateObjects(RwFrame *)
