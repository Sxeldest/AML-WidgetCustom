; =========================================================
; Game Engine Function: _Z17NvMultRotYRadMatfPA4_fPA4_Kff
; Address            : 0x2787AA - 0x278826
; =========================================================

2787AA:  PUSH            {R4-R7,LR}
2787AC:  ADD             R7, SP, #0xC
2787AE:  PUSH.W          {R11}
2787B2:  VPUSH           {D8}
2787B6:  MOV             R5, R2
2787B8:  MOV             R4, R0
2787BA:  MOV             R0, R5; x
2787BC:  MOV             R6, R1
2787BE:  BLX             sinf
2787C2:  VMOV            S16, R0
2787C6:  MOV             R0, R5; x
2787C8:  BLX             cosf
2787CC:  VNEG.F32        S2, S16
2787D0:  ADD.W           R1, R6, #0x20 ; ' '
2787D4:  VMOV            S0, R0
2787D8:  VLD1.32         {D16-D17}, [R1]
2787DC:  ADD.W           R0, R6, #0x30 ; '0'
2787E0:  VMUL.F32        Q10, Q8, D0[0]
2787E4:  VLD1.32         {D18-D19}, [R6]!
2787E8:  VMUL.F32        Q11, Q9, D8[0]
2787EC:  VLD1.32         {D24-D25}, [R6]
2787F0:  VMUL.F32        Q9, Q9, D0[0]
2787F4:  VMUL.F32        Q8, Q8, D1[0]
2787F8:  VADD.F32        Q10, Q11, Q10
2787FC:  VLD1.32         {D22-D23}, [R0]
278800:  ADD.W           R0, R4, #0x30 ; '0'
278804:  VADD.F32        Q8, Q9, Q8
278808:  VST1.32         {D22-D23}, [R0]
27880C:  ADD.W           R0, R4, #0x20 ; ' '
278810:  VST1.32         {D20-D21}, [R0]
278814:  VST1.32         {D16-D17}, [R4]!
278818:  VST1.32         {D24-D25}, [R4]
27881C:  VPOP            {D8}
278820:  POP.W           {R11}
278824:  POP             {R4-R7,PC}
