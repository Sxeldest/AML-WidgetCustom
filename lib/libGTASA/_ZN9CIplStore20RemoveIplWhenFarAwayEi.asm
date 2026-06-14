; =========================================================
; Game Engine Function: _ZN9CIplStore20RemoveIplWhenFarAwayEi
; Address            : 0x282028 - 0x28204E
; =========================================================

282028:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x28202E)
28202A:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
28202C:  LDR             R1, [R1]; CIplStore::ms_pPool ...
28202E:  LDR             R1, [R1]; CIplStore::ms_pPool
282030:  LDR             R2, [R1,#4]
282032:  LDRSB           R2, [R2,R0]
282034:  CMP             R2, #0
282036:  BLT             loc_282042
282038:  MOVS            R2, #0x34 ; '4'
28203A:  LDR             R1, [R1]
28203C:  MLA.W           R0, R0, R2, R1
282040:  B               loc_282044
282042:  MOVS            R0, #0
282044:  MOV.W           R1, #0x100
282048:  STRH.W          R1, [R0,#0x2F]
28204C:  BX              LR
