; =========================================================
; Game Engine Function: _ZN6CDummyD0Ev
; Address            : 0x3EADB0 - 0x3EADE4
; =========================================================

3EADB0:  PUSH            {R7,LR}
3EADB2:  MOV             R7, SP
3EADB4:  BLX             j__ZN7CEntityD2Ev; CEntity::~CEntity()
3EADB8:  LDR             R1, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x3EADBE)
3EADBA:  ADD             R1, PC; _ZN6CPools13ms_pDummyPoolE_ptr
3EADBC:  LDR             R1, [R1]; CPools::ms_pDummyPool ...
3EADBE:  LDR             R1, [R1]; CPools::ms_pDummyPool
3EADC0:  LDRD.W          R2, R3, [R1]
3EADC4:  SUBS            R0, R0, R2
3EADC6:  MOV             R2, #0xEEEEEEEF
3EADCE:  ASRS            R0, R0, #2
3EADD0:  MULS            R0, R2
3EADD2:  LDRB            R2, [R3,R0]
3EADD4:  ORR.W           R2, R2, #0x80
3EADD8:  STRB            R2, [R3,R0]
3EADDA:  LDR             R2, [R1,#0xC]
3EADDC:  CMP             R0, R2
3EADDE:  IT LT
3EADE0:  STRLT           R0, [R1,#0xC]
3EADE2:  POP             {R7,PC}
