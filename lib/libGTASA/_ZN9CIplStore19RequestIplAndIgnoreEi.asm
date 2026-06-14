; =========================================================
; Game Engine Function: _ZN9CIplStore19RequestIplAndIgnoreEi
; Address            : 0x281FB8 - 0x281FEC
; =========================================================

281FB8:  PUSH            {R4,R6,R7,LR}
281FBA:  ADD             R7, SP, #8
281FBC:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281FC2)
281FBE:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
281FC0:  LDR             R1, [R1]; CIplStore::ms_pPool ...
281FC2:  LDR             R1, [R1]; CIplStore::ms_pPool
281FC4:  LDR             R2, [R1,#4]
281FC6:  LDRSB           R2, [R2,R0]; int
281FC8:  CMP             R2, #0
281FCA:  BLT             loc_281FD6
281FCC:  MOVS            R2, #0x34 ; '4'
281FCE:  LDR             R1, [R1]
281FD0:  MLA.W           R4, R0, R2, R1
281FD4:  B               loc_281FD8
281FD6:  MOVS            R4, #0
281FD8:  MOVW            R1, #0x62A7
281FDC:  ADD             R0, R1; this
281FDE:  MOVS            R1, #8; int
281FE0:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
281FE4:  MOVS            R0, #1
281FE6:  STRH.W          R0, [R4,#0x2F]
281FEA:  POP             {R4,R6,R7,PC}
