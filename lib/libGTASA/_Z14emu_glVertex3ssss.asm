; =========================================================
; Game Engine Function: _Z14emu_glVertex3ssss
; Address            : 0x1B8C90 - 0x1B8D3A
; =========================================================

1B8C90:  PUSH            {R4-R7,LR}
1B8C92:  ADD             R7, SP, #0xC
1B8C94:  PUSH.W          {R8-R11}
1B8C98:  SUB             SP, SP, #4
1B8C9A:  MOV             R10, R0
1B8C9C:  LDR             R0, =(Imm_ptr - 0x1B8CA6)
1B8C9E:  MOV             R8, R2
1B8CA0:  MOV             R9, R1
1B8CA2:  ADD             R0, PC; Imm_ptr
1B8CA4:  LDR             R0, [R0]; Imm
1B8CA6:  LDR             R0, [R0,#(dword_6B32B4 - 0x6B32A4)]
1B8CA8:  CBNZ            R0, loc_1B8CBC
1B8CAA:  LDR             R0, =(Imm_ptr - 0x1B8CB4)
1B8CAC:  MOVS            R2, #3
1B8CAE:  MOVS            R3, #4
1B8CB0:  ADD             R0, PC; Imm_ptr
1B8CB2:  LDR             R1, [R0]; Imm
1B8CB4:  MOVS            R0, #8
1B8CB6:  STRD.W          R3, R0, [R1,#(dword_6B32B0 - 0x6B32A4)]
1B8CBA:  STR             R2, [R1,#(dword_6B32B8 - 0x6B32A4)]
1B8CBC:  LDR             R1, =(Imm_ptr - 0x1B8CC2)
1B8CBE:  ADD             R1, PC; Imm_ptr
1B8CC0:  LDR             R1, [R1]; Imm
1B8CC2:  LDRD.W          R2, R4, [R1,#(dword_6B32A8 - 0x6B32A4)]
1B8CC6:  ADD.W           R11, R4, R0
1B8CCA:  CMP             R2, R11
1B8CCC:  BGE             loc_1B8D0C
1B8CCE:  LDR             R0, =(Imm_ptr - 0x1B8CD8)
1B8CD0:  ADD.W           R1, R11, R11,LSL#1
1B8CD4:  ADD             R0, PC; Imm_ptr
1B8CD6:  LDR             R6, [R0]; Imm
1B8CD8:  ADD.W           R0, R1, R1,LSR#31
1B8CDC:  ASRS            R0, R0, #1; byte_count
1B8CDE:  STR             R0, [R6,#(dword_6B32A8 - 0x6B32A4)]
1B8CE0:  BLX             malloc
1B8CE4:  LDR             R6, [R6]
1B8CE6:  MOV             R5, R0
1B8CE8:  CBZ             R6, loc_1B8D02
1B8CEA:  MOV             R0, R5; void *
1B8CEC:  MOV             R1, R6; void *
1B8CEE:  MOV             R2, R4; size_t
1B8CF0:  BLX             memcpy_1
1B8CF4:  MOV             R0, R6; p
1B8CF6:  BLX             free
1B8CFA:  LDR             R0, =(Imm_ptr - 0x1B8D00)
1B8CFC:  ADD             R0, PC; Imm_ptr
1B8CFE:  LDR             R0, [R0]; Imm
1B8D00:  LDR             R4, [R0,#(dword_6B32AC - 0x6B32A4)]
1B8D02:  LDR             R0, =(Imm_ptr - 0x1B8D08)
1B8D04:  ADD             R0, PC; Imm_ptr
1B8D06:  LDR             R0, [R0]; Imm
1B8D08:  STR             R5, [R0]
1B8D0A:  B               loc_1B8D14
1B8D0C:  LDR             R0, =(Imm_ptr - 0x1B8D12)
1B8D0E:  ADD             R0, PC; Imm_ptr
1B8D10:  LDR             R0, [R0]; Imm
1B8D12:  LDR             R5, [R0]
1B8D14:  LDR             R0, =(Imm_ptr - 0x1B8D1E)
1B8D16:  MOVW            R1, #0x7FFF
1B8D1A:  ADD             R0, PC; Imm_ptr
1B8D1C:  LDR             R0, [R0]; Imm
1B8D1E:  STR.W           R11, [R0,#(dword_6B32AC - 0x6B32A4)]
1B8D22:  ADDS            R0, R5, R4
1B8D24:  STRH.W          R10, [R5,R4]
1B8D28:  STRH.W          R9, [R0,#2]
1B8D2C:  STRH.W          R8, [R0,#4]
1B8D30:  STRH            R1, [R0,#6]
1B8D32:  ADD             SP, SP, #4
1B8D34:  POP.W           {R8-R11}
1B8D38:  POP             {R4-R7,PC}
