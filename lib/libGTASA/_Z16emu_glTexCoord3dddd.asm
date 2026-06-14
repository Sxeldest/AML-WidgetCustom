; =========================================================
; Game Engine Function: _Z16emu_glTexCoord3dddd
; Address            : 0x1B7AD0 - 0x1B7B8A
; =========================================================

1B7AD0:  PUSH            {R4-R7,LR}
1B7AD2:  ADD             R7, SP, #0xC
1B7AD4:  PUSH.W          {R8}
1B7AD8:  VPUSH           {D8-D10}
1B7ADC:  VMOV            D18, R0, R1
1B7AE0:  LDR             R0, =(Imm_ptr - 0x1B7AEE)
1B7AE2:  VLDR            D16, [R7,#arg_0]
1B7AE6:  VMOV            D17, R2, R3
1B7AEA:  ADD             R0, PC; Imm_ptr
1B7AEC:  LDR             R0, [R0]; Imm
1B7AEE:  LDR             R0, [R0,#(dword_6B32CC - 0x6B32A4)]
1B7AF0:  CBNZ            R0, loc_1B7B04
1B7AF2:  LDR             R0, =(Imm_ptr - 0x1B7AFC)
1B7AF4:  MOVS            R2, #0
1B7AF6:  MOVS            R3, #3
1B7AF8:  ADD             R0, PC; Imm_ptr
1B7AFA:  LDR             R1, [R0]; Imm
1B7AFC:  MOVS            R0, #0xC
1B7AFE:  STRD.W          R3, R0, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B7B02:  STR             R2, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B7B04:  LDR             R1, =(Imm_ptr - 0x1B7B0E)
1B7B06:  VCVT.F32.F64    S16, D16
1B7B0A:  ADD             R1, PC; Imm_ptr
1B7B0C:  LDR             R1, [R1]; Imm
1B7B0E:  LDRD.W          R2, R4, [R1,#(dword_6B32C0 - 0x6B32A4)]
1B7B12:  ADD.W           R8, R4, R0
1B7B16:  VCVT.F32.F64    S18, D17
1B7B1A:  CMP             R2, R8
1B7B1C:  VCVT.F32.F64    S20, D18
1B7B20:  BGE             loc_1B7B60
1B7B22:  LDR             R0, =(Imm_ptr - 0x1B7B2C)
1B7B24:  ADD.W           R1, R8, R8,LSL#1
1B7B28:  ADD             R0, PC; Imm_ptr
1B7B2A:  LDR             R6, [R0]; Imm
1B7B2C:  ADD.W           R0, R1, R1,LSR#31
1B7B30:  ASRS            R0, R0, #1; byte_count
1B7B32:  STR             R0, [R6,#(dword_6B32C0 - 0x6B32A4)]
1B7B34:  BLX             malloc
1B7B38:  LDR             R6, [R6,#(dword_6B32BC - 0x6B32A4)]
1B7B3A:  MOV             R5, R0
1B7B3C:  CBZ             R6, loc_1B7B56
1B7B3E:  MOV             R0, R5; void *
1B7B40:  MOV             R1, R6; void *
1B7B42:  MOV             R2, R4; size_t
1B7B44:  BLX             memcpy_1
1B7B48:  MOV             R0, R6; p
1B7B4A:  BLX             free
1B7B4E:  LDR             R0, =(Imm_ptr - 0x1B7B54)
1B7B50:  ADD             R0, PC; Imm_ptr
1B7B52:  LDR             R0, [R0]; Imm
1B7B54:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B7B56:  LDR             R0, =(Imm_ptr - 0x1B7B5C)
1B7B58:  ADD             R0, PC; Imm_ptr
1B7B5A:  LDR             R0, [R0]; Imm
1B7B5C:  STR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B7B5E:  B               loc_1B7B68
1B7B60:  LDR             R0, =(Imm_ptr - 0x1B7B66)
1B7B62:  ADD             R0, PC; Imm_ptr
1B7B64:  LDR             R0, [R0]; Imm
1B7B66:  LDR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B7B68:  LDR             R0, =(Imm_ptr - 0x1B7B6E)
1B7B6A:  ADD             R0, PC; Imm_ptr
1B7B6C:  LDR             R0, [R0]; Imm
1B7B6E:  STR.W           R8, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B7B72:  ADDS            R0, R5, R4
1B7B74:  VSTR            S20, [R0]
1B7B78:  VSTR            S18, [R0,#4]
1B7B7C:  VSTR            S16, [R0,#8]
1B7B80:  VPOP            {D8-D10}
1B7B84:  POP.W           {R8}
1B7B88:  POP             {R4-R7,PC}
