; =========================================================
; Game Engine Function: _Z16emu_glTexCoord2ddd
; Address            : 0x1B7634 - 0x1B76E2
; =========================================================

1B7634:  VMOV            D17, R0, R1
1B7638:  LDR             R0, =(Imm_ptr - 0x1B7642)
1B763A:  VMOV            D16, R2, R3
1B763E:  ADD             R0, PC; Imm_ptr
1B7640:  LDR             R0, [R0]; Imm
1B7642:  LDR             R0, [R0,#(dword_6B32CC - 0x6B32A4)]
1B7644:  CBNZ            R0, loc_1B7658
1B7646:  LDR             R0, =(Imm_ptr - 0x1B7650)
1B7648:  MOVS            R2, #0
1B764A:  MOVS            R3, #2
1B764C:  ADD             R0, PC; Imm_ptr
1B764E:  LDR             R1, [R0]; Imm
1B7650:  MOVS            R0, #8
1B7652:  STRD.W          R3, R0, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B7656:  STR             R2, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B7658:  PUSH            {R4-R7,LR}
1B765A:  ADD             R7, SP, #0xC
1B765C:  PUSH.W          {R8}
1B7660:  VPUSH           {D8-D9}
1B7664:  LDR             R1, =(Imm_ptr - 0x1B766E)
1B7666:  VCVT.F32.F64    S16, D16
1B766A:  ADD             R1, PC; Imm_ptr
1B766C:  LDR             R1, [R1]; Imm
1B766E:  LDRD.W          R2, R4, [R1,#(dword_6B32C0 - 0x6B32A4)]
1B7672:  ADD.W           R8, R4, R0
1B7676:  VCVT.F32.F64    S18, D17
1B767A:  CMP             R2, R8
1B767C:  BGE             loc_1B76BC
1B767E:  LDR             R0, =(Imm_ptr - 0x1B7688)
1B7680:  ADD.W           R1, R8, R8,LSL#1
1B7684:  ADD             R0, PC; Imm_ptr
1B7686:  LDR             R6, [R0]; Imm
1B7688:  ADD.W           R0, R1, R1,LSR#31
1B768C:  ASRS            R0, R0, #1; byte_count
1B768E:  STR             R0, [R6,#(dword_6B32C0 - 0x6B32A4)]
1B7690:  BLX             malloc
1B7694:  LDR             R6, [R6,#(dword_6B32BC - 0x6B32A4)]
1B7696:  MOV             R5, R0
1B7698:  CBZ             R6, loc_1B76B2
1B769A:  MOV             R0, R5; void *
1B769C:  MOV             R1, R6; void *
1B769E:  MOV             R2, R4; size_t
1B76A0:  BLX             memcpy_1
1B76A4:  MOV             R0, R6; p
1B76A6:  BLX             free
1B76AA:  LDR             R0, =(Imm_ptr - 0x1B76B0)
1B76AC:  ADD             R0, PC; Imm_ptr
1B76AE:  LDR             R0, [R0]; Imm
1B76B0:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B76B2:  LDR             R0, =(Imm_ptr - 0x1B76B8)
1B76B4:  ADD             R0, PC; Imm_ptr
1B76B6:  LDR             R0, [R0]; Imm
1B76B8:  STR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B76BA:  B               loc_1B76C4
1B76BC:  LDR             R0, =(Imm_ptr - 0x1B76C2)
1B76BE:  ADD             R0, PC; Imm_ptr
1B76C0:  LDR             R0, [R0]; Imm
1B76C2:  LDR             R5, [R0,#(dword_6B32BC - 0x6B32A4)]
1B76C4:  LDR             R0, =(Imm_ptr - 0x1B76CA)
1B76C6:  ADD             R0, PC; Imm_ptr
1B76C8:  LDR             R0, [R0]; Imm
1B76CA:  STR.W           R8, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B76CE:  ADDS            R0, R5, R4
1B76D0:  VSTR            S18, [R0]
1B76D4:  VSTR            S16, [R0,#4]
1B76D8:  VPOP            {D8-D9}
1B76DC:  POP.W           {R8}
1B76E0:  POP             {R4-R7,PC}
