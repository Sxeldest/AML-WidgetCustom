; =========================================================
; Game Engine Function: sub_162C60
; Address            : 0x162C60 - 0x162CB8
; =========================================================

162C60:  PUSH            {R4-R7,LR}
162C62:  ADD             R7, SP, #0xC
162C64:  PUSH.W          {R11}
162C68:  MOV             R4, R0
162C6A:  BLX             j__ZN4llmo3mem8pageSizeEv; llmo::mem::pageSize(void)
162C6E:  NEGS            R0, R0; this
162C70:  ANDS            R4, R0
162C72:  BLX             j__ZN4llmo3mem8pageSizeEv; llmo::mem::pageSize(void)
162C76:  CMP.W           R0, #0x2000
162C7A:  BHI             loc_162CB0
162C7C:  MOVS            R6, #0
162C7E:  BLX             j__ZN4llmo3mem8pageSizeEv; llmo::mem::pageSize(void)
162C82:  SUBS            R5, R4, R0
162C84:  BLX             j__ZN4llmo3mem8pageSizeEv; llmo::mem::pageSize(void)
162C88:  MOV             R1, R0; unsigned int
162C8A:  MOV             R0, R5; this
162C8C:  MOVS            R2, #0; unsigned int
162C8E:  BLX             j__ZN4llmo3mem4prot3getEjjb; llmo::mem::prot::get(uint,uint,bool)
162C92:  CMP             R0, #1
162C94:  BLT             loc_162C9C
162C96:  BLX             j__ZN4llmo3mem8pageSizeEv; llmo::mem::pageSize(void)
162C9A:  SUBS            R4, R4, R0
162C9C:  BLX             j__ZN4llmo3mem8pageSizeEv; llmo::mem::pageSize(void)
162CA0:  MOV             R1, R0
162CA2:  MOV.W           R0, #0x2000
162CA6:  BLX             sub_220A6C
162CAA:  ADDS            R6, #1
162CAC:  CMP             R6, R0
162CAE:  BCC             loc_162C7E
162CB0:  MOV             R0, R4
162CB2:  POP.W           {R11}
162CB6:  POP             {R4-R7,PC}
