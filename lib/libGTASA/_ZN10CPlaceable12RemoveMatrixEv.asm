; =========================================================
; Game Engine Function: _ZN10CPlaceable12RemoveMatrixEv
; Address            : 0x408770 - 0x4087CC
; =========================================================

408770:  PUSH            {R4-R7,LR}
408772:  ADD             R7, SP, #0xC
408774:  PUSH.W          {R8,R9,R11}
408778:  MOV             R4, R0
40877A:  LDR             R5, [R4,#0x14]
40877C:  LDRD.W          R0, R1, [R5,#0x10]; x
408780:  ADD.W           R9, R5, #0x30 ; '0'
408784:  EOR.W           R0, R0, #0x80000000; y
408788:  LDM.W           R9, {R6,R8,R9}
40878C:  BLX             atan2f
408790:  ADDS            R2, R4, #4
408792:  MOVS            R1, #0
408794:  LDR             R3, =(gMatrixList_ptr - 0x40879E)
408796:  STM.W           R2, {R6,R8,R9}
40879A:  ADD             R3, PC; gMatrixList_ptr
40879C:  STRD.W          R0, R1, [R4,#0x10]
4087A0:  LDRD.W          R0, R2, [R5,#0x4C]
4087A4:  STR             R1, [R5,#0x48]
4087A6:  STR             R0, [R2,#0x4C]
4087A8:  LDRD.W          R0, R1, [R5,#0x4C]
4087AC:  LDR             R2, [R3]; gMatrixList
4087AE:  STR             R1, [R0,#0x50]
4087B0:  LDR.W           R0, [R2,#(dword_95AB28 - 0x95A988)]
4087B4:  STR             R0, [R5,#0x50]
4087B6:  LDR.W           R0, [R2,#(dword_95AB28 - 0x95A988)]
4087BA:  STR             R5, [R0,#0x4C]
4087BC:  ADD.W           R0, R2, #0x150
4087C0:  STR             R0, [R5,#0x4C]
4087C2:  STR.W           R5, [R2,#(dword_95AB28 - 0x95A988)]
4087C6:  POP.W           {R8,R9,R11}
4087CA:  POP             {R4-R7,PC}
