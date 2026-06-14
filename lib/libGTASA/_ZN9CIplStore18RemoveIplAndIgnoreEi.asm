; =========================================================
; Game Engine Function: _ZN9CIplStore18RemoveIplAndIgnoreEi
; Address            : 0x281FF0 - 0x282022
; =========================================================

281FF0:  PUSH            {R4,R6,R7,LR}
281FF2:  ADD             R7, SP, #8
281FF4:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281FFA)
281FF6:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
281FF8:  LDR             R1, [R1]; CIplStore::ms_pPool ...
281FFA:  LDR             R1, [R1]; CIplStore::ms_pPool
281FFC:  LDR             R2, [R1,#4]
281FFE:  LDRSB           R2, [R2,R0]
282000:  CMP             R2, #0
282002:  BLT             loc_28200E
282004:  MOVS            R2, #0x34 ; '4'
282006:  LDR             R1, [R1]
282008:  MLA.W           R4, R0, R2, R1
28200C:  B               loc_282010
28200E:  MOVS            R4, #0
282010:  MOVW            R1, #0x62A7; int
282014:  ADD             R0, R1; this
282016:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
28201A:  MOVS            R0, #1
28201C:  STRH.W          R0, [R4,#0x2F]
282020:  POP             {R4,R6,R7,PC}
