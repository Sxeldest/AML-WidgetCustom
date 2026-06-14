; =========================================================
; Game Engine Function: _ZN27CCompressedMatrixNotAligned22CompressFromFullMatrixER7CMatrix
; Address            : 0x44FF2C - 0x44FFAA
; =========================================================

44FF2C:  VLDR            S0, =127.0
44FF30:  VLDR            S2, [R1]
44FF34:  VMUL.F32        S2, S2, S0
44FF38:  VCVT.S32.F32    S2, S2
44FF3C:  VMOV            R2, S2
44FF40:  STRB            R2, [R0,#0xC]
44FF42:  VLDR            S2, [R1,#4]
44FF46:  VMUL.F32        S2, S2, S0
44FF4A:  VCVT.S32.F32    S2, S2
44FF4E:  VMOV            R2, S2
44FF52:  STRB            R2, [R0,#0xD]
44FF54:  VLDR            S2, [R1,#8]
44FF58:  VMUL.F32        S2, S2, S0
44FF5C:  VCVT.S32.F32    S2, S2
44FF60:  VMOV            R2, S2
44FF64:  STRB            R2, [R0,#0xE]
44FF66:  VLDR            S2, [R1,#0x10]
44FF6A:  VMUL.F32        S2, S2, S0
44FF6E:  VCVT.S32.F32    S2, S2
44FF72:  VMOV            R2, S2
44FF76:  STRB            R2, [R0,#0xF]
44FF78:  VLDR            S2, [R1,#0x14]
44FF7C:  VMUL.F32        S2, S2, S0
44FF80:  VCVT.S32.F32    S2, S2
44FF84:  VMOV            R2, S2
44FF88:  STRB            R2, [R0,#0x10]
44FF8A:  VLDR            S2, [R1,#0x18]
44FF8E:  VMUL.F32        S0, S2, S0
44FF92:  VCVT.S32.F32    S0, S0
44FF96:  VMOV            R2, S0
44FF9A:  STRB            R2, [R0,#0x11]
44FF9C:  LDR             R2, [R1,#0x30]
44FF9E:  STR             R2, [R0]
44FFA0:  LDR             R2, [R1,#0x34]
44FFA2:  STR             R2, [R0,#4]
44FFA4:  LDR             R1, [R1,#0x38]
44FFA6:  STR             R1, [R0,#8]
44FFA8:  BX              LR
