; =========================================================
; Game Engine Function: _ZN10CPlaceable19ShutdownMatrixArrayEv
; Address            : 0x408BA4 - 0x408BF2
; =========================================================

408BA4:  LDR             R0, =(gMatrixList_ptr - 0x408BAA)
408BA6:  ADD             R0, PC; gMatrixList_ptr
408BA8:  LDR             R0, [R0]; gMatrixList
408BAA:  LDR.W           R0, [R0,#(dword_95AB80 - 0x95A988)]
408BAE:  CBZ             R0, loc_408BE4
408BB0:  PUSH            {R4-R7,LR}
408BB2:  ADD             R7, SP, #0xC
408BB4:  PUSH.W          {R11}
408BB8:  LDR.W           R1, [R0,#-4]
408BBC:  SUB.W           R4, R0, #8
408BC0:  CBZ             R1, loc_408BD6
408BC2:  MOVS            R2, #0x54 ; 'T'
408BC4:  SUB.W           R6, R0, #0x54 ; 'T'
408BC8:  MUL.W           R5, R1, R2
408BCC:  ADDS            R0, R6, R5; this
408BCE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
408BD2:  SUBS            R5, #0x54 ; 'T'
408BD4:  BNE             loc_408BCC
408BD6:  MOV             R0, R4; void *
408BD8:  BLX             _ZdaPv; operator delete[](void *)
408BDC:  POP.W           {R11}
408BE0:  POP.W           {R4-R7,LR}
408BE4:  LDR             R0, =(gMatrixList_ptr - 0x408BEC)
408BE6:  MOVS            R1, #0
408BE8:  ADD             R0, PC; gMatrixList_ptr
408BEA:  LDR             R0, [R0]; gMatrixList
408BEC:  STR.W           R1, [R0,#(dword_95AB80 - 0x95A988)]
408BF0:  BX              LR
