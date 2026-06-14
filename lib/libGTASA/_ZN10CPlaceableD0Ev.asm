; =========================================================
; Game Engine Function: _ZN10CPlaceableD0Ev
; Address            : 0x4087D0 - 0x408850
; =========================================================

4087D0:  PUSH            {R4-R7,LR}
4087D2:  ADD             R7, SP, #0xC
4087D4:  PUSH.W          {R8,R9,R11}
4087D8:  MOV             R4, R0
4087DA:  LDR             R0, =(_ZTV10CPlaceable_ptr - 0x4087E2)
4087DC:  LDR             R5, [R4,#0x14]
4087DE:  ADD             R0, PC; _ZTV10CPlaceable_ptr
4087E0:  CMP             R5, #0
4087E2:  LDR             R0, [R0]; `vtable for'CPlaceable ...
4087E4:  ADD.W           R0, R0, #8
4087E8:  STR             R0, [R4]
4087EA:  BEQ             loc_408842
4087EC:  LDRD.W          R0, R1, [R5,#0x10]; x
4087F0:  ADD.W           R9, R5, #0x30 ; '0'
4087F4:  EOR.W           R0, R0, #0x80000000; y
4087F8:  LDM.W           R9, {R6,R8,R9}
4087FC:  BLX             atan2f
408800:  ADDS            R2, R4, #4
408802:  MOVS            R1, #0
408804:  LDR             R3, =(gMatrixList_ptr - 0x40880E)
408806:  STM.W           R2, {R6,R8,R9}
40880A:  ADD             R3, PC; gMatrixList_ptr
40880C:  STRD.W          R0, R1, [R4,#0x10]
408810:  LDRD.W          R0, R2, [R5,#0x4C]
408814:  STR             R1, [R5,#0x48]
408816:  STR             R0, [R2,#0x4C]
408818:  LDRD.W          R0, R1, [R5,#0x4C]
40881C:  LDR             R2, [R3]; gMatrixList
40881E:  LDR             R3, =(numMatrices_ptr - 0x40882A)
408820:  STR             R1, [R0,#0x50]
408822:  LDR.W           R0, [R2,#(dword_95AB28 - 0x95A988)]
408826:  ADD             R3, PC; numMatrices_ptr
408828:  STR             R0, [R5,#0x50]
40882A:  LDR.W           R0, [R2,#(dword_95AB28 - 0x95A988)]
40882E:  LDR             R1, [R3]; numMatrices
408830:  STR             R5, [R0,#0x4C]
408832:  ADD.W           R0, R2, #0x150
408836:  STR             R0, [R5,#0x4C]
408838:  LDR             R0, [R1]
40883A:  STR.W           R5, [R2,#(dword_95AB28 - 0x95A988)]
40883E:  SUBS            R0, #1
408840:  STR             R0, [R1]
408842:  MOV             R0, R4; void *
408844:  POP.W           {R8,R9,R11}
408848:  POP.W           {R4-R7,LR}
40884C:  B.W             j__ZdlPv; operator delete(void *)
