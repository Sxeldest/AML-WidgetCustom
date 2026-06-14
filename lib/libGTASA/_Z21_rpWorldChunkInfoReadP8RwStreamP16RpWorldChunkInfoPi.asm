; =========================================================
; Game Engine Function: _Z21_rpWorldChunkInfoReadP8RwStreamP16RpWorldChunkInfoPi
; Address            : 0x2137BC - 0x2138B6
; =========================================================

2137BC:  PUSH            {R4-R7,LR}
2137BE:  ADD             R7, SP, #0xC
2137C0:  PUSH.W          {R8}
2137C4:  SUB             SP, SP, #0x40
2137C6:  MOV             R5, R2
2137C8:  ADD             R2, SP, #0x50+var_14
2137CA:  ADD             R3, SP, #0x50+var_18
2137CC:  MOV             R4, R1
2137CE:  MOVS            R1, #1
2137D0:  MOV             R6, R0
2137D2:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
2137D6:  CMP             R0, #0
2137D8:  BEQ             loc_2138AA
2137DA:  LDR             R0, [SP,#0x50+var_18]
2137DC:  MOVW            R2, #0x2004
2137E0:  SUB.W           R1, R0, #0x34000
2137E4:  CMP             R1, R2
2137E6:  BCC             loc_213800
2137E8:  MOVS            R0, #4
2137EA:  MOVS            R4, #0
2137EC:  MOVT            R0, #0x8000; int
2137F0:  STR             R4, [SP,#0x50+var_50]
2137F2:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
2137F6:  STR             R0, [SP,#0x50+var_4C]
2137F8:  MOV             R0, SP
2137FA:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
2137FE:  B               loc_2138AC
213800:  VMOV.I32        Q8, #0
213804:  ADD.W           R1, R4, #0x30 ; '0'
213808:  CMP.W           R0, #0x34000
21380C:  VST1.32         {D16-D17}, [R1]
213810:  ADD.W           R1, R4, #0x20 ; ' '
213814:  VST1.32         {D16-D17}, [R1]
213818:  MOV             R1, R4
21381A:  VST1.32         {D16-D17}, [R1]!
21381E:  VST1.32         {D16-D17}, [R1]
213822:  BHI             loc_213876
213824:  MOV             R8, SP
213826:  ADD.W           R1, R8, #0x20 ; ' '
21382A:  MOV             R0, R8
21382C:  LDR             R2, [SP,#0x50+var_14]; size_t
21382E:  VST1.64         {D16-D17}, [R0]!
213832:  VST1.64         {D16-D17}, [R1]
213836:  MOV             R1, R8; void *
213838:  VST1.64         {D16-D17}, [R0]
21383C:  MOVS            R0, #0
21383E:  STR             R0, [SP,#0x50+var_20]
213840:  MOV             R0, R6; int
213842:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
213846:  LDR             R1, [SP,#0x50+var_14]
213848:  CMP             R0, R1
21384A:  BNE             loc_2138AA
21384C:  LDR             R0, [SP,#0x50+var_50]
21384E:  STR             R0, [R4]
213850:  VLDR            D16, [SP,#0x50+var_4C]
213854:  LDR             R0, [SP,#0x50+var_44]
213856:  STR             R0, [R4,#0xC]
213858:  ADD.W           R0, R8, #0x1C
21385C:  VSTR            D16, [R4,#4]
213860:  VLD1.32         {D16-D17}, [R0]
213864:  ADD.W           R0, R4, #0x10
213868:  VST1.32         {D16-D17}, [R0]
21386C:  LDRD.W          R0, R1, [SP,#0x50+var_24]
213870:  STRD.W          R0, R1, [R4,#0x20]
213874:  B               loc_213886
213876:  LDR             R2, [SP,#0x50+var_14]; size_t
213878:  MOV             R0, R6; int
21387A:  MOV             R1, R4; void *
21387C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
213880:  LDR             R1, [SP,#0x50+var_14]
213882:  CMP             R0, R1
213884:  BNE             loc_2138AA
213886:  MOV             R0, R4; void *
213888:  MOVS            R1, #0x40 ; '@'; unsigned int
21388A:  ADDS            R6, R4, #4
21388C:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
213890:  ADD.W           R0, R4, #0x28 ; '('; void *
213894:  MOVS            R1, #0x18; unsigned int
213896:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
21389A:  MOV             R0, R6; void *
21389C:  MOVS            R1, #0xC; unsigned int
21389E:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
2138A2:  LDR             R0, [SP,#0x50+var_14]
2138A4:  ADDS            R0, #0xC
2138A6:  STR             R0, [R5]
2138A8:  B               loc_2138AC
2138AA:  MOVS            R4, #0
2138AC:  MOV             R0, R4
2138AE:  ADD             SP, SP, #0x40 ; '@'
2138B0:  POP.W           {R8}
2138B4:  POP             {R4-R7,PC}
