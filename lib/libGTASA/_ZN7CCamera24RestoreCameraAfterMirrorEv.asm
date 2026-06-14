; =========================================================
; Game Engine Function: _ZN7CCamera24RestoreCameraAfterMirrorEv
; Address            : 0x3DEF8C - 0x3DF0DC
; =========================================================

3DEF8C:  PUSH            {R4,R5,R7,LR}
3DEF8E:  ADD             R7, SP, #8
3DEF90:  SUB             SP, SP, #0x48
3DEF92:  MOV             R4, R0
3DEF94:  LDR             R0, =(StoreMatrixForMirror_ptr - 0x3DEF9A)
3DEF96:  ADD             R0, PC; StoreMatrixForMirror_ptr
3DEF98:  LDR             R1, [R0]; StoreMatrixForMirror ; CMatrix *
3DEF9A:  MOV             R0, R4; this
3DEF9C:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
3DEFA0:  MOV             R0, R4; this
3DEFA2:  MOVS            R1, #1; bool
3DEFA4:  BLX             j__ZN7CCamera23CopyCameraMatrixToRWCamEb; CCamera::CopyCameraMatrixToRWCam(bool)
3DEFA8:  MOV             R5, SP
3DEFAA:  ADDW            R1, R4, #0x8FC
3DEFAE:  MOV             R0, R5; CMatrix *
3DEFB0:  BLX             j__Z6InvertRK7CMatrix; Invert(CMatrix const&)
3DEFB4:  ADDW            R0, R4, #0x9D4
3DEFB8:  MOV             R1, R5
3DEFBA:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3DEFBE:  MOV             R0, R5; this
3DEFC0:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3DEFC4:  MOV             R0, R4; this
3DEFC6:  MOVS            R1, #0; bool
3DEFC8:  BLX             j__ZN7CCamera22CalculateFrustumPlanesEb; CCamera::CalculateFrustumPlanes(bool)
3DEFCC:  ADDW            R0, R4, #0x90C
3DEFD0:  VLDR            S0, [R0]
3DEFD4:  VCMP.F32        S0, #0.0
3DEFD8:  VMRS            APSR_nzcv, FPSCR
3DEFDC:  BNE             loc_3DF000
3DEFDE:  ADD.W           R1, R4, #0x910
3DEFE2:  VLDR            S2, [R1]
3DEFE6:  VCMP.F32        S2, #0.0
3DEFEA:  VMRS            APSR_nzcv, FPSCR
3DEFEE:  ITTTT EQ
3DEFF0:  VLDREQ          S0, =0.0001
3DEFF4:  MOVWEQ          R1, #0xB717
3DEFF8:  MOVTEQ          R1, #0x38D1
3DEFFC:  STREQ           R1, [R0]
3DEFFE:  B               loc_3DF004
3DF000:  VLDR            S2, [R0,#4]
3DF004:  VMUL.F32        S4, S0, S0
3DF008:  VSTR            S0, [R4,#0xD8]
3DF00C:  VMUL.F32        S6, S2, S2
3DF010:  VSTR            S2, [R4,#0xDC]
3DF014:  VADD.F32        S4, S6, S4
3DF018:  VSQRT.F32       S4, S4
3DF01C:  VCMP.F32        S4, #0.0
3DF020:  VMRS            APSR_nzcv, FPSCR
3DF024:  BNE             loc_3DF030
3DF026:  MOV.W           R0, #0x3F800000
3DF02A:  STR.W           R0, [R4,#0xD8]
3DF02E:  B               loc_3DF040
3DF030:  VDIV.F32        S0, S0, S4
3DF034:  VDIV.F32        S2, S2, S4
3DF038:  VSTR            S0, [R4,#0xD8]
3DF03C:  VSTR            S2, [R4,#0xDC]
3DF040:  LDR             R0, =(renderQueue_ptr - 0x3DF048)
3DF042:  MOVS            R3, #0x29 ; ')'
3DF044:  ADD             R0, PC; renderQueue_ptr
3DF046:  LDR             R0, [R0]; renderQueue
3DF048:  LDR             R1, [R0]
3DF04A:  LDR.W           R2, [R1,#0x274]
3DF04E:  STR.W           R3, [R1,#0x278]
3DF052:  STR             R3, [R2]
3DF054:  MOVS            R3, #0
3DF056:  LDR.W           R2, [R1,#0x274]
3DF05A:  ADDS            R2, #4
3DF05C:  STR.W           R2, [R1,#0x274]
3DF060:  LDR             R1, [R0]
3DF062:  LDR.W           R2, [R1,#0x274]
3DF066:  STR             R3, [R2]
3DF068:  LDR.W           R2, [R1,#0x274]
3DF06C:  ADDS            R2, #4
3DF06E:  STR.W           R2, [R1,#0x274]
3DF072:  LDR             R4, [R0]
3DF074:  LDRB.W          R0, [R4,#0x259]
3DF078:  CMP             R0, #0
3DF07A:  ITT NE
3DF07C:  LDRNE.W         R0, [R4,#0x25C]; mutex
3DF080:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
3DF084:  LDRD.W          R1, R2, [R4,#0x270]
3DF088:  ADD.W           R0, R4, #0x270
3DF08C:  DMB.W           ISH
3DF090:  SUBS            R1, R2, R1
3DF092:  LDREX.W         R2, [R0]
3DF096:  ADD             R2, R1
3DF098:  STREX.W         R3, R2, [R0]
3DF09C:  CMP             R3, #0
3DF09E:  BNE             loc_3DF092
3DF0A0:  DMB.W           ISH
3DF0A4:  LDRB.W          R0, [R4,#0x259]
3DF0A8:  CMP             R0, #0
3DF0AA:  ITT NE
3DF0AC:  LDRNE.W         R0, [R4,#0x25C]; mutex
3DF0B0:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
3DF0B4:  LDRB.W          R0, [R4,#0x258]
3DF0B8:  CMP             R0, #0
3DF0BA:  ITT EQ
3DF0BC:  MOVEQ           R0, R4; this
3DF0BE:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
3DF0C2:  LDR.W           R1, [R4,#0x270]
3DF0C6:  LDR.W           R0, [R4,#0x264]
3DF0CA:  ADD.W           R1, R1, #0x400
3DF0CE:  CMP             R1, R0
3DF0D0:  ITT HI
3DF0D2:  MOVHI           R0, R4; this
3DF0D4:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
3DF0D8:  ADD             SP, SP, #0x48 ; 'H'
3DF0DA:  POP             {R4,R5,R7,PC}
