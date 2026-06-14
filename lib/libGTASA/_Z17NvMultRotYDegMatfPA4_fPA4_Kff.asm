; =========================================================
; Game Engine Function: _Z17NvMultRotYDegMatfPA4_fPA4_Kff
; Address            : 0x278EBC - 0x278F46
; =========================================================

278EBC:  PUSH            {R4-R7,LR}
278EBE:  ADD             R7, SP, #0xC
278EC0:  PUSH.W          {R11}
278EC4:  VPUSH           {D8}
278EC8:  VLDR            S0, =0.017453
278ECC:  VMOV            S2, R2
278ED0:  MOV             R4, R0
278ED2:  MOV             R5, R1
278ED4:  VMUL.F32        S0, S2, S0
278ED8:  VMOV            R6, S0
278EDC:  MOV             R0, R6; x
278EDE:  BLX             sinf
278EE2:  VMOV            S16, R0
278EE6:  MOV             R0, R6; x
278EE8:  BLX             cosf
278EEC:  VNEG.F32        S2, S16
278EF0:  ADD.W           R1, R5, #0x20 ; ' '
278EF4:  VMOV            S0, R0
278EF8:  VLD1.32         {D16-D17}, [R1]
278EFC:  ADD.W           R0, R5, #0x30 ; '0'
278F00:  VMUL.F32        Q10, Q8, D0[0]
278F04:  VLD1.32         {D18-D19}, [R5]!
278F08:  VMUL.F32        Q11, Q9, D8[0]
278F0C:  VLD1.32         {D24-D25}, [R5]
278F10:  VMUL.F32        Q9, Q9, D0[0]
278F14:  VMUL.F32        Q8, Q8, D1[0]
278F18:  VADD.F32        Q10, Q11, Q10
278F1C:  VLD1.32         {D22-D23}, [R0]
278F20:  ADD.W           R0, R4, #0x30 ; '0'
278F24:  VADD.F32        Q8, Q9, Q8
278F28:  VST1.32         {D22-D23}, [R0]
278F2C:  ADD.W           R0, R4, #0x20 ; ' '
278F30:  VST1.32         {D20-D21}, [R0]
278F34:  VST1.32         {D16-D17}, [R4]!
278F38:  VST1.32         {D24-D25}, [R4]
278F3C:  VPOP            {D8}
278F40:  POP.W           {R11}
278F44:  POP             {R4-R7,PC}
