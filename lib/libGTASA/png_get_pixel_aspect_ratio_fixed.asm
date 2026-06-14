; =========================================================
; Game Engine Function: png_get_pixel_aspect_ratio_fixed
; Address            : 0x1F32F0 - 0x1F3334
; =========================================================

1F32F0:  PUSH            {R7,LR}
1F32F2:  MOV             R7, SP
1F32F4:  SUB             SP, SP, #8
1F32F6:  CMP             R0, #0
1F32F8:  IT NE
1F32FA:  CMPNE           R1, #0
1F32FC:  BEQ             loc_1F332E
1F32FE:  LDRB            R0, [R1,#8]
1F3300:  LSLS            R0, R0, #0x18
1F3302:  BPL             loc_1F332E
1F3304:  LDR.W           R3, [R1,#0xC0]
1F3308:  CMP             R3, #0
1F330A:  BEQ             loc_1F332E
1F330C:  ITT GE
1F330E:  LDRGE.W         R1, [R1,#0xC4]
1F3312:  CMPGE           R1, #1
1F3314:  BLT             loc_1F332E
1F3316:  MOVW            R2, #:lower16:(elf_hash_chain+0x8538)
1F331A:  ADD             R0, SP, #0x10+var_C
1F331C:  MOVT            R2, #:upper16:(elf_hash_chain+0x8538)
1F3320:  BLX             j_png_muldiv
1F3324:  CMP             R0, #0
1F3326:  ITTT NE
1F3328:  LDRNE           R0, [SP,#0x10+var_C]
1F332A:  ADDNE           SP, SP, #8
1F332C:  POPNE           {R7,PC}
1F332E:  MOVS            R0, #0
1F3330:  ADD             SP, SP, #8
1F3332:  POP             {R7,PC}
