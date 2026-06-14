; =========================================================
; Game Engine Function: _Z15NvMultScaleMatfPA4_fPA4_Kffff
; Address            : 0x2785B6 - 0x278608
; =========================================================

2785B6:  PUSH            {R7,LR}
2785B8:  MOV             R7, SP
2785BA:  MOV             LR, R1
2785BC:  ADD.W           R12, R7, #8
2785C0:  VLD1.32         {D16-D17}, [LR]!
2785C4:  VMOV            S0, R3
2785C8:  ADD.W           R3, R1, #0x20 ; ' '
2785CC:  VMOV            S2, R2
2785D0:  VLD1.32         {D18-D19}, [R3]
2785D4:  VMUL.F32        Q8, Q8, D1[0]
2785D8:  VLD1.32         {D22[]-D23[]}, [R12@32]
2785DC:  ADDS            R1, #0x30 ; '0'
2785DE:  VMUL.F32        Q9, Q11, Q9
2785E2:  VLD1.32         {D24-D25}, [LR]
2785E6:  VMUL.F32        Q12, Q12, D0[0]
2785EA:  VLD1.32         {D20-D21}, [R1]
2785EE:  ADD.W           R1, R0, #0x30 ; '0'
2785F2:  VST1.32         {D20-D21}, [R1]
2785F6:  ADD.W           R1, R0, #0x20 ; ' '
2785FA:  VST1.32         {D16-D17}, [R0]!
2785FE:  VST1.32         {D24-D25}, [R0]
278602:  VST1.32         {D18-D19}, [R1]
278606:  POP             {R7,PC}
