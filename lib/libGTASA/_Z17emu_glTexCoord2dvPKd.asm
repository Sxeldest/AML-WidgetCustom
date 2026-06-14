; =========================================================
; Game Engine Function: _Z17emu_glTexCoord2dvPKd
; Address            : 0x1B7704 - 0x1B77AE
; =========================================================

1B7704:  VLDM            R0, {D16-D17}
1B7708:  LDR             R0, =(Imm_ptr - 0x1B770E)
1B770A:  ADD             R0, PC; Imm_ptr
1B770C:  LDR             R0, [R0]; Imm
1B770E:  LDR             R0, [R0,#(dword_6B32CC - 0x6B32A4)]
1B7710:  CBNZ            R0, loc_1B7724
1B7712:  LDR             R0, =(Imm_ptr - 0x1B771C)
1B7714:  MOVS            R2, #0
1B7716:  MOVS            R3, #2
1B7718:  ADD             R0, PC; Imm_ptr
1B771A:  LDR             R1, [R0]; Imm
1B771C:  MOVS            R0, #8
1B771E:  STRD.W          R3, R0, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B7722:  STR             R2, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B7724:  PUSH            {R4-R7,LR}
1B7726:  ADD             R7, SP, #0xC
1B7728:  PUSH.W          {R8}
1B772C:  VPUSH           {D8-D9}
1B7730:  LDR             R1, =(Imm_ptr - 0x1B773A)
1B7732:  VCVT.F32.F64    S16, D17
1B7736:  ADD             R1, PC; Imm_ptr
1B7738:  LDR             R1, [R1]; Imm
1B773A:  LDRD.W          R2, R4, [R1,#(dword_6B32C0 - 0x6B32A4)]
1B773E:  ADD.W           R8, R4, R0
1B7742:  VCVT.F32.F64    S18, D16
1B7746:  CMP             R2, R8
1B7748:  BGE             loc_1B7788
1B774A:  LDR             R0, =(Imm_ptr - 0x1B7754)
1B774C:  ADD.W           R1, R8, R8,LSL#1
1B7750:  ADD             R0, PC; Imm_ptr
1B7752:  LDR             R6, [R0]; Imm
1B7754:  ADD.W           R0, R1, R1,LSR#31
1B7758:  ASRS            R0, R0, #1; byte_count
1B775A:  STR             R0, [R6,#(dword_6B32C0 - 0x6B32A4)]
1B775C:  BLX             malloc
1B7760:  LDR             R6, [R6,#(dword_6B32BC - 0x6B32A4)]
1B7762:  MOV             R5, R0
1B7764:  CBZ             R6, loc_1B777E
1B7766:  MOV             R0, R5; void *
1B7768:  MOV             R1, R6; void *
1B776A:  MOV             R2, R4; size_t
1B776C:  BLX             memcpy_1
1B7770:  MOV             R0, R6; p
1B7772:  BLX             free
1B7776:  LDR             R0, =(Imm_ptr - 0x1B777C)
1B7778:  ADD             R0, PC; Imm_ptr
1B777A:  LDR             R0, [R0]; Imm
1B777C:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B777E:  LDR             R0, =(Imm_ptr - 0x1B7784)
1B7780:  ADD             R0, PC; Imm_ptr
1B7782:  LDR             R0, [R0]; Imm
1B7784:  STR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B7786:  B               loc_1B7790
1B7788:  LDR             R0, =(Imm_ptr - 0x1B778E)
1B778A:  ADD             R0, PC; Imm_ptr
1B778C:  LDR             R0, [R0]; Imm
1B778E:  LDR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B7790:  LDR             R0, =(Imm_ptr - 0x1B7796)
1B7792:  ADD             R0, PC; Imm_ptr
1B7794:  LDR             R0, [R0]; Imm
1B7796:  STR.W           R8, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B779A:  ADDS            R0, R5, R4
1B779C:  VSTR            S18, [R0]
1B77A0:  VSTR            S16, [R0,#4]
1B77A4:  VPOP            {D8-D9}
1B77A8:  POP.W           {R8}
1B77AC:  POP             {R4-R7,PC}
