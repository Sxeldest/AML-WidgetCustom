; =========================================================
; Game Engine Function: _ZN10CEntryExit23RequestObjectsInFrustumEv
; Address            : 0x306CBC - 0x306CE4
; =========================================================

306CBC:  PUSH            {R7,LR}
306CBE:  MOV             R7, SP
306CC0:  SUB             SP, SP, #0x10
306CC2:  LDR             R1, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x306CC8)
306CC4:  ADD             R1, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
306CC6:  LDR             R1, [R1]; CEntryExit::ms_spawnPoint ...
306CC8:  LDR             R1, [R1]; CEntryExit::ms_spawnPoint
306CCA:  LDRD.W          R2, R3, [R1,#0x20]; int
306CCE:  LDR             R1, [R1,#0x28]
306CD0:  STRD.W          R2, R3, [SP,#0x18+var_14]
306CD4:  MOVS            R2, #0x20 ; ' '; float
306CD6:  STR             R1, [SP,#0x18+var_C]
306CD8:  LDR             R1, [R0,#0x2C]; CVector *
306CDA:  ADD             R0, SP, #0x18+var_14; this
306CDC:  BLX             j__ZN9CRenderer25RequestObjectsInDirectionERK7CVectorfi; CRenderer::RequestObjectsInDirection(CVector const&,float,int)
306CE0:  ADD             SP, SP, #0x10
306CE2:  POP             {R7,PC}
