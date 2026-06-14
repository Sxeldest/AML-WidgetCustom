; =========================================================
; Game Engine Function: _Z14emu_glNormal3ssss
; Address            : 0x1B97FC - 0x1B98A6
; =========================================================

1B97FC:  PUSH            {R4-R7,LR}
1B97FE:  ADD             R7, SP, #0xC
1B9800:  PUSH.W          {R8-R11}
1B9804:  SUB             SP, SP, #4
1B9806:  MOV             R10, R0
1B9808:  LDR             R0, =(Imm_ptr - 0x1B9812)
1B980A:  MOV             R8, R2
1B980C:  MOV             R9, R1
1B980E:  ADD             R0, PC; Imm_ptr
1B9810:  LDR             R0, [R0]; Imm
1B9812:  LDR             R0, [R0,#(dword_6B32E4 - 0x6B32A4)]
1B9814:  CBNZ            R0, loc_1B9828
1B9816:  LDR             R0, =(Imm_ptr - 0x1B9820)
1B9818:  MOVS            R2, #3
1B981A:  MOVS            R3, #4
1B981C:  ADD             R0, PC; Imm_ptr
1B981E:  LDR             R1, [R0]; Imm
1B9820:  MOVS            R0, #8
1B9822:  STRD.W          R3, R0, [R1,#(dword_6B32E0 - 0x6B32A4)]
1B9826:  STR             R2, [R1,#(dword_6B32E8 - 0x6B32A4)]
1B9828:  LDR             R1, =(Imm_ptr - 0x1B982E)
1B982A:  ADD             R1, PC; Imm_ptr
1B982C:  LDR             R1, [R1]; Imm
1B982E:  LDRD.W          R2, R4, [R1,#(dword_6B32D8 - 0x6B32A4)]
1B9832:  ADD.W           R11, R4, R0
1B9836:  CMP             R2, R11
1B9838:  BGE             loc_1B9878
1B983A:  LDR             R0, =(Imm_ptr - 0x1B9844)
1B983C:  ADD.W           R1, R11, R11,LSL#1
1B9840:  ADD             R0, PC; Imm_ptr
1B9842:  LDR             R6, [R0]; Imm
1B9844:  ADD.W           R0, R1, R1,LSR#31
1B9848:  ASRS            R0, R0, #1; byte_count
1B984A:  STR             R0, [R6,#(dword_6B32D8 - 0x6B32A4)]
1B984C:  BLX             malloc
1B9850:  LDR             R6, [R6,#(dword_6B32D4 - 0x6B32A4)]
1B9852:  MOV             R5, R0
1B9854:  CBZ             R6, loc_1B986E
1B9856:  MOV             R0, R5; void *
1B9858:  MOV             R1, R6; void *
1B985A:  MOV             R2, R4; size_t
1B985C:  BLX             memcpy_1
1B9860:  MOV             R0, R6; p
1B9862:  BLX             free
1B9866:  LDR             R0, =(Imm_ptr - 0x1B986C)
1B9868:  ADD             R0, PC; Imm_ptr
1B986A:  LDR             R0, [R0]; Imm
1B986C:  LDR             R4, [R0,#(dword_6B32DC - 0x6B32A4)]
1B986E:  LDR             R0, =(Imm_ptr - 0x1B9874)
1B9870:  ADD             R0, PC; Imm_ptr
1B9872:  LDR             R0, [R0]; Imm
1B9874:  STR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B9876:  B               loc_1B9880
1B9878:  LDR             R0, =(Imm_ptr - 0x1B987E)
1B987A:  ADD             R0, PC; Imm_ptr
1B987C:  LDR             R0, [R0]; Imm
1B987E:  LDR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B9880:  LDR             R0, =(Imm_ptr - 0x1B988A)
1B9882:  MOVW            R1, #0x7FFF
1B9886:  ADD             R0, PC; Imm_ptr
1B9888:  LDR             R0, [R0]; Imm
1B988A:  STR.W           R11, [R0,#(dword_6B32DC - 0x6B32A4)]
1B988E:  ADDS            R0, R5, R4
1B9890:  STRH.W          R10, [R5,R4]
1B9894:  STRH.W          R9, [R0,#2]
1B9898:  STRH.W          R8, [R0,#4]
1B989C:  STRH            R1, [R0,#6]
1B989E:  ADD             SP, SP, #4
1B98A0:  POP.W           {R8-R11}
1B98A4:  POP             {R4-R7,PC}
