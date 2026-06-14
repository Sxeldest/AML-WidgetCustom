; =========================================================
; Game Engine Function: sub_477A3C
; Address            : 0x477A3C - 0x477ADA
; =========================================================

477A3C:  PUSH            {R4-R7,LR}
477A3E:  ADD             R7, SP, #0xC
477A40:  PUSH.W          {R8-R11}
477A44:  SUB             SP, SP, #0xC
477A46:  MOV             R10, R0
477A48:  MOVS            R0, #0
477A4A:  LDR.W           R11, [R10,#0x15C]
477A4E:  STRD.W          R0, R0, [SP,#0x28+var_24]
477A52:  LDR.W           R0, [R10,#0xE4]
477A56:  CMP             R0, #1
477A58:  BLT             loc_477AD2
477A5A:  ADD             R4, SP, #0x28+var_20
477A5C:  MOVS            R6, #0
477A5E:  ADD.W           R0, R10, R6,LSL#2
477A62:  LDR.W           R0, [R0,#0xE8]
477A66:  LDRD.W          R9, R5, [R0,#0x14]
477A6A:  LDRB.W          R0, [R4,R9]
477A6E:  CBNZ            R0, loc_477A98
477A70:  ADD.W           R8, R10, R9,LSL#2
477A74:  LDR.W           R1, [R8,#0x58]!
477A78:  CBNZ            R1, loc_477A86
477A7A:  MOV             R0, R10
477A7C:  BLX             j__Z21jpeg_alloc_huff_tableP18jpeg_common_struct; jpeg_alloc_huff_table(jpeg_common_struct *)
477A80:  MOV             R1, R0
477A82:  STR.W           R1, [R8]
477A86:  ADD.W           R0, R11, R9,LSL#2
477A8A:  LDR             R2, [R0,#0x4C]
477A8C:  MOV             R0, R10
477A8E:  BLX             j__Z22jpeg_gen_optimal_tableP20jpeg_compress_structP9JHUFF_TBLPl; jpeg_gen_optimal_table(jpeg_compress_struct *,JHUFF_TBL *,long *)
477A92:  MOVS            R0, #1
477A94:  STRB.W          R0, [R4,R9]
477A98:  ADD             R0, SP, #0x28+var_24
477A9A:  LDRB            R0, [R0,R5]
477A9C:  CBNZ            R0, loc_477AC8
477A9E:  MOV             R8, R4
477AA0:  ADD.W           R4, R10, R5,LSL#2
477AA4:  LDR.W           R1, [R4,#0x68]!
477AA8:  CBNZ            R1, loc_477AB4
477AAA:  MOV             R0, R10
477AAC:  BLX             j__Z21jpeg_alloc_huff_tableP18jpeg_common_struct; jpeg_alloc_huff_table(jpeg_common_struct *)
477AB0:  MOV             R1, R0
477AB2:  STR             R1, [R4]
477AB4:  ADD.W           R0, R11, R5,LSL#2
477AB8:  LDR             R2, [R0,#0x5C]
477ABA:  MOV             R0, R10
477ABC:  BLX             j__Z22jpeg_gen_optimal_tableP20jpeg_compress_structP9JHUFF_TBLPl; jpeg_gen_optimal_table(jpeg_compress_struct *,JHUFF_TBL *,long *)
477AC0:  ADD             R1, SP, #0x28+var_24
477AC2:  MOVS            R0, #1
477AC4:  MOV             R4, R8
477AC6:  STRB            R0, [R1,R5]
477AC8:  LDR.W           R0, [R10,#0xE4]
477ACC:  ADDS            R6, #1
477ACE:  CMP             R6, R0
477AD0:  BLT             loc_477A5E
477AD2:  ADD             SP, SP, #0xC
477AD4:  POP.W           {R8-R11}
477AD8:  POP             {R4-R7,PC}
