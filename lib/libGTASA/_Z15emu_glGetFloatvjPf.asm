; =========================================================
; Game Engine Function: _Z15emu_glGetFloatvjPf
; Address            : 0x1BB750 - 0x1BB7B2
; =========================================================

1BB750:  PUSH            {R4,R6,R7,LR}
1BB752:  ADD             R7, SP, #8
1BB754:  MOV             R4, R1
1BB756:  MOVW            R1, #0xBA6
1BB75A:  CMP             R0, R1
1BB75C:  BEQ             loc_1BB776
1BB75E:  MOVW            R1, #0xBA8
1BB762:  CMP             R0, R1
1BB764:  BEQ             loc_1BB77C
1BB766:  MOVW            R1, #0xBA7
1BB76A:  CMP             R0, R1
1BB76C:  IT NE
1BB76E:  POPNE           {R4,R6,R7,PC}
1BB770:  BLX             j__Z26GetCurrentProjectionMatrixv; GetCurrentProjectionMatrix(void)
1BB774:  B               loc_1BB780
1BB776:  BLX             j__Z22GetCurrentObjectMatrixv; GetCurrentObjectMatrix(void)
1BB77A:  B               loc_1BB780
1BB77C:  BLX             j__Z20GetCurrentViewMatrixv; GetCurrentViewMatrix(void)
1BB780:  MOV             R1, R0
1BB782:  ADD.W           R2, R0, #0x20 ; ' '
1BB786:  ADDS            R0, #0x30 ; '0'
1BB788:  VLD1.32         {D16-D17}, [R1]!
1BB78C:  VLD1.32         {D22-D23}, [R0]
1BB790:  ADD.W           R0, R4, #0x30 ; '0'
1BB794:  VLD1.32         {D18-D19}, [R2]
1BB798:  VLD1.32         {D20-D21}, [R1]
1BB79C:  VST1.32         {D22-D23}, [R0]
1BB7A0:  ADD.W           R0, R4, #0x20 ; ' '
1BB7A4:  VST1.32         {D18-D19}, [R0]
1BB7A8:  VST1.32         {D16-D17}, [R4]!
1BB7AC:  VST1.32         {D20-D21}, [R4]
1BB7B0:  POP             {R4,R6,R7,PC}
