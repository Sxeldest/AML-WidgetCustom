; =========================================================
; Game Engine Function: _ZN7CClouds15SetUpOneSkyPolyE7CVectorS0_S0_S0_hhhhhh
; Address            : 0x59F8B4 - 0x59F98E
; =========================================================

59F8B4:  PUSH            {R4-R7,LR}
59F8B6:  ADD             R7, SP, #0xC
59F8B8:  PUSH.W          {R8-R10}
59F8BC:  LDR             R5, =(TempBufferVerticesStored_ptr - 0x59F8C6)
59F8BE:  LDR.W           LR, =(TempVertexBuffer_ptr - 0x59F8CC)
59F8C2:  ADD             R5, PC; TempBufferVerticesStored_ptr
59F8C4:  LDR.W           R9, =(TempBufferIndicesStored_ptr - 0x59F8D6)
59F8C8:  ADD             LR, PC; TempVertexBuffer_ptr
59F8CA:  LDR.W           R8, [R7,#arg_0]
59F8CE:  LDR.W           R12, [R5]; TempBufferVerticesStored
59F8D2:  ADD             R9, PC; TempBufferIndicesStored_ptr
59F8D4:  LDR             R5, =(TempBufferRenderIndexList_ptr - 0x59F8E2)
59F8D6:  LDR.W           R6, [LR]; TempVertexBuffer
59F8DA:  LDR.W           R4, [R12]
59F8DE:  ADD             R5, PC; TempBufferRenderIndexList_ptr
59F8E0:  LDR.W           LR, [R9]; TempBufferIndicesStored
59F8E4:  LDR.W           R10, [R5]; TempBufferRenderIndexList
59F8E8:  ADD.W           R5, R4, R4,LSL#3
59F8EC:  LDR.W           R9, [R7,#arg_4]
59F8F0:  STR.W           R0, [R6,R5,LSL#2]
59F8F4:  ADD.W           R0, R6, R5,LSL#2
59F8F8:  STRD.W          R1, R2, [R0,#4]
59F8FC:  LDR             R1, [R7,#arg_24]
59F8FE:  STR.W           R9, [R0,#0x2C]
59F902:  STRD.W          R3, R8, [R0,#0x24]
59F906:  LDR             R3, [R7,#arg_20]
59F908:  LDR             R2, [R7,#arg_28]
59F90A:  ORR.W           R1, R3, R1,LSL#8
59F90E:  LDR             R3, [R7,#arg_10]
59F910:  ORR.W           R1, R1, R2,LSL#16
59F914:  LDR             R2, [R7,#arg_C]
59F916:  ORR.W           R1, R1, #0xFF000000
59F91A:  STR             R1, [R0,#0x18]
59F91C:  STR             R1, [R0,#0x3C]
59F91E:  STR             R3, [R0,#0x50]
59F920:  LDR             R1, [R7,#arg_8]
59F922:  LDR             R3, [R7,#arg_30]
59F924:  STR             R2, [R0,#0x4C]
59F926:  STR             R1, [R0,#0x48]
59F928:  LDR             R1, [R7,#arg_2C]
59F92A:  LDR             R2, [R7,#arg_34]
59F92C:  ORR.W           R1, R1, R3,LSL#8
59F930:  LDR             R3, [R7,#arg_1C]
59F932:  ORR.W           R1, R1, R2,LSL#16
59F936:  MOVS            R2, #0
59F938:  STRD.W          R2, R2, [R0,#0x1C]
59F93C:  ORR.W           R1, R1, #0xFF000000
59F940:  STRD.W          R2, R2, [R0,#0x40]
59F944:  STRD.W          R1, R2, [R0,#0x60]
59F948:  STR             R2, [R0,#0x68]
59F94A:  STR             R3, [R0,#0x74]
59F94C:  LDR             R3, [R7,#arg_18]
59F94E:  STR             R3, [R0,#0x70]
59F950:  LDR             R3, [R7,#arg_14]
59F952:  STR             R3, [R0,#0x6C]
59F954:  ADDS            R3, R4, #1
59F956:  STRD.W          R1, R2, [R0,#0x84]
59F95A:  STR.W           R2, [R0,#0x8C]
59F95E:  ADDS            R2, R4, #2
59F960:  LDR.W           R0, [LR]
59F964:  ADD.W           R1, R10, R0,LSL#1
59F968:  STRH.W          R4, [R10,R0,LSL#1]
59F96C:  ADDS            R0, #6
59F96E:  STRH            R2, [R1,#2]
59F970:  STRH            R3, [R1,#4]
59F972:  STRH            R3, [R1,#6]
59F974:  STRH            R2, [R1,#8]
59F976:  LDR.W           R2, [R12]
59F97A:  STR.W           R0, [LR]
59F97E:  ADDS            R3, R2, #3
59F980:  STRH            R3, [R1,#0xA]
59F982:  ADDS            R1, R2, #4
59F984:  STR.W           R1, [R12]
59F988:  POP.W           {R8-R10}
59F98C:  POP             {R4-R7,PC}
