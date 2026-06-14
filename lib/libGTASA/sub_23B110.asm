; =========================================================
; Game Engine Function: sub_23B110
; Address            : 0x23B110 - 0x23B180
; =========================================================

23B110:  PUSH            {R4-R7,LR}
23B112:  ADD             R7, SP, #0xC
23B114:  PUSH.W          {R8}
23B118:  MOV             R4, R0
23B11A:  MOV             R8, R1
23B11C:  LDR             R1, [R4,#4]
23B11E:  MOV             R6, R2
23B120:  ADDS            R5, R6, #1
23B122:  BEQ             loc_23B13A
23B124:  LDR             R0, [R4]; ptr
23B126:  CMP             R1, R5
23B128:  BEQ             loc_23B14E
23B12A:  CBZ             R0, loc_23B164
23B12C:  MOV             R1, R5; size
23B12E:  BLX             realloc
23B132:  CBZ             R0, loc_23B16E
23B134:  STRD.W          R0, R5, [R4]
23B138:  B               loc_23B14E
23B13A:  CBZ             R1, loc_23B146
23B13C:  LDR             R0, [R4]; p
23B13E:  CMP             R0, #0
23B140:  IT NE
23B142:  BLXNE           free
23B146:  MOVS            R0, #0; void *
23B148:  STRD.W          R0, R0, [R4]
23B14C:  STR             R0, [R4,#8]
23B14E:  MOV             R1, R8; void *
23B150:  MOV             R2, R6; size_t
23B152:  BLX             memcpy_1
23B156:  LDR             R0, [R4]
23B158:  MOVS            R1, #0
23B15A:  STRB            R1, [R0,R6]
23B15C:  STR             R5, [R4,#8]
23B15E:  POP.W           {R8}
23B162:  POP             {R4-R7,PC}
23B164:  MOV             R0, R5; byte_count
23B166:  BLX             malloc
23B16A:  CMP             R0, #0
23B16C:  BNE             loc_23B134
23B16E:  LDR             R0, [R4]; p
23B170:  CMP             R0, #0
23B172:  IT NE
23B174:  BLXNE           free
23B178:  MOVS            R5, #0
23B17A:  STRD.W          R5, R5, [R4]
23B17E:  B               loc_23B15C
