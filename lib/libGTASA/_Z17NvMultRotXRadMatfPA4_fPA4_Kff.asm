; =========================================================
; Game Engine Function: _Z17NvMultRotXRadMatfPA4_fPA4_Kff
; Address            : 0x278732 - 0x2787AA
; =========================================================

278732:  PUSH            {R4-R7,LR}
278734:  ADD             R7, SP, #0xC
278736:  PUSH.W          {R8}
27873A:  MOV             R5, R2
27873C:  MOV             R4, R0
27873E:  MOV             R0, R5; x
278740:  MOV             R6, R1
278742:  BLX             sinf
278746:  MOV             R8, R0
278748:  MOV             R0, R5; x
27874A:  BLX             cosf
27874E:  ADD.W           R2, R6, #0x20 ; ' '
278752:  VMOV            S2, R8
278756:  VLD1.32         {D18-D19}, [R2]
27875A:  MOV             R1, R6
27875C:  VMUL.F32        Q11, Q9, D1[0]
278760:  VLD1.32         {D16-D17}, [R1]!
278764:  VNEG.F32        S2, S2
278768:  VMOV            S0, R0
27876C:  VLD1.32         {D20-D21}, [R1]
278770:  VMUL.F32        Q12, Q10, D0[0]
278774:  ADD.W           R0, R6, #0x30 ; '0'
278778:  VLD1.32         {D26-D27}, [R0]
27877C:  ADD.W           R0, R4, #0x30 ; '0'
278780:  VMUL.F32        Q9, Q9, D0[0]
278784:  VST1.32         {D26-D27}, [R0]
278788:  ADD.W           R0, R4, #0x20 ; ' '
27878C:  VMUL.F32        Q10, Q10, D1[0]
278790:  VST1.32         {D16-D17}, [R4]!
278794:  VADD.F32        Q11, Q12, Q11
278798:  VADD.F32        Q9, Q10, Q9
27879C:  VST1.32         {D22-D23}, [R4]
2787A0:  VST1.32         {D18-D19}, [R0]
2787A4:  POP.W           {R8}
2787A8:  POP             {R4-R7,PC}
