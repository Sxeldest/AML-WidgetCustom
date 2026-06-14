; =========================================================
; Game Engine Function: _ZN10CPlaceable9SetMatrixERK7CMatrix
; Address            : 0x40885C - 0x4088B4
; =========================================================

40885C:  PUSH            {R4-R7,LR}
40885E:  ADD             R7, SP, #0xC
408860:  PUSH.W          {R8}
408864:  MOV             R4, R0
408866:  MOV             R5, R1
408868:  LDR             R0, [R4,#0x14]
40886A:  CBZ             R0, loc_408878
40886C:  MOV             R1, R5
40886E:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
408872:  POP.W           {R8}
408876:  POP             {R4-R7,PC}
408878:  VMOV.F32        S0, #1.0
40887C:  VLDR            S2, [R5,#0x28]
408880:  VCMP.F32        S2, S0
408884:  VMRS            APSR_nzcv, FPSCR
408888:  BNE             loc_4088AA
40888A:  LDRD.W          R0, R1, [R5,#0x10]; x
40888E:  LDRD.W          R6, R8, [R5,#0x30]
408892:  EOR.W           R0, R0, #0x80000000; y
408896:  LDR             R5, [R5,#0x38]
408898:  BLX             atan2f
40889C:  STRD.W          R6, R8, [R4,#4]
4088A0:  STRD.W          R5, R0, [R4,#0xC]
4088A4:  POP.W           {R8}
4088A8:  POP             {R4-R7,PC}
4088AA:  MOV             R0, R4; this
4088AC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4088B0:  LDR             R0, [R4,#0x14]
4088B2:  B               loc_40886C
