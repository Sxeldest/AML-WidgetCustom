; =========================================================
; Game Engine Function: _Z17NvMultRotZRadMatfPA4_fPA4_Kff
; Address            : 0x278826 - 0x2788A4
; =========================================================

278826:  PUSH            {R4-R7,LR}
278828:  ADD             R7, SP, #0xC
27882A:  PUSH.W          {R11}
27882E:  VPUSH           {D8}
278832:  MOV             R5, R2
278834:  MOV             R4, R0
278836:  MOV             R0, R5; x
278838:  MOV             R6, R1
27883A:  BLX             sinf
27883E:  VMOV            S16, R0
278842:  MOV             R0, R5; x
278844:  BLX             cosf
278848:  MOV             R1, R6
27884A:  VMOV            S0, R0
27884E:  VLD1.32         {D16-D17}, [R1]!
278852:  ADD.W           R0, R6, #0x30 ; '0'
278856:  VMUL.F32        Q11, Q8, D0[0]
27885A:  VLD1.32         {D18-D19}, [R1]
27885E:  VMUL.F32        Q10, Q9, D8[0]
278862:  VLD1.32         {D24-D25}, [R0]
278866:  ADD.W           R0, R6, #0x20 ; ' '
27886A:  VMUL.F32        Q9, Q9, D0[0]
27886E:  VLD1.32         {D26-D27}, [R0]
278872:  ADD.W           R0, R4, #0x20 ; ' '
278876:  VNEG.F32        S0, S16
27887A:  VADD.F32        Q10, Q11, Q10
27887E:  VST1.32         {D26-D27}, [R0]
278882:  ADD.W           R0, R4, #0x30 ; '0'
278886:  VST1.32         {D24-D25}, [R0]
27888A:  VMUL.F32        Q8, Q8, D0[0]
27888E:  VST1.32         {D20-D21}, [R4]!
278892:  VADD.F32        Q8, Q8, Q9
278896:  VST1.32         {D16-D17}, [R4]
27889A:  VPOP            {D8}
27889E:  POP.W           {R11}
2788A2:  POP             {R4-R7,PC}
