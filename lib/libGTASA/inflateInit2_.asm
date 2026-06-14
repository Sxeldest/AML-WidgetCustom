; =========================================================
; Game Engine Function: inflateInit2_
; Address            : 0x20E888 - 0x20E994
; =========================================================

20E888:  PUSH            {R4-R7,LR}
20E88A:  ADD             R7, SP, #0xC
20E88C:  PUSH.W          {R11}
20E890:  MOV             R5, R1
20E892:  MOV             R4, R0
20E894:  MOV             R6, #0xFFFFFFFA
20E898:  CMP             R2, #0
20E89A:  BEQ             loc_20E98C
20E89C:  CMP             R3, #0x38 ; '8'
20E89E:  ITT EQ
20E8A0:  LDRBEQ          R0, [R2]
20E8A2:  CMPEQ           R0, #0x31 ; '1'
20E8A4:  BNE             loc_20E98C
20E8A6:  CMP             R4, #0
20E8A8:  BEQ             loc_20E960
20E8AA:  LDR             R3, [R4,#0x20]
20E8AC:  MOVS            R0, #0
20E8AE:  STR             R0, [R4,#0x18]
20E8B0:  CBNZ            R3, loc_20E8BC
20E8B2:  LDR             R1, =(zcalloc_ptr - 0x20E8BA)
20E8B4:  STR             R0, [R4,#0x28]
20E8B6:  ADD             R1, PC; zcalloc_ptr
20E8B8:  LDR             R3, [R1]; zcalloc
20E8BA:  STR             R3, [R4,#0x20]
20E8BC:  LDR             R0, [R4,#0x24]
20E8BE:  CBNZ            R0, loc_20E8C8
20E8C0:  LDR             R0, =(zcfree_ptr - 0x20E8C6)
20E8C2:  ADD             R0, PC; zcfree_ptr
20E8C4:  LDR             R0, [R0]; zcfree
20E8C6:  STR             R0, [R4,#0x24]
20E8C8:  LDR             R0, [R4,#0x28]
20E8CA:  MOVS            R1, #1
20E8CC:  MOVS            R2, #0x18
20E8CE:  BLX             R3
20E8D0:  CMP             R0, #0
20E8D2:  STR             R0, [R4,#0x1C]
20E8D4:  BEQ             loc_20E988
20E8D6:  MOVS            R1, #0
20E8D8:  CMP.W           R5, #0xFFFFFFFF
20E8DC:  STR             R1, [R0,#0x14]
20E8DE:  LDR             R0, [R4,#0x1C]
20E8E0:  STR             R1, [R0,#0xC]
20E8E2:  BGT             loc_20E8EC
20E8E4:  LDR             R0, [R4,#0x1C]
20E8E6:  NEGS            R5, R5
20E8E8:  MOVS            R1, #1
20E8EA:  STR             R1, [R0,#0xC]
20E8EC:  LDR             R1, [R4,#0x1C]
20E8EE:  BIC.W           R0, R5, #7
20E8F2:  CMP             R0, #8
20E8F4:  BNE             loc_20E93E
20E8F6:  STR             R5, [R1,#0x10]
20E8F8:  MOVS            R2, #1
20E8FA:  LDR             R1, [R4,#0x1C]
20E8FC:  LSLS            R2, R5
20E8FE:  LDR             R0, =(adler32_ptr_0 - 0x20E906)
20E900:  LDR             R3, [R1,#0xC]
20E902:  ADD             R0, PC; adler32_ptr_0
20E904:  LDR             R1, [R0]; adler32
20E906:  CMP             R3, #0
20E908:  IT NE
20E90A:  MOVNE           R1, #0
20E90C:  MOV             R0, R4
20E90E:  BLX             j_inflate_blocks_new
20E912:  LDR             R1, [R4,#0x1C]
20E914:  CMP             R0, #0
20E916:  STR             R0, [R1,#0x14]
20E918:  LDR             R1, [R4,#0x1C]
20E91A:  BEQ             loc_20E966
20E91C:  MOVS            R6, #0
20E91E:  CBZ             R1, loc_20E98C
20E920:  STR             R6, [R4,#8]
20E922:  MOVS            R2, #0
20E924:  STRD.W          R6, R6, [R4,#0x14]
20E928:  LDR             R0, [R1,#0xC]
20E92A:  CMP             R0, #0
20E92C:  IT NE
20E92E:  MOVNE           R0, #7
20E930:  STR             R0, [R1]
20E932:  MOV             R1, R4
20E934:  LDR             R0, [R4,#0x1C]
20E936:  LDR             R0, [R0,#0x14]
20E938:  BLX             j_inflate_blocks_reset
20E93C:  B               loc_20E98C
20E93E:  CBZ             R1, loc_20E960
20E940:  LDR             R2, [R4,#0x24]
20E942:  CBZ             R2, loc_20E960
20E944:  LDR             R0, [R1,#0x14]
20E946:  CBZ             R0, loc_20E952
20E948:  MOV             R1, R4
20E94A:  BLX             j_inflate_blocks_free
20E94E:  LDR             R1, [R4,#0x1C]
20E950:  LDR             R2, [R4,#0x24]
20E952:  LDR             R0, [R4,#0x28]
20E954:  BLX             R2
20E956:  MOVS            R0, #0
20E958:  MOV             R6, #0xFFFFFFFE
20E95C:  STR             R0, [R4,#0x1C]
20E95E:  B               loc_20E98C
20E960:  MOV             R6, #0xFFFFFFFE
20E964:  B               loc_20E98C
20E966:  CBZ             R1, loc_20E988
20E968:  LDR             R2, [R4,#0x24]
20E96A:  CBZ             R2, loc_20E988
20E96C:  LDR             R0, [R1,#0x14]
20E96E:  CBZ             R0, loc_20E97A
20E970:  MOV             R1, R4
20E972:  BLX             j_inflate_blocks_free
20E976:  LDR             R1, [R4,#0x1C]
20E978:  LDR             R2, [R4,#0x24]
20E97A:  LDR             R0, [R4,#0x28]
20E97C:  BLX             R2
20E97E:  MOVS            R0, #0
20E980:  MOV             R6, #0xFFFFFFFC
20E984:  STR             R0, [R4,#0x1C]
20E986:  B               loc_20E98C
20E988:  MOV             R6, #0xFFFFFFFC
20E98C:  MOV             R0, R6
20E98E:  POP.W           {R11}
20E992:  POP             {R4-R7,PC}
