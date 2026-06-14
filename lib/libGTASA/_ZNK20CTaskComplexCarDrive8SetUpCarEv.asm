; =========================================================
; Game Engine Function: _ZNK20CTaskComplexCarDrive8SetUpCarEv
; Address            : 0x4FBF8C - 0x4FBFA8
; =========================================================

4FBF8C:  LDR             R1, [R0,#0xC]
4FBF8E:  LDRB.W          R2, [R1,#0x3BD]
4FBF92:  STRB            R2, [R0,#0x1D]
4FBF94:  LDRB.W          R2, [R1,#0x3BE]
4FBF98:  STRB            R2, [R0,#0x1E]
4FBF9A:  MOVS            R2, #1
4FBF9C:  LDRB.W          R1, [R1,#0x3D4]
4FBFA0:  STRB.W          R2, [R0,#0x20]
4FBFA4:  STRB            R1, [R0,#0x1F]
4FBFA6:  BX              LR
