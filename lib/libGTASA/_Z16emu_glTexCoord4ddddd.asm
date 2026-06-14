; =========================================================
; Game Engine Function: _Z16emu_glTexCoord4ddddd
; Address            : 0x1B7FB0 - 0x1B8076
; =========================================================

1B7FB0:  PUSH            {R4-R7,LR}
1B7FB2:  ADD             R7, SP, #0xC
1B7FB4:  PUSH.W          {R8}
1B7FB8:  VPUSH           {D8-D11}
1B7FBC:  VMOV            D19, R0, R1
1B7FC0:  LDR             R0, =(Imm_ptr - 0x1B7FCE)
1B7FC2:  VLDR            D16, [R7,#arg_8]
1B7FC6:  VMOV            D18, R2, R3
1B7FCA:  ADD             R0, PC; Imm_ptr
1B7FCC:  VLDR            D17, [R7,#arg_0]
1B7FD0:  LDR             R0, [R0]; Imm
1B7FD2:  LDR             R0, [R0,#(dword_6B32CC - 0x6B32A4)]
1B7FD4:  CBNZ            R0, loc_1B7FE8
1B7FD6:  LDR             R0, =(Imm_ptr - 0x1B7FE0)
1B7FD8:  MOVS            R2, #0
1B7FDA:  MOVS            R3, #4
1B7FDC:  ADD             R0, PC; Imm_ptr
1B7FDE:  LDR             R1, [R0]; Imm
1B7FE0:  MOVS            R0, #0x10
1B7FE2:  STRD.W          R3, R0, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B7FE6:  STR             R2, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B7FE8:  LDR             R1, =(Imm_ptr - 0x1B7FF2)
1B7FEA:  VCVT.F32.F64    S16, D16
1B7FEE:  ADD             R1, PC; Imm_ptr
1B7FF0:  LDR             R1, [R1]; Imm
1B7FF2:  LDRD.W          R2, R4, [R1,#(dword_6B32C0 - 0x6B32A4)]
1B7FF6:  ADD.W           R8, R4, R0
1B7FFA:  VCVT.F32.F64    S18, D17
1B7FFE:  CMP             R2, R8
1B8000:  VCVT.F32.F64    S20, D18
1B8004:  VCVT.F32.F64    S22, D19
1B8008:  BGE             loc_1B8048
1B800A:  LDR             R0, =(Imm_ptr - 0x1B8014)
1B800C:  ADD.W           R1, R8, R8,LSL#1
1B8010:  ADD             R0, PC; Imm_ptr
1B8012:  LDR             R6, [R0]; Imm
1B8014:  ADD.W           R0, R1, R1,LSR#31
1B8018:  ASRS            R0, R0, #1; byte_count
1B801A:  STR             R0, [R6,#(dword_6B32C0 - 0x6B32A4)]
1B801C:  BLX             malloc
1B8020:  LDR             R6, [R6,#(dword_6B32BC - 0x6B32A4)]
1B8022:  MOV             R5, R0
1B8024:  CBZ             R6, loc_1B803E
1B8026:  MOV             R0, R5; void *
1B8028:  MOV             R1, R6; void *
1B802A:  MOV             R2, R4; size_t
1B802C:  BLX             memcpy_1
1B8030:  MOV             R0, R6; p
1B8032:  BLX             free
1B8036:  LDR             R0, =(Imm_ptr - 0x1B803C)
1B8038:  ADD             R0, PC; Imm_ptr
1B803A:  LDR             R0, [R0]; Imm
1B803C:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B803E:  LDR             R0, =(Imm_ptr - 0x1B8044)
1B8040:  ADD             R0, PC; Imm_ptr
1B8042:  LDR             R0, [R0]; Imm
1B8044:  STR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B8046:  B               loc_1B8050
1B8048:  LDR             R0, =(Imm_ptr - 0x1B804E)
1B804A:  ADD             R0, PC; Imm_ptr
1B804C:  LDR             R0, [R0]; Imm
1B804E:  LDR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B8050:  LDR             R0, =(Imm_ptr - 0x1B8056)
1B8052:  ADD             R0, PC; Imm_ptr
1B8054:  LDR             R0, [R0]; Imm
1B8056:  STR.W           R8, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B805A:  ADDS            R0, R5, R4
1B805C:  VSTR            S22, [R0]
1B8060:  VSTR            S20, [R0,#4]
1B8064:  VSTR            S18, [R0,#8]
1B8068:  VSTR            S16, [R0,#0xC]
1B806C:  VPOP            {D8-D11}
1B8070:  POP.W           {R8}
1B8074:  POP             {R4-R7,PC}
