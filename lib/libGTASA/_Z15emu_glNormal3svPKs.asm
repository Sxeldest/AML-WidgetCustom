; =========================================================
; Game Engine Function: _Z15emu_glNormal3svPKs
; Address            : 0x1B98C8 - 0x1B9978
; =========================================================

1B98C8:  PUSH            {R4-R7,LR}
1B98CA:  ADD             R7, SP, #0xC
1B98CC:  PUSH.W          {R8-R11}
1B98D0:  SUB             SP, SP, #4
1B98D2:  LDR             R1, =(Imm_ptr - 0x1B98DC)
1B98D4:  LDRH.W          R8, [R0,#4]
1B98D8:  ADD             R1, PC; Imm_ptr
1B98DA:  LDRH.W          R9, [R0,#2]
1B98DE:  LDRH.W          R10, [R0]
1B98E2:  LDR             R1, [R1]; Imm
1B98E4:  LDR             R0, [R1,#(dword_6B32E4 - 0x6B32A4)]
1B98E6:  CBNZ            R0, loc_1B98FA
1B98E8:  LDR             R0, =(Imm_ptr - 0x1B98F2)
1B98EA:  MOVS            R2, #3
1B98EC:  MOVS            R3, #4
1B98EE:  ADD             R0, PC; Imm_ptr
1B98F0:  LDR             R1, [R0]; Imm
1B98F2:  MOVS            R0, #8
1B98F4:  STRD.W          R3, R0, [R1,#(dword_6B32E0 - 0x6B32A4)]
1B98F8:  STR             R2, [R1,#(dword_6B32E8 - 0x6B32A4)]
1B98FA:  LDR             R1, =(Imm_ptr - 0x1B9900)
1B98FC:  ADD             R1, PC; Imm_ptr
1B98FE:  LDR             R1, [R1]; Imm
1B9900:  LDRD.W          R2, R4, [R1,#(dword_6B32D8 - 0x6B32A4)]
1B9904:  ADD.W           R11, R4, R0
1B9908:  CMP             R2, R11
1B990A:  BGE             loc_1B994A
1B990C:  LDR             R0, =(Imm_ptr - 0x1B9916)
1B990E:  ADD.W           R1, R11, R11,LSL#1
1B9912:  ADD             R0, PC; Imm_ptr
1B9914:  LDR             R6, [R0]; Imm
1B9916:  ADD.W           R0, R1, R1,LSR#31
1B991A:  ASRS            R0, R0, #1; byte_count
1B991C:  STR             R0, [R6,#(dword_6B32D8 - 0x6B32A4)]
1B991E:  BLX             malloc
1B9922:  LDR             R6, [R6,#(dword_6B32D4 - 0x6B32A4)]
1B9924:  MOV             R5, R0
1B9926:  CBZ             R6, loc_1B9940
1B9928:  MOV             R0, R5; void *
1B992A:  MOV             R1, R6; void *
1B992C:  MOV             R2, R4; size_t
1B992E:  BLX             memcpy_1
1B9932:  MOV             R0, R6; p
1B9934:  BLX             free
1B9938:  LDR             R0, =(Imm_ptr - 0x1B993E)
1B993A:  ADD             R0, PC; Imm_ptr
1B993C:  LDR             R0, [R0]; Imm
1B993E:  LDR             R4, [R0,#(dword_6B32DC - 0x6B32A4)]
1B9940:  LDR             R0, =(Imm_ptr - 0x1B9946)
1B9942:  ADD             R0, PC; Imm_ptr
1B9944:  LDR             R0, [R0]; Imm
1B9946:  STR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B9948:  B               loc_1B9952
1B994A:  LDR             R0, =(Imm_ptr - 0x1B9950)
1B994C:  ADD             R0, PC; Imm_ptr
1B994E:  LDR             R0, [R0]; Imm
1B9950:  LDR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B9952:  LDR             R0, =(Imm_ptr - 0x1B995C)
1B9954:  MOVW            R1, #0x7FFF
1B9958:  ADD             R0, PC; Imm_ptr
1B995A:  LDR             R0, [R0]; Imm
1B995C:  STR.W           R11, [R0,#(dword_6B32DC - 0x6B32A4)]
1B9960:  ADDS            R0, R5, R4
1B9962:  STRH.W          R10, [R5,R4]
1B9966:  STRH.W          R9, [R0,#2]
1B996A:  STRH.W          R8, [R0,#4]
1B996E:  STRH            R1, [R0,#6]
1B9970:  ADD             SP, SP, #4
1B9972:  POP.W           {R8-R11}
1B9976:  POP             {R4-R7,PC}
