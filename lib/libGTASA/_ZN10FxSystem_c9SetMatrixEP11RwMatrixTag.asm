; =========================================================
; Game Engine Function: _ZN10FxSystem_c9SetMatrixEP11RwMatrixTag
; Address            : 0x36E4FC - 0x36E54C
; =========================================================

36E4FC:  PUSH            {R4,R5,R7,LR}
36E4FE:  ADD             R7, SP, #8
36E500:  MOV             R4, R1
36E502:  MOV             R5, R0
36E504:  MOV             R0, R4
36E506:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36E50A:  LDRB.W          R0, [R5,#0x66]
36E50E:  LSLS            R0, R0, #0x1F
36E510:  ITT EQ
36E512:  STREQ           R4, [R5,#0xC]
36E514:  POPEQ           {R4,R5,R7,PC}
36E516:  MOV             R0, R4
36E518:  LDR             R1, [R5,#0xC]
36E51A:  VLD1.32         {D16-D17}, [R0]!
36E51E:  ADD.W           R2, R4, #0x20 ; ' '
36E522:  VLD1.32         {D20-D21}, [R0]
36E526:  ADD.W           R0, R4, #0x30 ; '0'
36E52A:  VLD1.32         {D22-D23}, [R0]
36E52E:  ADD.W           R0, R1, #0x30 ; '0'
36E532:  VLD1.32         {D18-D19}, [R2]
36E536:  VST1.32         {D22-D23}, [R0]
36E53A:  ADD.W           R0, R1, #0x20 ; ' '
36E53E:  VST1.32         {D18-D19}, [R0]
36E542:  VST1.32         {D16-D17}, [R1]!
36E546:  VST1.32         {D20-D21}, [R1]
36E54A:  POP             {R4,R5,R7,PC}
