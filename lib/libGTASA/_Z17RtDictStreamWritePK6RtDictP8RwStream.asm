; =========================================================
; Game Engine Function: _Z17RtDictStreamWritePK6RtDictP8RwStream
; Address            : 0x1ED81E - 0x1ED90C
; =========================================================

1ED81E:  PUSH            {R4-R7,LR}
1ED820:  ADD             R7, SP, #0xC
1ED822:  PUSH.W          {R8,R9,R11}
1ED826:  SUB             SP, SP, #8
1ED828:  MOV             R9, R0
1ED82A:  MOV             R8, R1
1ED82C:  LDR.W           R0, [R9,#4]
1ED830:  BLX             j__Z14_rwSListGetEndP7RwSList; _rwSListGetEnd(RwSList *)
1ED834:  MOV             R5, R0
1ED836:  LDR.W           R0, [R9,#4]
1ED83A:  BLX             j__Z16_rwSListGetBeginP7RwSList; _rwSListGetBegin(RwSList *)
1ED83E:  MOV             R4, R0
1ED840:  MOVS            R6, #0x10
1ED842:  CMP             R4, R5
1ED844:  BEQ             loc_1ED860
1ED846:  LDR.W           R1, [R9]
1ED84A:  LDR.W           R0, [R4],#4
1ED84E:  LDR             R1, [R1,#0x24]
1ED850:  BLX             R1
1ED852:  ADD             R0, R6
1ED854:  CMP             R5, R4
1ED856:  ADD.W           R6, R0, #0xC
1ED85A:  BNE             loc_1ED846
1ED85C:  CMP             R6, #0
1ED85E:  BEQ             loc_1ED8FE
1ED860:  LDR.W           R0, [R9]
1ED864:  MOV             R4, #0x36003
1ED86C:  MOVW            R5, #0xFFFF
1ED870:  MOV             R2, R6
1ED872:  MOV             R3, R4
1ED874:  LDR             R1, [R0,#4]
1ED876:  MOV             R0, R8
1ED878:  STR             R5, [SP,#0x20+var_20]
1ED87A:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1ED87E:  CBZ             R0, loc_1ED8FE
1ED880:  MOV             R0, R8
1ED882:  MOVS            R1, #1
1ED884:  MOVS            R2, #4
1ED886:  MOV             R3, R4
1ED888:  STR             R5, [SP,#0x20+var_20]
1ED88A:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1ED88E:  MOV             R1, R0
1ED890:  MOVS            R0, #0
1ED892:  CBZ             R1, loc_1ED900
1ED894:  STR             R0, [SP,#0x20+var_1C]
1ED896:  LDR.W           R0, [R9,#4]
1ED89A:  BLX             j__Z14_rwSListGetEndP7RwSList; _rwSListGetEnd(RwSList *)
1ED89E:  MOV             R4, R0
1ED8A0:  LDR.W           R0, [R9,#4]
1ED8A4:  BLX             j__Z16_rwSListGetBeginP7RwSList; _rwSListGetBegin(RwSList *)
1ED8A8:  CMP             R0, R4
1ED8AA:  ITTTT NE
1ED8AC:  MOVNE           R1, #0xFFFFFFFC
1ED8B0:  SUBNE           R0, R1, R0
1ED8B2:  ADDNE           R0, R4
1ED8B4:  MOVNE           R1, #1
1ED8B6:  ADD             R4, SP, #0x20+var_1C
1ED8B8:  ITT NE
1ED8BA:  ADDNE.W         R0, R1, R0,LSR#2
1ED8BE:  STRNE           R0, [SP,#0x20+var_1C]
1ED8C0:  MOVS            R1, #4; unsigned int
1ED8C2:  MOV             R0, R4; void *
1ED8C4:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
1ED8C8:  MOV             R0, R8; int
1ED8CA:  MOV             R1, R4; void *
1ED8CC:  MOVS            R2, #4; size_t
1ED8CE:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1ED8D2:  CBZ             R0, loc_1ED8FE
1ED8D4:  LDR.W           R0, [R9,#4]
1ED8D8:  BLX             j__Z14_rwSListGetEndP7RwSList; _rwSListGetEnd(RwSList *)
1ED8DC:  MOV             R4, R0
1ED8DE:  LDR.W           R0, [R9,#4]
1ED8E2:  BLX             j__Z16_rwSListGetBeginP7RwSList; _rwSListGetBegin(RwSList *)
1ED8E6:  MOV             R5, R0
1ED8E8:  CMP             R4, R5
1ED8EA:  BEQ             loc_1ED908
1ED8EC:  LDR.W           R1, [R9]
1ED8F0:  LDR.W           R0, [R5],#4
1ED8F4:  LDR             R2, [R1,#0x30]
1ED8F6:  MOV             R1, R8
1ED8F8:  BLX             R2
1ED8FA:  CMP             R0, #0
1ED8FC:  BNE             loc_1ED8E8
1ED8FE:  MOVS            R0, #0
1ED900:  ADD             SP, SP, #8
1ED902:  POP.W           {R8,R9,R11}
1ED906:  POP             {R4-R7,PC}
1ED908:  MOV             R0, R9
1ED90A:  B               loc_1ED900
