; =========================================================
; Game Engine Function: _Z14emu_glColor3fvPKf
; Address            : 0x1B5AA8 - 0x1B5B4A
; =========================================================

1B5AA8:  PUSH            {R4-R7,LR}
1B5AAA:  ADD             R7, SP, #0xC
1B5AAC:  PUSH.W          {R8-R11}
1B5AB0:  SUB             SP, SP, #4
1B5AB2:  LDR             R1, =(Imm_ptr - 0x1B5ABC)
1B5AB4:  LDRD.W          R10, R8, [R0]
1B5AB8:  ADD             R1, PC; Imm_ptr
1B5ABA:  LDR.W           R9, [R0,#8]
1B5ABE:  LDR             R1, [R1]; Imm
1B5AC0:  LDR             R0, [R1,#(dword_6B32FC - 0x6B32A4)]
1B5AC2:  CBNZ            R0, loc_1B5AD6
1B5AC4:  LDR             R0, =(Imm_ptr - 0x1B5ACE)
1B5AC6:  MOVS            R2, #0
1B5AC8:  MOVS            R3, #3
1B5ACA:  ADD             R0, PC; Imm_ptr
1B5ACC:  LDR             R1, [R0]; Imm
1B5ACE:  MOVS            R0, #0xC
1B5AD0:  STRD.W          R3, R0, [R1,#(dword_6B32F8 - 0x6B32A4)]
1B5AD4:  STR             R2, [R1,#(dword_6B3300 - 0x6B32A4)]
1B5AD6:  LDR             R1, =(Imm_ptr - 0x1B5ADC)
1B5AD8:  ADD             R1, PC; Imm_ptr
1B5ADA:  LDR             R1, [R1]; Imm
1B5ADC:  LDRD.W          R2, R4, [R1,#(dword_6B32F0 - 0x6B32A4)]
1B5AE0:  ADD.W           R11, R4, R0
1B5AE4:  CMP             R2, R11
1B5AE6:  BGE             loc_1B5B26
1B5AE8:  LDR             R0, =(Imm_ptr - 0x1B5AF2)
1B5AEA:  ADD.W           R1, R11, R11,LSL#1
1B5AEE:  ADD             R0, PC; Imm_ptr
1B5AF0:  LDR             R6, [R0]; Imm
1B5AF2:  ADD.W           R0, R1, R1,LSR#31
1B5AF6:  ASRS            R0, R0, #1; byte_count
1B5AF8:  STR             R0, [R6,#(dword_6B32F0 - 0x6B32A4)]
1B5AFA:  BLX             malloc
1B5AFE:  LDR             R6, [R6,#(dword_6B32EC - 0x6B32A4)]
1B5B00:  MOV             R5, R0
1B5B02:  CBZ             R6, loc_1B5B1C
1B5B04:  MOV             R0, R5; void *
1B5B06:  MOV             R1, R6; void *
1B5B08:  MOV             R2, R4; size_t
1B5B0A:  BLX             memcpy_1
1B5B0E:  MOV             R0, R6; p
1B5B10:  BLX             free
1B5B14:  LDR             R0, =(Imm_ptr - 0x1B5B1A)
1B5B16:  ADD             R0, PC; Imm_ptr
1B5B18:  LDR             R0, [R0]; Imm
1B5B1A:  LDR             R4, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B5B1C:  LDR             R0, =(Imm_ptr - 0x1B5B22)
1B5B1E:  ADD             R0, PC; Imm_ptr
1B5B20:  LDR             R0, [R0]; Imm
1B5B22:  STR             R5, [R0,#(dword_6B32EC - 0x6B32A4)]
1B5B24:  B               loc_1B5B2E
1B5B26:  LDR             R0, =(Imm_ptr - 0x1B5B2C)
1B5B28:  ADD             R0, PC; Imm_ptr
1B5B2A:  LDR             R0, [R0]; Imm
1B5B2C:  LDR             R5, [R0,#(dword_6B32EC - 0x6B32A4)]
1B5B2E:  LDR             R0, =(Imm_ptr - 0x1B5B34)
1B5B30:  ADD             R0, PC; Imm_ptr
1B5B32:  LDR             R0, [R0]; Imm
1B5B34:  STR.W           R11, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B5B38:  ADDS            R0, R5, R4
1B5B3A:  STR.W           R10, [R5,R4]
1B5B3E:  STRD.W          R8, R9, [R0,#4]
1B5B42:  ADD             SP, SP, #4
1B5B44:  POP.W           {R8-R11}
1B5B48:  POP             {R4-R7,PC}
