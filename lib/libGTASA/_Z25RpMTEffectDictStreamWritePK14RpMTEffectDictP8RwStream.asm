; =========================================================
; Game Engine Function: _Z25RpMTEffectDictStreamWritePK14RpMTEffectDictP8RwStream
; Address            : 0x1C5838 - 0x1C591C
; =========================================================

1C5838:  PUSH            {R4-R7,LR}
1C583A:  ADD             R7, SP, #0xC
1C583C:  PUSH.W          {R8-R11}
1C5840:  SUB             SP, SP, #0xC
1C5842:  MOV             R10, R0
1C5844:  MOV             R6, R1
1C5846:  LDR.W           R5, [R10]
1C584A:  CMP             R5, R10
1C584C:  BEQ             loc_1C5894
1C584E:  LDR.W           R8, =(unk_6B7180 - 0x1C585C)
1C5852:  MOV.W           R11, #0x10
1C5856:  STR             R6, [SP,#0x28+var_24]
1C5858:  ADD             R8, PC; unk_6B7180
1C585A:  MOV             R6, R5
1C585C:  LDR.W           R0, [R6,#-0x28]!
1C5860:  ADD.W           R0, R0, R0,LSL#2
1C5864:  ADD.W           R9, R8, R0,LSL#2
1C5868:  SUB.W           R0, R5, #0x20 ; ' '; char *
1C586C:  BLX             j__Z22_rwStringStreamGetSizePKc; _rwStringStreamGetSize(char const*)
1C5870:  LDR.W           R1, [R9,#0x10]
1C5874:  MOV             R4, R0
1C5876:  MOV             R0, R6
1C5878:  BLX             R1
1C587A:  ADD.W           R1, R11, R4
1C587E:  LDR             R5, [R5]
1C5880:  ADD             R0, R1
1C5882:  ADD.W           R11, R0, #0x34 ; '4'
1C5886:  CMP             R5, R10
1C5888:  BNE             loc_1C585A
1C588A:  LDR             R6, [SP,#0x28+var_24]
1C588C:  CMP.W           R11, #0
1C5890:  BNE             loc_1C5898
1C5892:  B               loc_1C5912
1C5894:  MOV.W           R11, #0x10
1C5898:  MOVW            R8, #:lower16:(stru_35FF8.st_size+3)
1C589C:  MOVW            R4, #0xFFFF
1C58A0:  MOVT            R8, #:upper16:(stru_35FF8.st_size+3)
1C58A4:  MOV             R0, R6
1C58A6:  MOVS            R1, #0x21 ; '!'
1C58A8:  MOV             R2, R11
1C58AA:  MOV             R3, R8
1C58AC:  STR             R4, [SP,#0x28+var_28]
1C58AE:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1C58B2:  CBZ             R0, loc_1C5912
1C58B4:  MOV             R0, R6
1C58B6:  MOVS            R1, #1
1C58B8:  MOVS            R2, #4
1C58BA:  MOV             R3, R8
1C58BC:  STR             R4, [SP,#0x28+var_28]
1C58BE:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1C58C2:  MOV             R1, R0
1C58C4:  MOVS            R0, #0
1C58C6:  CBZ             R1, loc_1C5914
1C58C8:  STR             R0, [SP,#0x28+var_20]
1C58CA:  LDR.W           R0, [R10]
1C58CE:  CMP             R0, R10
1C58D0:  BEQ             loc_1C58DE
1C58D2:  MOVS            R1, #1
1C58D4:  STR             R1, [SP,#0x28+var_20]
1C58D6:  ADDS            R1, #1
1C58D8:  LDR             R0, [R0]
1C58DA:  CMP             R0, R10
1C58DC:  BNE             loc_1C58D4
1C58DE:  ADD             R4, SP, #0x28+var_20
1C58E0:  MOVS            R1, #4; unsigned int
1C58E2:  MOV             R0, R4; void *
1C58E4:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
1C58E8:  MOV             R0, R6; int
1C58EA:  MOV             R1, R4; void *
1C58EC:  MOVS            R2, #4; size_t
1C58EE:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1C58F2:  CBZ             R0, loc_1C5912
1C58F4:  LDR.W           R4, [R10]
1C58F8:  CMP             R4, R10
1C58FA:  BEQ             loc_1C590E
1C58FC:  SUB.W           R0, R4, #0x28 ; '('; char *
1C5900:  MOV             R1, R6
1C5902:  BLX             j__Z21RpMTEffectStreamWritePK10RpMTEffectP8RwStream; RpMTEffectStreamWrite(RpMTEffect const*,RwStream *)
1C5906:  CBZ             R0, loc_1C5912
1C5908:  LDR             R4, [R4]
1C590A:  CMP             R4, R10
1C590C:  BNE             loc_1C58FC
1C590E:  MOV             R0, R10
1C5910:  B               loc_1C5914
1C5912:  MOVS            R0, #0
1C5914:  ADD             SP, SP, #0xC
1C5916:  POP.W           {R8-R11}
1C591A:  POP             {R4-R7,PC}
