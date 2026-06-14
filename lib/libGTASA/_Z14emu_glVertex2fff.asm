; =========================================================
; Game Engine Function: _Z14emu_glVertex2fff
; Address            : 0x1B864C - 0x1B86F2
; =========================================================

1B864C:  PUSH            {R4-R7,LR}
1B864E:  ADD             R7, SP, #0xC
1B8650:  PUSH.W          {R8}
1B8654:  VPUSH           {D8-D9}
1B8658:  LDR             R2, =(Imm_ptr - 0x1B865E)
1B865A:  ADD             R2, PC; Imm_ptr
1B865C:  LDR             R2, [R2]; Imm
1B865E:  LDR             R2, [R2,#(dword_6B32B4 - 0x6B32A4)]
1B8660:  CBNZ            R2, loc_1B8674
1B8662:  LDR             R2, =(Imm_ptr - 0x1B866C)
1B8664:  MOVS            R6, #0
1B8666:  MOVS            R5, #2
1B8668:  ADD             R2, PC; Imm_ptr
1B866A:  LDR             R3, [R2]; Imm
1B866C:  MOVS            R2, #8
1B866E:  STRD.W          R5, R2, [R3,#(dword_6B32B0 - 0x6B32A4)]
1B8672:  STR             R6, [R3,#(dword_6B32B8 - 0x6B32A4)]
1B8674:  VMOV            S18, R0
1B8678:  LDR             R0, =(Imm_ptr - 0x1B8682)
1B867A:  VMOV            S16, R1
1B867E:  ADD             R0, PC; Imm_ptr
1B8680:  LDR             R0, [R0]; Imm
1B8682:  LDRD.W          R1, R4, [R0,#(dword_6B32A8 - 0x6B32A4)]
1B8686:  ADD.W           R8, R4, R2
1B868A:  CMP             R1, R8
1B868C:  BGE             loc_1B86CC
1B868E:  LDR             R0, =(Imm_ptr - 0x1B8698)
1B8690:  ADD.W           R1, R8, R8,LSL#1
1B8694:  ADD             R0, PC; Imm_ptr
1B8696:  LDR             R6, [R0]; Imm
1B8698:  ADD.W           R0, R1, R1,LSR#31
1B869C:  ASRS            R0, R0, #1; byte_count
1B869E:  STR             R0, [R6,#(dword_6B32A8 - 0x6B32A4)]
1B86A0:  BLX             malloc
1B86A4:  LDR             R6, [R6]
1B86A6:  MOV             R5, R0
1B86A8:  CBZ             R6, loc_1B86C2
1B86AA:  MOV             R0, R5; void *
1B86AC:  MOV             R1, R6; void *
1B86AE:  MOV             R2, R4; size_t
1B86B0:  BLX             memcpy_1
1B86B4:  MOV             R0, R6; p
1B86B6:  BLX             free
1B86BA:  LDR             R0, =(Imm_ptr - 0x1B86C0)
1B86BC:  ADD             R0, PC; Imm_ptr
1B86BE:  LDR             R0, [R0]; Imm
1B86C0:  LDR             R4, [R0,#(dword_6B32AC - 0x6B32A4)]
1B86C2:  LDR             R0, =(Imm_ptr - 0x1B86C8)
1B86C4:  ADD             R0, PC; Imm_ptr
1B86C6:  LDR             R0, [R0]; Imm
1B86C8:  STR             R5, [R0]
1B86CA:  B               loc_1B86D4
1B86CC:  LDR             R0, =(Imm_ptr - 0x1B86D2)
1B86CE:  ADD             R0, PC; Imm_ptr
1B86D0:  LDR             R0, [R0]; Imm
1B86D2:  LDR             R5, [R0]
1B86D4:  LDR             R0, =(Imm_ptr - 0x1B86DA)
1B86D6:  ADD             R0, PC; Imm_ptr
1B86D8:  LDR             R0, [R0]; Imm
1B86DA:  STR.W           R8, [R0,#(dword_6B32AC - 0x6B32A4)]
1B86DE:  ADDS            R0, R5, R4
1B86E0:  VSTR            S18, [R0]
1B86E4:  VSTR            S16, [R0,#4]
1B86E8:  VPOP            {D8-D9}
1B86EC:  POP.W           {R8}
1B86F0:  POP             {R4-R7,PC}
