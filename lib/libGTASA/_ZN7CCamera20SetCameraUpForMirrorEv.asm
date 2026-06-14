; =========================================================
; Game Engine Function: _ZN7CCamera20SetCameraUpForMirrorEv
; Address            : 0x3DEE1C - 0x3DEF80
; =========================================================

3DEE1C:  PUSH            {R4-R7,LR}
3DEE1E:  ADD             R7, SP, #0xC
3DEE20:  PUSH.W          {R11}
3DEE24:  SUB             SP, SP, #0x48
3DEE26:  MOV             R4, R0
3DEE28:  LDR             R0, =(StoreMatrixForMirror_ptr - 0x3DEE32)
3DEE2A:  ADDW            R5, R4, #0x8FC
3DEE2E:  ADD             R0, PC; StoreMatrixForMirror_ptr
3DEE30:  MOV             R1, R5
3DEE32:  LDR             R0, [R0]; StoreMatrixForMirror
3DEE34:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3DEE38:  ADDW            R1, R4, #0xA64
3DEE3C:  MOV             R0, R5
3DEE3E:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3DEE42:  MOV             R0, R4; this
3DEE44:  MOVS            R1, #1; bool
3DEE46:  BLX             j__ZN7CCamera23CopyCameraMatrixToRWCamEb; CCamera::CopyCameraMatrixToRWCam(bool)
3DEE4A:  MOV             R6, SP
3DEE4C:  MOV             R1, R5
3DEE4E:  MOV             R0, R6; CMatrix *
3DEE50:  BLX             j__Z6InvertRK7CMatrix; Invert(CMatrix const&)
3DEE54:  ADDW            R0, R4, #0x9D4
3DEE58:  MOV             R1, R6
3DEE5A:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3DEE5E:  MOV             R0, R6; this
3DEE60:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3DEE64:  MOV             R0, R4; this
3DEE66:  MOVS            R1, #1; bool
3DEE68:  BLX             j__ZN7CCamera22CalculateFrustumPlanesEb; CCamera::CalculateFrustumPlanes(bool)
3DEE6C:  ADDW            R0, R4, #0x90C
3DEE70:  VLDR            S0, [R0]
3DEE74:  VCMP.F32        S0, #0.0
3DEE78:  VMRS            APSR_nzcv, FPSCR
3DEE7C:  BNE             loc_3DEEA0
3DEE7E:  ADD.W           R1, R4, #0x910
3DEE82:  VLDR            S2, [R1]
3DEE86:  VCMP.F32        S2, #0.0
3DEE8A:  VMRS            APSR_nzcv, FPSCR
3DEE8E:  ITTTT EQ
3DEE90:  VLDREQ          S0, =0.0001
3DEE94:  MOVWEQ          R1, #0xB717
3DEE98:  MOVTEQ          R1, #0x38D1
3DEE9C:  STREQ           R1, [R0]
3DEE9E:  B               loc_3DEEA4
3DEEA0:  VLDR            S2, [R0,#4]
3DEEA4:  VMUL.F32        S4, S0, S0
3DEEA8:  VSTR            S0, [R4,#0xD8]
3DEEAC:  VMUL.F32        S6, S2, S2
3DEEB0:  VSTR            S2, [R4,#0xDC]
3DEEB4:  VADD.F32        S4, S6, S4
3DEEB8:  VSQRT.F32       S4, S4
3DEEBC:  VCMP.F32        S4, #0.0
3DEEC0:  VMRS            APSR_nzcv, FPSCR
3DEEC4:  BNE             loc_3DEED0
3DEEC6:  MOV.W           R0, #0x3F800000
3DEECA:  STR.W           R0, [R4,#0xD8]
3DEECE:  B               loc_3DEEE0
3DEED0:  VDIV.F32        S0, S0, S4
3DEED4:  VDIV.F32        S2, S2, S4
3DEED8:  VSTR            S0, [R4,#0xD8]
3DEEDC:  VSTR            S2, [R4,#0xDC]
3DEEE0:  LDR             R0, =(renderQueue_ptr - 0x3DEEE8)
3DEEE2:  MOVS            R3, #0x29 ; ')'
3DEEE4:  ADD             R0, PC; renderQueue_ptr
3DEEE6:  LDR             R0, [R0]; renderQueue
3DEEE8:  LDR             R1, [R0]
3DEEEA:  LDR.W           R2, [R1,#0x274]
3DEEEE:  STR.W           R3, [R1,#0x278]
3DEEF2:  STR             R3, [R2]
3DEEF4:  MOVS            R3, #1
3DEEF6:  LDR.W           R2, [R1,#0x274]
3DEEFA:  ADDS            R2, #4
3DEEFC:  STR.W           R2, [R1,#0x274]
3DEF00:  LDR             R1, [R0]
3DEF02:  LDR.W           R2, [R1,#0x274]
3DEF06:  STR             R3, [R2]
3DEF08:  LDR.W           R2, [R1,#0x274]
3DEF0C:  ADDS            R2, #4
3DEF0E:  STR.W           R2, [R1,#0x274]
3DEF12:  LDR             R4, [R0]
3DEF14:  LDRB.W          R0, [R4,#0x259]
3DEF18:  CMP             R0, #0
3DEF1A:  ITT NE
3DEF1C:  LDRNE.W         R0, [R4,#0x25C]; mutex
3DEF20:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
3DEF24:  LDRD.W          R1, R2, [R4,#0x270]
3DEF28:  ADD.W           R0, R4, #0x270
3DEF2C:  DMB.W           ISH
3DEF30:  SUBS            R1, R2, R1
3DEF32:  LDREX.W         R2, [R0]
3DEF36:  ADD             R2, R1
3DEF38:  STREX.W         R3, R2, [R0]
3DEF3C:  CMP             R3, #0
3DEF3E:  BNE             loc_3DEF32
3DEF40:  DMB.W           ISH
3DEF44:  LDRB.W          R0, [R4,#0x259]
3DEF48:  CMP             R0, #0
3DEF4A:  ITT NE
3DEF4C:  LDRNE.W         R0, [R4,#0x25C]; mutex
3DEF50:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
3DEF54:  LDRB.W          R0, [R4,#0x258]
3DEF58:  CMP             R0, #0
3DEF5A:  ITT EQ
3DEF5C:  MOVEQ           R0, R4; this
3DEF5E:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
3DEF62:  LDR.W           R1, [R4,#0x270]
3DEF66:  LDR.W           R0, [R4,#0x264]
3DEF6A:  ADD.W           R1, R1, #0x400
3DEF6E:  CMP             R1, R0
3DEF70:  ITT HI
3DEF72:  MOVHI           R0, R4; this
3DEF74:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
3DEF78:  ADD             SP, SP, #0x48 ; 'H'
3DEF7A:  POP.W           {R11}
3DEF7E:  POP             {R4-R7,PC}
