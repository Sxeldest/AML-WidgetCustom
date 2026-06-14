; =========================================================
; Game Engine Function: sub_1AD7F0
; Address            : 0x1AD7F0 - 0x1AD888
; =========================================================

1AD7F0:  PUSH            {R4-R7,LR}
1AD7F2:  ADD             R7, SP, #0xC
1AD7F4:  PUSH.W          {R11}
1AD7F8:  SUB             SP, SP, #8
1AD7FA:  MOV             R5, R2
1AD7FC:  MOV             R6, R1
1AD7FE:  MOV             R4, R0
1AD800:  BLX             j__Z26SetupScreenSpaceProjectionv; SetupScreenSpaceProjection(void)
1AD804:  BLX             j__Z15emu_ArraysResetv; emu_ArraysReset(void)
1AD808:  RSB.W           R0, R5, R5,LSL#3
1AD80C:  MOV             R2, R5; unsigned int
1AD80E:  MOVS            R3, #0x1C; unsigned int
1AD810:  LSLS            R1, R0, #2; size_t
1AD812:  MOV             R0, R6; void *
1AD814:  BLX             j__Z16emu_ArraysVertexPvjjj; emu_ArraysVertex(void *,uint,uint,uint)
1AD818:  MOVS            R0, #0
1AD81A:  MOVS            R1, #3; int
1AD81C:  STR             R0, [SP,#0x18+var_18]; int
1AD81E:  MOVS            R0, #0; unsigned int
1AD820:  MOVW            R2, #0x1406; unsigned int
1AD824:  MOVS            R3, #0; unsigned __int8
1AD826:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
1AD82A:  MOVS            R0, #0x10
1AD82C:  MOVS            R1, #4; int
1AD82E:  STR             R0, [SP,#0x18+var_18]; int
1AD830:  MOVS            R0, #3; unsigned int
1AD832:  MOVW            R2, #0x1401; unsigned int
1AD836:  MOVS            R3, #1; unsigned __int8
1AD838:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
1AD83C:  MOVS            R0, #0x14
1AD83E:  MOVS            R1, #2; int
1AD840:  STR             R0, [SP,#0x18+var_18]; int
1AD842:  MOVS            R0, #1; unsigned int
1AD844:  MOVW            R2, #0x1406; unsigned int
1AD848:  MOVS            R3, #0; unsigned __int8
1AD84A:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
1AD84E:  LDR             R0, =(unk_6B31D8 - 0x1AD854)
1AD850:  ADD             R0, PC; unk_6B31D8
1AD852:  LDR.W           R0, [R0,R4,LSL#2]; unsigned int
1AD856:  BLX             j__Z21emu_ArraysDrawCurrentj; emu_ArraysDrawCurrent(uint)
1AD85A:  MOVW            R0, #0x1701; unsigned int
1AD85E:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1AD862:  BLX             j__Z15emu_glPopMatrixv; emu_glPopMatrix(void)
1AD866:  MOVW            R0, #0x1703; unsigned int
1AD86A:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1AD86E:  BLX             j__Z15emu_glPopMatrixv; emu_glPopMatrix(void)
1AD872:  MOV.W           R0, #0x1700; unsigned int
1AD876:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1AD87A:  BLX             j__Z15emu_glPopMatrixv; emu_glPopMatrix(void)
1AD87E:  MOVS            R0, #1
1AD880:  ADD             SP, SP, #8
1AD882:  POP.W           {R11}
1AD886:  POP             {R4-R7,PC}
