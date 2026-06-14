; =========================================================
; Game Engine Function: _Z16emu_glTranslateffff
; Address            : 0x1BAE8C - 0x1BAEEA
; =========================================================

1BAE8C:  LDR             R3, =(curStack_ptr - 0x1BAE9A)
1BAE8E:  VMOV            S0, R0
1BAE92:  VMOV            S2, R1
1BAE96:  ADD             R3, PC; curStack_ptr
1BAE98:  LDR             R3, [R3]; curStack
1BAE9A:  LDR             R3, [R3]; ModelViewStack
1BAE9C:  LDR.W           R12, [R3,#(dword_6B39E4 - 0x6B37C4)]
1BAEA0:  ADD.W           R0, R12, R12,LSL#4
1BAEA4:  ADD.W           R0, R3, R0,LSL#2
1BAEA8:  ADD.W           R1, R0, #0x20 ; ' '
1BAEAC:  MOV             R3, R0
1BAEAE:  VLD1.32         {D20-D21}, [R1]
1BAEB2:  ADD.W           R1, R0, #0x30 ; '0'
1BAEB6:  VLD1.32         {D16-D17}, [R3]!
1BAEBA:  VMUL.F32        Q8, Q8, D0[0]
1BAEBE:  VLD1.32         {D18-D19}, [R3]
1BAEC2:  VMUL.F32        Q9, Q9, D1[0]
1BAEC6:  VMOV            S0, R2
1BAECA:  MOVS            R2, #1
1BAECC:  VMUL.F32        Q10, Q10, D0[0]
1BAED0:  VADD.F32        Q8, Q8, Q9
1BAED4:  VLD1.32         {D18-D19}, [R1]
1BAED8:  STRB.W          R2, [R0,#0x40]
1BAEDC:  VADD.F32        Q8, Q8, Q10
1BAEE0:  VADD.F32        Q8, Q9, Q8
1BAEE4:  VST1.32         {D16-D17}, [R1]
1BAEE8:  BX              LR
