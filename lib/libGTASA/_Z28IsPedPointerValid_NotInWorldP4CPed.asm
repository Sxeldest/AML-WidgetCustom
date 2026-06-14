; =========================================================
; Game Engine Function: _Z28IsPedPointerValid_NotInWorldP4CPed
; Address            : 0x4A72C4 - 0x4A72FC
; =========================================================

4A72C4:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4A72CA)
4A72C6:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
4A72C8:  LDR             R1, [R1]; CPools::ms_pPedPool ...
4A72CA:  LDR             R1, [R1]; CPools::ms_pPedPool
4A72CC:  LDR             R2, [R1]
4A72CE:  SUBS            R0, R0, R2
4A72D0:  CMP             R0, #0
4A72D2:  ITT LT
4A72D4:  MOVLT           R0, #0
4A72D6:  BXLT            LR
4A72D8:  MOVW            R2, #0x7F3B
4A72DC:  ASRS            R0, R0, #2
4A72DE:  MOVT            R2, #0xBED8
4A72E2:  LDR             R3, [R1,#8]
4A72E4:  MULS            R2, R0
4A72E6:  MOVS            R0, #0
4A72E8:  CMP             R2, R3
4A72EA:  IT GE
4A72EC:  BXGE            LR
4A72EE:  LDR             R1, [R1,#4]
4A72F0:  LDRSB           R1, [R1,R2]
4A72F2:  CMP.W           R1, #0xFFFFFFFF
4A72F6:  IT GT
4A72F8:  MOVGT           R0, #1
4A72FA:  BX              LR
