; =========================================================
; Game Engine Function: _Z17emu_glTexCoord2svPKs
; Address            : 0x1B7A10 - 0x1B7AAE
; =========================================================

1B7A10:  PUSH            {R4-R7,LR}
1B7A12:  ADD             R7, SP, #0xC
1B7A14:  PUSH.W          {R8-R10}
1B7A18:  LDR             R1, =(Imm_ptr - 0x1B7A22)
1B7A1A:  LDRH.W          R8, [R0,#2]
1B7A1E:  ADD             R1, PC; Imm_ptr
1B7A20:  LDRH.W          R9, [R0]
1B7A24:  LDR             R1, [R1]; Imm
1B7A26:  LDR             R0, [R1,#(dword_6B32CC - 0x6B32A4)]
1B7A28:  CBNZ            R0, loc_1B7A3C
1B7A2A:  LDR             R0, =(Imm_ptr - 0x1B7A34)
1B7A2C:  MOVS            R2, #3
1B7A2E:  MOVS            R3, #2
1B7A30:  ADD             R0, PC; Imm_ptr
1B7A32:  LDR             R1, [R0]; Imm
1B7A34:  MOVS            R0, #4
1B7A36:  STRD.W          R3, R0, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B7A3A:  STR             R2, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B7A3C:  LDR             R1, =(Imm_ptr - 0x1B7A42)
1B7A3E:  ADD             R1, PC; Imm_ptr
1B7A40:  LDR             R1, [R1]; Imm
1B7A42:  LDRD.W          R2, R4, [R1,#(dword_6B32C0 - 0x6B32A4)]
1B7A46:  ADD.W           R10, R4, R0
1B7A4A:  CMP             R2, R10
1B7A4C:  BGE             loc_1B7A8C
1B7A4E:  LDR             R0, =(Imm_ptr - 0x1B7A58)
1B7A50:  ADD.W           R1, R10, R10,LSL#1
1B7A54:  ADD             R0, PC; Imm_ptr
1B7A56:  LDR             R6, [R0]; Imm
1B7A58:  ADD.W           R0, R1, R1,LSR#31
1B7A5C:  ASRS            R0, R0, #1; byte_count
1B7A5E:  STR             R0, [R6,#(dword_6B32C0 - 0x6B32A4)]
1B7A60:  BLX             malloc
1B7A64:  LDR             R6, [R6,#(dword_6B32BC - 0x6B32A4)]
1B7A66:  MOV             R5, R0
1B7A68:  CBZ             R6, loc_1B7A82
1B7A6A:  MOV             R0, R5; void *
1B7A6C:  MOV             R1, R6; void *
1B7A6E:  MOV             R2, R4; size_t
1B7A70:  BLX             memcpy_1
1B7A74:  MOV             R0, R6; p
1B7A76:  BLX             free
1B7A7A:  LDR             R0, =(Imm_ptr - 0x1B7A80)
1B7A7C:  ADD             R0, PC; Imm_ptr
1B7A7E:  LDR             R0, [R0]; Imm
1B7A80:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B7A82:  LDR             R0, =(Imm_ptr - 0x1B7A88)
1B7A84:  ADD             R0, PC; Imm_ptr
1B7A86:  LDR             R0, [R0]; Imm
1B7A88:  STR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B7A8A:  B               loc_1B7A94
1B7A8C:  LDR             R0, =(Imm_ptr - 0x1B7A92)
1B7A8E:  ADD             R0, PC; Imm_ptr
1B7A90:  LDR             R0, [R0]; Imm
1B7A92:  LDR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B7A94:  LDR             R0, =(Imm_ptr - 0x1B7A9A)
1B7A96:  ADD             R0, PC; Imm_ptr
1B7A98:  LDR             R0, [R0]; Imm
1B7A9A:  STR.W           R10, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B7A9E:  ADDS            R0, R5, R4
1B7AA0:  STRH.W          R9, [R5,R4]
1B7AA4:  STRH.W          R8, [R0,#2]
1B7AA8:  POP.W           {R8-R10}
1B7AAC:  POP             {R4-R7,PC}
