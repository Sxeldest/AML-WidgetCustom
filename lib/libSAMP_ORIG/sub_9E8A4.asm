; =========================================================
; Game Engine Function: sub_9E8A4
; Address            : 0x9E8A4 - 0x9EA22
; =========================================================

9E8A4:  PUSH            {R4-R7,LR}
9E8A6:  ADD             R7, SP, #0xC
9E8A8:  PUSH.W          {R8-R11}
9E8AC:  SUB             SP, SP, #4
9E8AE:  MOV             R4, R0
9E8B0:  LDRB.W          R0, [R1,#0x3C]
9E8B4:  MOV             R11, R1
9E8B6:  CMP             R0, #0
9E8B8:  BNE             loc_9E94E
9E8BA:  MOVS            R0, #0x58 ; 'X'
9E8BC:  BL              sub_885E4
9E8C0:  VMOV.I32        Q8, #0
9E8C4:  MOV             R1, R0
9E8C6:  MOVS            R3, #0xC
9E8C8:  MOVS            R2, #0
9E8CA:  STR.W           R2, [R0,#0x3E]
9E8CE:  MOV.W           R6, #0x3F800000
9E8D2:  VST1.32         {D16-D17}, [R1]!
9E8D6:  VST1.32         {D16-D17}, [R1],R3
9E8DA:  MOVS            R3, #0xE
9E8DC:  VST1.32         {D16-D17}, [R1]!
9E8E0:  VST1.32         {D16-D17}, [R1],R3
9E8E4:  STR             R2, [R1]
9E8E6:  MOVS            R1, #0x3F ; '?'
9E8E8:  STRH.W          R1, [R0,#0x42]
9E8EC:  LDRD.W          R1, R3, [R4,#0x34]
9E8F0:  STRB.W          R2, [R0,#0x54]
9E8F4:  CMP             R1, R3
9E8F6:  STR             R2, [R0,#0x4C]
9E8F8:  STR             R2, [R0,#0x50]
9E8FA:  STRD.W          R6, R2, [R0,#0x44]
9E8FE:  STR             R0, [SP,#0x20+var_20]
9E900:  BNE             loc_9E940
9E902:  CMP             R1, #0
9E904:  ADD.W           R6, R1, #1
9E908:  ITTE NE
9E90A:  ADDNE.W         R0, R1, R1,LSR#31
9E90E:  ADDNE.W         R0, R1, R0,ASR#1
9E912:  MOVEQ           R0, #8
9E914:  CMP             R0, R6
9E916:  IT GT
9E918:  MOVGT           R6, R0
9E91A:  CMP             R1, R6
9E91C:  BGE             loc_9E940
9E91E:  LSLS            R0, R6, #2
9E920:  BL              sub_885E4
9E924:  LDR             R1, [R4,#0x3C]; src
9E926:  MOV             R8, R0
9E928:  CBZ             R1, loc_9E93A
9E92A:  LDR             R0, [R4,#0x34]
9E92C:  LSLS            R2, R0, #2; n
9E92E:  MOV             R0, R8; dest
9E930:  BLX             j_memcpy
9E934:  LDR             R0, [R4,#0x3C]
9E936:  BL              sub_88614
9E93A:  LDR             R1, [R4,#0x34]
9E93C:  STRD.W          R6, R8, [R4,#0x38]
9E940:  LDR             R0, [R4,#0x3C]
9E942:  LDR             R2, [SP,#0x20+var_20]
9E944:  STR.W           R2, [R0,R1,LSL#2]
9E948:  LDR             R0, [R4,#0x34]
9E94A:  ADDS            R0, #1
9E94C:  STR             R0, [R4,#0x34]
9E94E:  LDRD.W          R0, R1, [R4,#0x4C]
9E952:  CMP             R0, R1
9E954:  BNE             loc_9E99A
9E956:  CMP             R0, #0
9E958:  ADD.W           R6, R0, #1
9E95C:  ITTE NE
9E95E:  ADDNE.W         R1, R0, R0,LSR#31
9E962:  ADDNE.W         R1, R0, R1,ASR#1
9E966:  MOVEQ           R1, #8
9E968:  CMP             R1, R6
9E96A:  IT GT
9E96C:  MOVGT           R6, R1
9E96E:  CMP             R0, R6
9E970:  BGE             loc_9E99A
9E972:  MOVS            R5, #0x74 ; 't'
9E974:  MUL.W           R0, R6, R5
9E978:  BL              sub_885E4
9E97C:  LDR             R1, [R4,#0x54]; src
9E97E:  MOV             R8, R0
9E980:  CBZ             R1, loc_9E994
9E982:  LDR             R0, [R4,#0x4C]
9E984:  MUL.W           R2, R0, R5; n
9E988:  MOV             R0, R8; dest
9E98A:  BLX             j_memcpy
9E98E:  LDR             R0, [R4,#0x54]
9E990:  BL              sub_88614
9E994:  LDR             R0, [R4,#0x4C]
9E996:  STRD.W          R6, R8, [R4,#0x50]
9E99A:  MOVS            R6, #0x74 ; 't'
9E99C:  LDR             R1, [R4,#0x54]
9E99E:  MLA.W           R0, R0, R6, R1; dest
9E9A2:  MOV             R1, R11; src
9E9A4:  MOVS            R2, #0x74 ; 't'; n
9E9A6:  BLX             j_memcpy
9E9AA:  LDR             R5, [R4,#0x4C]
9E9AC:  LDR.W           R10, [R4,#0x54]
9E9B0:  ADDS            R1, R5, #1
9E9B2:  STR             R1, [R4,#0x4C]
9E9B4:  MLA.W           R6, R5, R6, R10
9E9B8:  MOV             R8, R6
9E9BA:  LDR.W           R0, [R8,#0x70]!
9E9BE:  CBNZ            R0, loc_9E9D0
9E9C0:  LDR             R0, [R4,#0x34]
9E9C2:  LDR             R1, [R4,#0x3C]
9E9C4:  ADD.W           R0, R1, R0,LSL#2
9E9C8:  LDR.W           R0, [R0,#-4]
9E9CC:  STR.W           R0, [R8]
9E9D0:  LDRB.W          R0, [R6,#8]!
9E9D4:  CBNZ            R0, loc_9E9FC
9E9D6:  MOVS            R0, #0x74 ; 't'
9E9D8:  MLA.W           R9, R5, R0, R10
9E9DC:  LDR.W           R0, [R9,#4]
9E9E0:  BL              sub_885E4
9E9E4:  MOVS            R1, #0x74 ; 't'
9E9E6:  LDR.W           R2, [R9,#4]; n
9E9EA:  MULS            R1, R5
9E9EC:  MOVS            R3, #1
9E9EE:  STRB            R3, [R6]
9E9F0:  STR.W           R0, [R10,R1]
9E9F4:  LDR.W           R1, [R11]; src
9E9F8:  BLX             j_memcpy
9E9FC:  LDR             R0, [R4,#0x14]
9E9FE:  CMP             R0, #0
9EA00:  IT NE
9EA02:  BLNE            sub_88614
9EA06:  LDR             R0, [R4,#0x18]
9EA08:  CMP             R0, #0
9EA0A:  IT NE
9EA0C:  BLNE            sub_88614
9EA10:  MOVS            R1, #0
9EA12:  LDR.W           R0, [R8]
9EA16:  STRD.W          R1, R1, [R4,#0x14]
9EA1A:  ADD             SP, SP, #4
9EA1C:  POP.W           {R8-R11}
9EA20:  POP             {R4-R7,PC}
