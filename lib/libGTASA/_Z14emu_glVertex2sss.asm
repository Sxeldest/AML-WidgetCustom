; =========================================================
; Game Engine Function: _Z14emu_glVertex2sss
; Address            : 0x1B87D0 - 0x1B886A
; =========================================================

1B87D0:  PUSH            {R4-R7,LR}
1B87D2:  ADD             R7, SP, #0xC
1B87D4:  PUSH.W          {R8-R10}
1B87D8:  MOV             R9, R0
1B87DA:  LDR             R0, =(Imm_ptr - 0x1B87E2)
1B87DC:  MOV             R8, R1
1B87DE:  ADD             R0, PC; Imm_ptr
1B87E0:  LDR             R0, [R0]; Imm
1B87E2:  LDR             R0, [R0,#(dword_6B32B4 - 0x6B32A4)]
1B87E4:  CBNZ            R0, loc_1B87F8
1B87E6:  LDR             R0, =(Imm_ptr - 0x1B87F0)
1B87E8:  MOVS            R2, #3
1B87EA:  MOVS            R3, #2
1B87EC:  ADD             R0, PC; Imm_ptr
1B87EE:  LDR             R1, [R0]; Imm
1B87F0:  MOVS            R0, #4
1B87F2:  STRD.W          R3, R0, [R1,#(dword_6B32B0 - 0x6B32A4)]
1B87F6:  STR             R2, [R1,#(dword_6B32B8 - 0x6B32A4)]
1B87F8:  LDR             R1, =(Imm_ptr - 0x1B87FE)
1B87FA:  ADD             R1, PC; Imm_ptr
1B87FC:  LDR             R1, [R1]; Imm
1B87FE:  LDRD.W          R2, R6, [R1,#(dword_6B32A8 - 0x6B32A4)]
1B8802:  ADD.W           R10, R6, R0
1B8806:  CMP             R2, R10
1B8808:  BGE             loc_1B8848
1B880A:  LDR             R0, =(Imm_ptr - 0x1B8814)
1B880C:  ADD.W           R1, R10, R10,LSL#1
1B8810:  ADD             R0, PC; Imm_ptr
1B8812:  LDR             R5, [R0]; Imm
1B8814:  ADD.W           R0, R1, R1,LSR#31
1B8818:  ASRS            R0, R0, #1; byte_count
1B881A:  STR             R0, [R5,#(dword_6B32A8 - 0x6B32A4)]
1B881C:  BLX             malloc
1B8820:  LDR             R5, [R5]
1B8822:  MOV             R4, R0
1B8824:  CBZ             R5, loc_1B883E
1B8826:  MOV             R0, R4; void *
1B8828:  MOV             R1, R5; void *
1B882A:  MOV             R2, R6; size_t
1B882C:  BLX             memcpy_1
1B8830:  MOV             R0, R5; p
1B8832:  BLX             free
1B8836:  LDR             R0, =(Imm_ptr - 0x1B883C)
1B8838:  ADD             R0, PC; Imm_ptr
1B883A:  LDR             R0, [R0]; Imm
1B883C:  LDR             R6, [R0,#(dword_6B32AC - 0x6B32A4)]
1B883E:  LDR             R0, =(Imm_ptr - 0x1B8844)
1B8840:  ADD             R0, PC; Imm_ptr
1B8842:  LDR             R0, [R0]; Imm
1B8844:  STR             R4, [R0]
1B8846:  B               loc_1B8850
1B8848:  LDR             R0, =(Imm_ptr - 0x1B884E)
1B884A:  ADD             R0, PC; Imm_ptr
1B884C:  LDR             R0, [R0]; Imm
1B884E:  LDR             R4, [R0]
1B8850:  LDR             R0, =(Imm_ptr - 0x1B8856)
1B8852:  ADD             R0, PC; Imm_ptr
1B8854:  LDR             R0, [R0]; Imm
1B8856:  STR.W           R10, [R0,#(dword_6B32AC - 0x6B32A4)]
1B885A:  ADDS            R0, R4, R6
1B885C:  STRH.W          R9, [R4,R6]
1B8860:  STRH.W          R8, [R0,#2]
1B8864:  POP.W           {R8-R10}
1B8868:  POP             {R4-R7,PC}
