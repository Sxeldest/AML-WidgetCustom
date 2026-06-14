; =========================================================
; Game Engine Function: _ZN9CColStore6AddRefEi
; Address            : 0x2E2650 - 0x2E2668
; =========================================================

2E2650:  LDR             R1, =(_ZN9CColStore11ms_pColPoolE_ptr - 0x2E2658)
2E2652:  MOVS            R2, #0x2C ; ','
2E2654:  ADD             R1, PC; _ZN9CColStore11ms_pColPoolE_ptr
2E2656:  LDR             R1, [R1]; CColStore::ms_pColPool ...
2E2658:  LDR             R1, [R1]; CColStore::ms_pColPool
2E265A:  LDR             R1, [R1]
2E265C:  MLA.W           R0, R0, R2, R1
2E2660:  LDRH            R1, [R0,#0x26]
2E2662:  ADDS            R1, #1
2E2664:  STRH            R1, [R0,#0x26]
2E2666:  BX              LR
