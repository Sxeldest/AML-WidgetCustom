; =========================================================
; Game Engine Function: png_set_tRNS
; Address            : 0x20289C - 0x202986
; =========================================================

20289C:  PUSH            {R4-R7,LR}
20289E:  ADD             R7, SP, #0xC
2028A0:  PUSH.W          {R8-R10}
2028A4:  MOV             R6, R0
2028A6:  CMP             R6, #0
2028A8:  MOV             R4, R1
2028AA:  MOV             R8, R3
2028AC:  MOV             R5, R2
2028AE:  IT NE
2028B0:  CMPNE           R4, #0
2028B2:  BEQ             loc_202922
2028B4:  LDR.W           R10, [R7,#arg_0]
2028B8:  CBZ             R5, loc_2028F4
2028BA:  MOV             R0, R6; int
2028BC:  MOV             R1, R4
2028BE:  MOV.W           R2, #0x2000
2028C2:  MOVS            R3, #0
2028C4:  BLX             j_png_free_data
2028C8:  SUB.W           R0, R8, #1
2028CC:  CMP.W           R0, #0x100
2028D0:  BCS             loc_2028EC
2028D2:  MOV             R0, R6
2028D4:  MOV.W           R1, #0x100
2028D8:  BLX             j_png_malloc
2028DC:  MOV             R9, R0
2028DE:  MOV             R1, R5; void *
2028E0:  MOV             R2, R8; size_t
2028E2:  STR.W           R9, [R4,#0x9C]
2028E6:  BLX             memcpy_1
2028EA:  B               loc_2028F0
2028EC:  LDR.W           R9, [R4,#0x9C]
2028F0:  STR.W           R9, [R6,#0x26C]
2028F4:  CMP.W           R10, #0
2028F8:  BEQ             loc_202918
2028FA:  LDRB            R0, [R4,#0x18]
2028FC:  CMP             R0, #0xF
2028FE:  BHI             loc_202940
202900:  LDRB            R1, [R4,#0x19]
202902:  MOVS            R2, #1
202904:  LSL.W           R0, R2, R0
202908:  CMP             R1, #2
20290A:  BEQ             loc_202928
20290C:  CBNZ            R1, loc_202940
20290E:  LDRH.W          R1, [R10,#8]
202912:  CMP             R0, R1
202914:  BLE             loc_202938
202916:  B               loc_202940
202918:  CMP.W           R8, #0
20291C:  STRH.W          R8, [R4,#0x16]
202920:  BNE             loc_202962
202922:  POP.W           {R8-R10}
202926:  POP             {R4-R7,PC}
202928:  LDRH.W          R1, [R10,#2]
20292C:  CMP             R0, R1
20292E:  ITT GT
202930:  LDRHGT.W        R1, [R10,#4]
202934:  CMPGT           R0, R1
202936:  BGT             loc_20297C
202938:  ADR             R1, aTrnsChunkHasOu; "tRNS chunk has out-of-range samples for"...
20293A:  MOV             R0, R6
20293C:  BLX             j_png_warning
202940:  LDRH.W          R0, [R10,#8]
202944:  CMP.W           R8, #0
202948:  VLD1.16         {D16}, [R10]
20294C:  STRH.W          R0, [R4,#0xA8]
202950:  ADD.W           R0, R4, #0xA0
202954:  IT EQ
202956:  MOVEQ.W         R8, #1
20295A:  STRH.W          R8, [R4,#0x16]
20295E:  VST1.16         {D16}, [R0]
202962:  LDR             R0, [R4,#8]
202964:  LDR.W           R1, [R4,#0xF4]
202968:  ORR.W           R0, R0, #0x10
20296C:  STR             R0, [R4,#8]
20296E:  ORR.W           R0, R1, #0x2000
202972:  STR.W           R0, [R4,#0xF4]
202976:  POP.W           {R8-R10}
20297A:  POP             {R4-R7,PC}
20297C:  LDRH.W          R1, [R10,#6]
202980:  CMP             R0, R1
202982:  BLE             loc_202938
202984:  B               loc_202940
