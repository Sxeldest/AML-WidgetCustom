; =========================================================
; Game Engine Function: _ZN11CWaterLevel14SetCameraRangeEv
; Address            : 0x597B90 - 0x597C66
; =========================================================

597B90:  PUSH            {R4,R5,R7,LR}
597B92:  ADD             R7, SP, #8
597B94:  VPUSH           {D8-D10}
597B98:  LDR             R0, =(DETAILEDWATERDIST_ptr - 0x597BA4)
597B9A:  VMOV.F32        S20, #0.5
597B9E:  LDR             R1, =(TheCamera_ptr - 0x597BA6)
597BA0:  ADD             R0, PC; DETAILEDWATERDIST_ptr
597BA2:  ADD             R1, PC; TheCamera_ptr
597BA4:  LDR             R0, [R0]; DETAILEDWATERDIST
597BA6:  LDR             R1, [R1]; TheCamera
597BA8:  VLDR            S0, [R0]
597BAC:  LDR             R0, [R1,#(dword_951FBC - 0x951FA8)]
597BAE:  VCVT.F32.S32    S16, S0
597BB2:  ADD.W           R4, R0, #0x30 ; '0'
597BB6:  CMP             R0, #0
597BB8:  IT EQ
597BBA:  ADDEQ           R4, R1, #4
597BBC:  VLDR            S18, [R4]
597BC0:  VSUB.F32        S0, S18, S16
597BC4:  VMUL.F32        S0, S0, S20
597BC8:  VMOV            R0, S0; x
597BCC:  BLX.W           floorf
597BD0:  VADD.F32        S0, S18, S16
597BD4:  LDR             R5, =(CameraRangeMaxX_ptr - 0x597BDE)
597BD6:  VMOV            S18, R0
597BDA:  ADD             R5, PC; CameraRangeMaxX_ptr
597BDC:  VMUL.F32        S0, S0, S20
597BE0:  VMOV            R1, S0
597BE4:  MOV             R0, R1; x
597BE6:  BLX             ceilf
597BEA:  VCVT.S32.F32    S2, S18
597BEE:  LDR             R1, =(CameraRangeMinX_ptr - 0x597BFA)
597BF0:  VMOV            S0, R0
597BF4:  LDR             R0, [R5]; CameraRangeMaxX
597BF6:  ADD             R1, PC; CameraRangeMinX_ptr
597BF8:  VCVT.S32.F32    S0, S0
597BFC:  LDR             R1, [R1]; CameraRangeMinX
597BFE:  VMOV            R2, S2
597C02:  LSLS            R2, R2, #1
597C04:  STR             R2, [R1]
597C06:  VMOV            R1, S0
597C0A:  LSLS            R1, R1, #1
597C0C:  STR             R1, [R0]
597C0E:  VLDR            S18, [R4,#4]
597C12:  VSUB.F32        S0, S18, S16
597C16:  VMUL.F32        S0, S0, S20
597C1A:  VMOV            R0, S0; x
597C1E:  BLX.W           floorf
597C22:  VADD.F32        S0, S18, S16
597C26:  MOV             R4, R0
597C28:  VMUL.F32        S0, S0, S20
597C2C:  VMOV            R0, S0; x
597C30:  BLX             ceilf
597C34:  VMOV            S0, R0
597C38:  LDR             R1, =(CameraRangeMaxY_ptr - 0x597C48)
597C3A:  LDR             R2, =(CameraRangeMinY_ptr - 0x597C4A)
597C3C:  VMOV            S2, R4
597C40:  VCVT.S32.F32    S0, S0
597C44:  ADD             R1, PC; CameraRangeMaxY_ptr
597C46:  ADD             R2, PC; CameraRangeMinY_ptr
597C48:  VCVT.S32.F32    S2, S2
597C4C:  LDR             R0, [R1]; CameraRangeMaxY
597C4E:  LDR             R1, [R2]; CameraRangeMinY
597C50:  VMOV            R2, S0
597C54:  LSLS            R2, R2, #1
597C56:  STR             R2, [R0]
597C58:  VMOV            R0, S2
597C5C:  LSLS            R0, R0, #1
597C5E:  STR             R0, [R1]
597C60:  VPOP            {D8-D10}
597C64:  POP             {R4,R5,R7,PC}
