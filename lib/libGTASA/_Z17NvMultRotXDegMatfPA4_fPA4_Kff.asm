; =========================================================
; Game Engine Function: _Z17NvMultRotXDegMatfPA4_fPA4_Kff
; Address            : 0x278E30 - 0x278EB6
; =========================================================

278E30:  PUSH            {R4-R7,LR}
278E32:  ADD             R7, SP, #0xC
278E34:  PUSH.W          {R8}
278E38:  VLDR            S0, =0.017453
278E3C:  VMOV            S2, R2
278E40:  MOV             R4, R0
278E42:  MOV             R5, R1
278E44:  VMUL.F32        S0, S2, S0
278E48:  VMOV            R6, S0
278E4C:  MOV             R0, R6; x
278E4E:  BLX             sinf
278E52:  MOV             R8, R0
278E54:  MOV             R0, R6; x
278E56:  BLX             cosf
278E5A:  ADD.W           R2, R5, #0x20 ; ' '
278E5E:  VMOV            S2, R8
278E62:  VLD1.32         {D18-D19}, [R2]
278E66:  MOV             R1, R5
278E68:  VMUL.F32        Q11, Q9, D1[0]
278E6C:  VLD1.32         {D16-D17}, [R1]!
278E70:  VNEG.F32        S2, S2
278E74:  VMOV            S0, R0
278E78:  VLD1.32         {D20-D21}, [R1]
278E7C:  VMUL.F32        Q12, Q10, D0[0]
278E80:  ADD.W           R0, R5, #0x30 ; '0'
278E84:  VLD1.32         {D26-D27}, [R0]
278E88:  ADD.W           R0, R4, #0x30 ; '0'
278E8C:  VMUL.F32        Q9, Q9, D0[0]
278E90:  VST1.32         {D26-D27}, [R0]
278E94:  ADD.W           R0, R4, #0x20 ; ' '
278E98:  VMUL.F32        Q10, Q10, D1[0]
278E9C:  VST1.32         {D16-D17}, [R4]!
278EA0:  VADD.F32        Q11, Q12, Q11
278EA4:  VADD.F32        Q9, Q10, Q9
278EA8:  VST1.32         {D22-D23}, [R4]
278EAC:  VST1.32         {D18-D19}, [R0]
278EB0:  POP.W           {R8}
278EB4:  POP             {R4-R7,PC}
