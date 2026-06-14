; =========================================================
; Game Engine Function: _Z15emu_glVertex2dvPKd
; Address            : 0x1B8580 - 0x1B862A
; =========================================================

1B8580:  VLDM            R0, {D16-D17}
1B8584:  LDR             R0, =(Imm_ptr - 0x1B858A)
1B8586:  ADD             R0, PC; Imm_ptr
1B8588:  LDR             R0, [R0]; Imm
1B858A:  LDR             R0, [R0,#(dword_6B32B4 - 0x6B32A4)]
1B858C:  CBNZ            R0, loc_1B85A0
1B858E:  LDR             R0, =(Imm_ptr - 0x1B8598)
1B8590:  MOVS            R2, #0
1B8592:  MOVS            R3, #2
1B8594:  ADD             R0, PC; Imm_ptr
1B8596:  LDR             R1, [R0]; Imm
1B8598:  MOVS            R0, #8
1B859A:  STRD.W          R3, R0, [R1,#(dword_6B32B0 - 0x6B32A4)]
1B859E:  STR             R2, [R1,#(dword_6B32B8 - 0x6B32A4)]
1B85A0:  PUSH            {R4-R7,LR}
1B85A2:  ADD             R7, SP, #0xC
1B85A4:  PUSH.W          {R8}
1B85A8:  VPUSH           {D8-D9}
1B85AC:  LDR             R1, =(Imm_ptr - 0x1B85B6)
1B85AE:  VCVT.F32.F64    S16, D17
1B85B2:  ADD             R1, PC; Imm_ptr
1B85B4:  LDR             R1, [R1]; Imm
1B85B6:  LDRD.W          R2, R4, [R1,#(dword_6B32A8 - 0x6B32A4)]
1B85BA:  ADD.W           R8, R4, R0
1B85BE:  VCVT.F32.F64    S18, D16
1B85C2:  CMP             R2, R8
1B85C4:  BGE             loc_1B8604
1B85C6:  LDR             R0, =(Imm_ptr - 0x1B85D0)
1B85C8:  ADD.W           R1, R8, R8,LSL#1
1B85CC:  ADD             R0, PC; Imm_ptr
1B85CE:  LDR             R6, [R0]; Imm
1B85D0:  ADD.W           R0, R1, R1,LSR#31
1B85D4:  ASRS            R0, R0, #1; byte_count
1B85D6:  STR             R0, [R6,#(dword_6B32A8 - 0x6B32A4)]
1B85D8:  BLX             malloc
1B85DC:  LDR             R6, [R6]
1B85DE:  MOV             R5, R0
1B85E0:  CBZ             R6, loc_1B85FA
1B85E2:  MOV             R0, R5; void *
1B85E4:  MOV             R1, R6; void *
1B85E6:  MOV             R2, R4; size_t
1B85E8:  BLX             memcpy_1
1B85EC:  MOV             R0, R6; p
1B85EE:  BLX             free
1B85F2:  LDR             R0, =(Imm_ptr - 0x1B85F8)
1B85F4:  ADD             R0, PC; Imm_ptr
1B85F6:  LDR             R0, [R0]; Imm
1B85F8:  LDR             R4, [R0,#(dword_6B32AC - 0x6B32A4)]
1B85FA:  LDR             R0, =(Imm_ptr - 0x1B8600)
1B85FC:  ADD             R0, PC; Imm_ptr
1B85FE:  LDR             R0, [R0]; Imm
1B8600:  STR             R5, [R0]
1B8602:  B               loc_1B860C
1B8604:  LDR             R0, =(Imm_ptr - 0x1B860A)
1B8606:  ADD             R0, PC; Imm_ptr
1B8608:  LDR             R0, [R0]; Imm
1B860A:  LDR             R5, [R0]
1B860C:  LDR             R0, =(Imm_ptr - 0x1B8612)
1B860E:  ADD             R0, PC; Imm_ptr
1B8610:  LDR             R0, [R0]; Imm
1B8612:  STR.W           R8, [R0,#(dword_6B32AC - 0x6B32A4)]
1B8616:  ADDS            R0, R5, R4
1B8618:  VSTR            S18, [R0]
1B861C:  VSTR            S16, [R0,#4]
1B8620:  VPOP            {D8-D9}
1B8624:  POP.W           {R8}
1B8628:  POP             {R4-R7,PC}
