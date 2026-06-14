; =========================================================
; Game Engine Function: _ZN7CEntity20ModifyMatrixForCraneEv
; Address            : 0x3ECF58 - 0x3ECFCC
; =========================================================

3ECF58:  PUSH            {R4,R5,R7,LR}
3ECF5A:  ADD             R7, SP, #8
3ECF5C:  SUB             SP, SP, #0x48
3ECF5E:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3ECF68)
3ECF60:  MOV             R4, R0
3ECF62:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3ECF6A)
3ECF64:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
3ECF66:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3ECF68:  LDR             R1, [R1]; CTimer::m_CodePause ...
3ECF6A:  LDR             R0, [R0]; CTimer::m_UserPause ...
3ECF6C:  LDRB            R1, [R1]; CTimer::m_CodePause
3ECF6E:  LDRB            R0, [R0]; CTimer::m_UserPause
3ECF70:  ORRS            R0, R1
3ECF72:  LSLS            R0, R0, #0x18
3ECF74:  BNE             loc_3ECFC8
3ECF76:  LDR             R0, [R4,#0x18]
3ECF78:  CBZ             R0, loc_3ECFC8
3ECF7A:  LDR             R0, [R0,#4]
3ECF7C:  MOV             R5, SP
3ECF7E:  MOVS            R2, #0
3ECF80:  ADD.W           R1, R0, #0x10
3ECF84:  MOV             R0, R5
3ECF86:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
3ECF8A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3ECF94)
3ECF8C:  VLDR            S2, =0.0061328
3ECF90:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3ECF92:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3ECF94:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3ECF96:  BFC.W           R0, #0xA, #0x16
3ECF9A:  VMOV            S0, R0
3ECF9E:  MOV             R0, R5; this
3ECFA0:  VCVT.F32.U32    S0, S0
3ECFA4:  VMUL.F32        S0, S0, S2
3ECFA8:  VMOV            R1, S0; x
3ECFAC:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
3ECFB0:  MOV             R0, R5; this
3ECFB2:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
3ECFB6:  LDR             R0, [R4,#0x18]
3ECFB8:  CMP             R0, #0
3ECFBA:  ITT NE
3ECFBC:  LDRNE           R0, [R0,#4]
3ECFBE:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
3ECFC2:  MOV             R0, SP; this
3ECFC4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3ECFC8:  ADD             SP, SP, #0x48 ; 'H'
3ECFCA:  POP             {R4,R5,R7,PC}
