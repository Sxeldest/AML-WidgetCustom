; =========================================================
; Game Engine Function: _Z14emu_glColor3dvPKd
; Address            : 0x1B5904 - 0x1B59B6
; =========================================================

1B5904:  VLDM            R0, {D16-D18}
1B5908:  LDR             R0, =(Imm_ptr - 0x1B590E)
1B590A:  ADD             R0, PC; Imm_ptr
1B590C:  LDR             R0, [R0]; Imm
1B590E:  LDR             R0, [R0,#(dword_6B32FC - 0x6B32A4)]
1B5910:  CBNZ            R0, loc_1B5924
1B5912:  LDR             R0, =(Imm_ptr - 0x1B591C)
1B5914:  MOVS            R2, #0
1B5916:  MOVS            R3, #3
1B5918:  ADD             R0, PC; Imm_ptr
1B591A:  LDR             R1, [R0]; Imm
1B591C:  MOVS            R0, #0xC
1B591E:  STRD.W          R3, R0, [R1,#(dword_6B32F8 - 0x6B32A4)]
1B5922:  STR             R2, [R1,#(dword_6B3300 - 0x6B32A4)]
1B5924:  PUSH            {R4-R7,LR}
1B5926:  ADD             R7, SP, #0xC
1B5928:  PUSH.W          {R8}
1B592C:  VPUSH           {D8-D10}
1B5930:  LDR             R1, =(Imm_ptr - 0x1B593A)
1B5932:  VCVT.F32.F64    S16, D18
1B5936:  ADD             R1, PC; Imm_ptr
1B5938:  LDR             R1, [R1]; Imm
1B593A:  LDRD.W          R2, R4, [R1,#(dword_6B32F0 - 0x6B32A4)]
1B593E:  ADD.W           R8, R4, R0
1B5942:  VCVT.F32.F64    S18, D17
1B5946:  CMP             R2, R8
1B5948:  VCVT.F32.F64    S20, D16
1B594C:  BGE             loc_1B598C
1B594E:  LDR             R0, =(Imm_ptr - 0x1B5958)
1B5950:  ADD.W           R1, R8, R8,LSL#1
1B5954:  ADD             R0, PC; Imm_ptr
1B5956:  LDR             R6, [R0]; Imm
1B5958:  ADD.W           R0, R1, R1,LSR#31
1B595C:  ASRS            R0, R0, #1; byte_count
1B595E:  STR             R0, [R6,#(dword_6B32F0 - 0x6B32A4)]
1B5960:  BLX             malloc
1B5964:  LDR             R6, [R6,#(dword_6B32EC - 0x6B32A4)]
1B5966:  MOV             R5, R0
1B5968:  CBZ             R6, loc_1B5982
1B596A:  MOV             R0, R5; void *
1B596C:  MOV             R1, R6; void *
1B596E:  MOV             R2, R4; size_t
1B5970:  BLX             memcpy_1
1B5974:  MOV             R0, R6; p
1B5976:  BLX             free
1B597A:  LDR             R0, =(Imm_ptr - 0x1B5980)
1B597C:  ADD             R0, PC; Imm_ptr
1B597E:  LDR             R0, [R0]; Imm
1B5980:  LDR             R4, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B5982:  LDR             R0, =(Imm_ptr - 0x1B5988)
1B5984:  ADD             R0, PC; Imm_ptr
1B5986:  LDR             R0, [R0]; Imm
1B5988:  STR             R5, [R0,#(dword_6B32EC - 0x6B32A4)]
1B598A:  B               loc_1B5994
1B598C:  LDR             R0, =(Imm_ptr - 0x1B5992)
1B598E:  ADD             R0, PC; Imm_ptr
1B5990:  LDR             R0, [R0]; Imm
1B5992:  LDR             R5, [R0,#(dword_6B32EC - 0x6B32A4)]
1B5994:  LDR             R0, =(Imm_ptr - 0x1B599A)
1B5996:  ADD             R0, PC; Imm_ptr
1B5998:  LDR             R0, [R0]; Imm
1B599A:  STR.W           R8, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B599E:  ADDS            R0, R5, R4
1B59A0:  VSTR            S20, [R0]
1B59A4:  VSTR            S18, [R0,#4]
1B59A8:  VSTR            S16, [R0,#8]
1B59AC:  VPOP            {D8-D10}
1B59B0:  POP.W           {R8}
1B59B4:  POP             {R4-R7,PC}
