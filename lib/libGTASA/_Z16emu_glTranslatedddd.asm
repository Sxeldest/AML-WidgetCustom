; =========================================================
; Game Engine Function: _Z16emu_glTranslatedddd
; Address            : 0x1BAE18 - 0x1BAE86
; =========================================================

1BAE18:  LDR.W           R12, =(curStack_ptr - 0x1BAE2A)
1BAE1C:  VMOV            D16, R0, R1
1BAE20:  VMOV            D17, R2, R3
1BAE24:  MOVS            R2, #1
1BAE26:  ADD             R12, PC; curStack_ptr
1BAE28:  VCVT.F32.F64    S0, D16
1BAE2C:  LDR.W           R0, [R12]; curStack
1BAE30:  LDR             R0, [R0]; ModelViewStack
1BAE32:  VCVT.F32.F64    S2, D17
1BAE36:  LDR.W           R1, [R0,#(dword_6B39E4 - 0x6B37C4)]
1BAE3A:  ADD.W           R1, R1, R1,LSL#4
1BAE3E:  ADD.W           R0, R0, R1,LSL#2
1BAE42:  VLDR            D16, [SP,#arg_0]
1BAE46:  MOV             R1, R0
1BAE48:  VCVT.F32.F64    S4, D16
1BAE4C:  VLD1.32         {D16-D17}, [R1]!
1BAE50:  VMUL.F32        Q8, Q8, D0[0]
1BAE54:  VLD1.32         {D18-D19}, [R1]
1BAE58:  ADD.W           R1, R0, #0x20 ; ' '
1BAE5C:  VMUL.F32        Q9, Q9, D1[0]
1BAE60:  VLD1.32         {D20-D21}, [R1]
1BAE64:  ADD.W           R1, R0, #0x30 ; '0'
1BAE68:  VMUL.F32        Q10, Q10, D2[0]
1BAE6C:  VADD.F32        Q8, Q8, Q9
1BAE70:  VLD1.32         {D18-D19}, [R1]
1BAE74:  STRB.W          R2, [R0,#0x40]
1BAE78:  VADD.F32        Q8, Q8, Q10
1BAE7C:  VADD.F32        Q8, Q9, Q8
1BAE80:  VST1.32         {D16-D17}, [R1]
1BAE84:  BX              LR
