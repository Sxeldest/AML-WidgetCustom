; =========================================================
; Game Engine Function: _ZN10CPlaceableD2Ev
; Address            : 0x4086DC - 0x40875E
; =========================================================

4086DC:  PUSH            {R4-R7,LR}; Alternative name is 'CPlaceable::~CPlaceable()'
4086DE:  ADD             R7, SP, #0xC
4086E0:  PUSH.W          {R8,R9,R11}
4086E4:  MOV             R4, R0
4086E6:  LDR             R0, =(_ZTV10CPlaceable_ptr - 0x4086EE)
4086E8:  LDR             R5, [R4,#0x14]
4086EA:  ADD             R0, PC; _ZTV10CPlaceable_ptr
4086EC:  CMP             R5, #0
4086EE:  LDR             R0, [R0]; `vtable for'CPlaceable ...
4086F0:  ADD.W           R0, R0, #8
4086F4:  STR             R0, [R4]
4086F6:  BEQ             loc_40874E
4086F8:  LDRD.W          R0, R1, [R5,#0x10]; x
4086FC:  ADD.W           R9, R5, #0x30 ; '0'
408700:  EOR.W           R0, R0, #0x80000000; y
408704:  LDM.W           R9, {R6,R8,R9}
408708:  BLX             atan2f
40870C:  ADDS            R2, R4, #4
40870E:  MOVS            R1, #0
408710:  LDR             R3, =(gMatrixList_ptr - 0x40871A)
408712:  STM.W           R2, {R6,R8,R9}
408716:  ADD             R3, PC; gMatrixList_ptr
408718:  STRD.W          R0, R1, [R4,#0x10]
40871C:  LDRD.W          R0, R2, [R5,#0x4C]
408720:  STR             R1, [R5,#0x48]
408722:  STR             R0, [R2,#0x4C]
408724:  LDRD.W          R0, R1, [R5,#0x4C]
408728:  LDR             R2, [R3]; gMatrixList
40872A:  LDR             R3, =(numMatrices_ptr - 0x408736)
40872C:  STR             R1, [R0,#0x50]
40872E:  LDR.W           R0, [R2,#(dword_95AB28 - 0x95A988)]
408732:  ADD             R3, PC; numMatrices_ptr
408734:  STR             R0, [R5,#0x50]
408736:  LDR.W           R0, [R2,#(dword_95AB28 - 0x95A988)]
40873A:  LDR             R1, [R3]; numMatrices
40873C:  STR             R5, [R0,#0x4C]
40873E:  ADD.W           R0, R2, #0x150
408742:  STR             R0, [R5,#0x4C]
408744:  LDR             R0, [R1]
408746:  STR.W           R5, [R2,#(dword_95AB28 - 0x95A988)]
40874A:  SUBS            R0, #1
40874C:  STR             R0, [R1]
40874E:  LDR             R0, =(gDummyMatrix_ptr - 0x408754)
408750:  ADD             R0, PC; gDummyMatrix_ptr
408752:  LDR             R0, [R0]; gDummyMatrix
408754:  STR             R0, [R4,#0x14]
408756:  MOV             R0, R4
408758:  POP.W           {R8,R9,R11}
40875C:  POP             {R4-R7,PC}
