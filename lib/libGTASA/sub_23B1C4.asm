; =========================================================
; Game Engine Function: sub_23B1C4
; Address            : 0x23B1C4 - 0x23B25A
; =========================================================

23B1C4:  PUSH            {R4-R7,LR}
23B1C6:  ADD             R7, SP, #0xC
23B1C8:  PUSH.W          {R8}
23B1CC:  SUB             SP, SP, #8
23B1CE:  MOV             R5, R2
23B1D0:  MOV             R8, R3
23B1D2:  MOV             R6, R1
23B1D4:  MOV             R4, R0
23B1D6:  CBZ             R5, loc_23B1FC
23B1D8:  LDR             R0, [R7,#arg_0]
23B1DA:  CBZ             R0, loc_23B204
23B1DC:  LDRD.W          R0, R1, [R4]; ptr
23B1E0:  CMP             R1, R5
23B1E2:  BEQ             loc_23B1F2
23B1E4:  CBZ             R0, loc_23B22E
23B1E6:  MOV             R1, R5; size
23B1E8:  BLX             realloc
23B1EC:  CBZ             R0, loc_23B238
23B1EE:  STRD.W          R0, R5, [R4]
23B1F2:  MOV             R1, R6; void *
23B1F4:  MOV             R2, R5; size_t
23B1F6:  BLX             memcpy_1
23B1FA:  STR             R5, [R4,#8]
23B1FC:  ADD             SP, SP, #8
23B1FE:  POP.W           {R8}
23B202:  POP             {R4-R7,PC}
23B204:  LDRB.W          R1, [R6],#1
23B208:  SUBS            R3, R5, #1
23B20A:  MOV             R0, R4
23B20C:  STR.W           R8, [SP,#0x18+var_18]
23B210:  MOV             R2, R6
23B212:  BLX             j_INT123_id3_to_utf8
23B216:  CMP.W           R8, #0
23B21A:  BEQ             loc_23B1FC
23B21C:  LDR             R0, [R4,#8]
23B21E:  CMP             R0, #0
23B220:  BNE             loc_23B1FC
23B222:  LDR             R0, =(off_677664 - 0x23B22C)
23B224:  MOVS            R2, #0xD7
23B226:  LDR             R1, =(aCProjectsOswra_18 - 0x23B22E); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23B228:  ADD             R0, PC; off_677664
23B22A:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23B22C:  B               loc_23B248
23B22E:  MOV             R0, R5; byte_count
23B230:  BLX             malloc
23B234:  CMP             R0, #0
23B236:  BNE             loc_23B1EE
23B238:  CMP.W           R8, #0
23B23C:  BEQ             loc_23B1FC
23B23E:  LDR             R0, =(off_677664 - 0x23B248)
23B240:  MOVS            R2, #0xCB
23B242:  LDR             R1, =(aCProjectsOswra_59 - 0x23B24A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23B244:  ADD             R0, PC; off_677664
23B246:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23B248:  LDR             R0, [R0]
23B24A:  LDR             R0, [R0]; stream
23B24C:  ADD             SP, SP, #8
23B24E:  POP.W           {R8}
23B252:  POP.W           {R4-R7,LR}
23B256:  B.W             j_fprintf
