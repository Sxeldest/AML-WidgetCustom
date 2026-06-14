; =========================================================
; Game Engine Function: _ZN9CColStore9RemoveRefEi
; Address            : 0x2E266C - 0x2E2684
; =========================================================

2E266C:  LDR             R1, =(_ZN9CColStore11ms_pColPoolE_ptr - 0x2E2674)
2E266E:  MOVS            R2, #0x2C ; ','
2E2670:  ADD             R1, PC; _ZN9CColStore11ms_pColPoolE_ptr
2E2672:  LDR             R1, [R1]; CColStore::ms_pColPool ...
2E2674:  LDR             R1, [R1]; CColStore::ms_pColPool
2E2676:  LDR             R1, [R1]
2E2678:  MLA.W           R0, R0, R2, R1
2E267C:  LDRH            R1, [R0,#0x26]
2E267E:  SUBS            R1, #1
2E2680:  STRH            R1, [R0,#0x26]
2E2682:  BX              LR
