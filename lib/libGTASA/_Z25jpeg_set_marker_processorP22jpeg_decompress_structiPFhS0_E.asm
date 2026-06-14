; =========================================================
; Game Engine Function: _Z25jpeg_set_marker_processorP22jpeg_decompress_structiPFhS0_E
; Address            : 0x47F304 - 0x47F33A
; =========================================================

47F304:  LDR.W           R12, [R0,#0x194]
47F308:  CMP             R1, #0xFE
47F30A:  ITT EQ
47F30C:  STREQ.W         R2, [R12,#0x18]
47F310:  BXEQ            LR
47F312:  BIC.W           R3, R1, #0xF
47F316:  CMP             R3, #0xE0
47F318:  BNE             loc_47F32A
47F31A:  ADD.W           R0, R12, R1,LSL#2
47F31E:  MOV             R1, #0xFFFFFC9C
47F326:  STR             R2, [R0,R1]
47F328:  BX              LR
47F32A:  LDR             R2, [R0]
47F32C:  MOVS            R3, #0x44 ; 'D'
47F32E:  STR             R3, [R2,#0x14]
47F330:  LDR             R2, [R0]
47F332:  STR             R1, [R2,#0x18]
47F334:  LDR             R1, [R0]
47F336:  LDR             R1, [R1]
47F338:  BX              R1
