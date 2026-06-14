; =========================================================
; Game Engine Function: _Z17emu_glTexCoord2fvPKf
; Address            : 0x1B7898 - 0x1B7932
; =========================================================

1B7898:  PUSH            {R4-R7,LR}
1B789A:  ADD             R7, SP, #0xC
1B789C:  PUSH.W          {R8-R10}
1B78A0:  LDR             R1, =(Imm_ptr - 0x1B78AA)
1B78A2:  LDRD.W          R9, R8, [R0]
1B78A6:  ADD             R1, PC; Imm_ptr
1B78A8:  LDR             R1, [R1]; Imm
1B78AA:  LDR             R0, [R1,#(dword_6B32CC - 0x6B32A4)]
1B78AC:  CBNZ            R0, loc_1B78C0
1B78AE:  LDR             R0, =(Imm_ptr - 0x1B78B8)
1B78B0:  MOVS            R2, #0
1B78B2:  MOVS            R3, #2
1B78B4:  ADD             R0, PC; Imm_ptr
1B78B6:  LDR             R1, [R0]; Imm
1B78B8:  MOVS            R0, #8
1B78BA:  STRD.W          R3, R0, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B78BE:  STR             R2, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B78C0:  LDR             R1, =(Imm_ptr - 0x1B78C6)
1B78C2:  ADD             R1, PC; Imm_ptr
1B78C4:  LDR             R1, [R1]; Imm
1B78C6:  LDRD.W          R2, R4, [R1,#(dword_6B32C0 - 0x6B32A4)]
1B78CA:  ADD.W           R10, R4, R0
1B78CE:  CMP             R2, R10
1B78D0:  BGE             loc_1B7910
1B78D2:  LDR             R0, =(Imm_ptr - 0x1B78DC)
1B78D4:  ADD.W           R1, R10, R10,LSL#1
1B78D8:  ADD             R0, PC; Imm_ptr
1B78DA:  LDR             R6, [R0]; Imm
1B78DC:  ADD.W           R0, R1, R1,LSR#31
1B78E0:  ASRS            R0, R0, #1; byte_count
1B78E2:  STR             R0, [R6,#(dword_6B32C0 - 0x6B32A4)]
1B78E4:  BLX             malloc
1B78E8:  LDR             R6, [R6,#(dword_6B32BC - 0x6B32A4)]
1B78EA:  MOV             R5, R0
1B78EC:  CBZ             R6, loc_1B7906
1B78EE:  MOV             R0, R5; void *
1B78F0:  MOV             R1, R6; void *
1B78F2:  MOV             R2, R4; size_t
1B78F4:  BLX             memcpy_1
1B78F8:  MOV             R0, R6; p
1B78FA:  BLX             free
1B78FE:  LDR             R0, =(Imm_ptr - 0x1B7904)
1B7900:  ADD             R0, PC; Imm_ptr
1B7902:  LDR             R0, [R0]; Imm
1B7904:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B7906:  LDR             R0, =(Imm_ptr - 0x1B790C)
1B7908:  ADD             R0, PC; Imm_ptr
1B790A:  LDR             R0, [R0]; Imm
1B790C:  STR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B790E:  B               loc_1B7918
1B7910:  LDR             R0, =(Imm_ptr - 0x1B7916)
1B7912:  ADD             R0, PC; Imm_ptr
1B7914:  LDR             R0, [R0]; Imm
1B7916:  LDR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B7918:  LDR             R0, =(Imm_ptr - 0x1B791E)
1B791A:  ADD             R0, PC; Imm_ptr
1B791C:  LDR             R0, [R0]; Imm
1B791E:  STR.W           R10, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B7922:  ADDS            R0, R5, R4
1B7924:  STR.W           R9, [R5,R4]
1B7928:  STR.W           R8, [R0,#4]
1B792C:  POP.W           {R8-R10}
1B7930:  POP             {R4-R7,PC}
