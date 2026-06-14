; =========================================================
; Game Engine Function: _Z15emu_glNormal3fvPKf
; Address            : 0x1B9738 - 0x1B97DA
; =========================================================

1B9738:  PUSH            {R4-R7,LR}
1B973A:  ADD             R7, SP, #0xC
1B973C:  PUSH.W          {R8-R11}
1B9740:  SUB             SP, SP, #4
1B9742:  LDR             R1, =(Imm_ptr - 0x1B974C)
1B9744:  LDRD.W          R10, R8, [R0]
1B9748:  ADD             R1, PC; Imm_ptr
1B974A:  LDR.W           R9, [R0,#8]
1B974E:  LDR             R1, [R1]; Imm
1B9750:  LDR             R0, [R1,#(dword_6B32E4 - 0x6B32A4)]
1B9752:  CBNZ            R0, loc_1B9766
1B9754:  LDR             R0, =(Imm_ptr - 0x1B975E)
1B9756:  MOVS            R2, #0
1B9758:  MOVS            R3, #3
1B975A:  ADD             R0, PC; Imm_ptr
1B975C:  LDR             R1, [R0]; Imm
1B975E:  MOVS            R0, #0xC
1B9760:  STRD.W          R3, R0, [R1,#(dword_6B32E0 - 0x6B32A4)]
1B9764:  STR             R2, [R1,#(dword_6B32E8 - 0x6B32A4)]
1B9766:  LDR             R1, =(Imm_ptr - 0x1B976C)
1B9768:  ADD             R1, PC; Imm_ptr
1B976A:  LDR             R1, [R1]; Imm
1B976C:  LDRD.W          R2, R4, [R1,#(dword_6B32D8 - 0x6B32A4)]
1B9770:  ADD.W           R11, R4, R0
1B9774:  CMP             R2, R11
1B9776:  BGE             loc_1B97B6
1B9778:  LDR             R0, =(Imm_ptr - 0x1B9782)
1B977A:  ADD.W           R1, R11, R11,LSL#1
1B977E:  ADD             R0, PC; Imm_ptr
1B9780:  LDR             R6, [R0]; Imm
1B9782:  ADD.W           R0, R1, R1,LSR#31
1B9786:  ASRS            R0, R0, #1; byte_count
1B9788:  STR             R0, [R6,#(dword_6B32D8 - 0x6B32A4)]
1B978A:  BLX             malloc
1B978E:  LDR             R6, [R6,#(dword_6B32D4 - 0x6B32A4)]
1B9790:  MOV             R5, R0
1B9792:  CBZ             R6, loc_1B97AC
1B9794:  MOV             R0, R5; void *
1B9796:  MOV             R1, R6; void *
1B9798:  MOV             R2, R4; size_t
1B979A:  BLX             memcpy_1
1B979E:  MOV             R0, R6; p
1B97A0:  BLX             free
1B97A4:  LDR             R0, =(Imm_ptr - 0x1B97AA)
1B97A6:  ADD             R0, PC; Imm_ptr
1B97A8:  LDR             R0, [R0]; Imm
1B97AA:  LDR             R4, [R0,#(dword_6B32DC - 0x6B32A4)]
1B97AC:  LDR             R0, =(Imm_ptr - 0x1B97B2)
1B97AE:  ADD             R0, PC; Imm_ptr
1B97B0:  LDR             R0, [R0]; Imm
1B97B2:  STR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B97B4:  B               loc_1B97BE
1B97B6:  LDR             R0, =(Imm_ptr - 0x1B97BC)
1B97B8:  ADD             R0, PC; Imm_ptr
1B97BA:  LDR             R0, [R0]; Imm
1B97BC:  LDR             R5, [R0,#(dword_6B32D4 - 0x6B32A4)]
1B97BE:  LDR             R0, =(Imm_ptr - 0x1B97C4)
1B97C0:  ADD             R0, PC; Imm_ptr
1B97C2:  LDR             R0, [R0]; Imm
1B97C4:  STR.W           R11, [R0,#(dword_6B32DC - 0x6B32A4)]
1B97C8:  ADDS            R0, R5, R4
1B97CA:  STR.W           R10, [R5,R4]
1B97CE:  STRD.W          R8, R9, [R0,#4]
1B97D2:  ADD             SP, SP, #4
1B97D4:  POP.W           {R8-R11}
1B97D8:  POP             {R4-R7,PC}
