; =========================================================
; Game Engine Function: sub_1A3708
; Address            : 0x1A3708 - 0x1A3726
; =========================================================

1A3708:  LDR             R1, =(_ZN11CRoadBlocks14RoadBlockNodesE_ptr - 0x1A371A)
1A370A:  MOV             R0, #0xFFFFFAEC
1A3712:  MOVW            R2, #0xFFFF
1A3716:  ADD             R1, PC; _ZN11CRoadBlocks14RoadBlockNodesE_ptr
1A3718:  LDR             R1, [R1]; CRoadBlocks::RoadBlockNodes ...
1A371A:  ADDS            R3, R1, R0
1A371C:  ADDS            R0, #4
1A371E:  STRH.W          R2, [R3,#0x514]
1A3722:  BNE             loc_1A371A
1A3724:  BX              LR
