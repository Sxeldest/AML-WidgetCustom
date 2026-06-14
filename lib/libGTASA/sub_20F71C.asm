; =========================================================
; Game Engine Function: sub_20F71C
; Address            : 0x20F71C - 0x20F816
; =========================================================

20F71C:  ADD.W           R1, R0, #0x8C
20F720:  MOVS            R2, #0
20F722:  MOVS            R3, #0
20F724:  STRH.W          R2, [R1,R3,LSL#2]
20F728:  ADDS            R3, #1
20F72A:  CMP.W           R3, #0x11E
20F72E:  BNE             loc_20F724
20F730:  MOVS            R1, #0
20F732:  MOV.W           R2, #0x16A0
20F736:  STRH.W          R1, [R0,#0x988]
20F73A:  STRH.W          R1, [R0,#0x984]
20F73E:  STRH.W          R1, [R0,#0x98C]
20F742:  STRH.W          R1, [R0,#0x990]
20F746:  STRH.W          R1, [R0,#0x994]
20F74A:  STRH.W          R1, [R0,#0x998]
20F74E:  STRH.W          R1, [R0,#0x99C]
20F752:  STRH.W          R1, [R0,#0x9A0]
20F756:  STRH.W          R1, [R0,#0x9A4]
20F75A:  STRH.W          R1, [R0,#0x9A8]
20F75E:  STRH.W          R1, [R0,#0x9AC]
20F762:  STRH.W          R1, [R0,#0x9B0]
20F766:  STRH.W          R1, [R0,#0x9B4]
20F76A:  STRH.W          R1, [R0,#0x9B8]
20F76E:  STRH.W          R1, [R0,#0x9BC]
20F772:  STRH.W          R1, [R0,#0x9C0]
20F776:  STRH.W          R1, [R0,#0x9C4]
20F77A:  STRH.W          R1, [R0,#0x9C8]
20F77E:  STRH.W          R1, [R0,#0x9CC]
20F782:  STRH.W          R1, [R0,#0x980]
20F786:  STRH.W          R1, [R0,#0x9D4]
20F78A:  STRH.W          R1, [R0,#0x9D0]
20F78E:  STRH.W          R1, [R0,#0x9D8]
20F792:  STRH.W          R1, [R0,#0x9DC]
20F796:  STRH.W          R1, [R0,#0x9E0]
20F79A:  STRH.W          R1, [R0,#0x9E4]
20F79E:  STRH.W          R1, [R0,#0x9E8]
20F7A2:  STRH.W          R1, [R0,#0x9EC]
20F7A6:  STRH.W          R1, [R0,#0x9F0]
20F7AA:  STRH.W          R1, [R0,#0x9F4]
20F7AE:  STRH.W          R1, [R0,#0xA74]
20F7B2:  STRH.W          R1, [R0,#0xA7C]
20F7B6:  STRH.W          R1, [R0,#0xA78]
20F7BA:  STRH.W          R1, [R0,#0xA80]
20F7BE:  STRH.W          R1, [R0,#0xA84]
20F7C2:  STRH.W          R1, [R0,#0xA88]
20F7C6:  STRH.W          R1, [R0,#0xA8C]
20F7CA:  STRH.W          R1, [R0,#0xA90]
20F7CE:  STRH.W          R1, [R0,#0xA94]
20F7D2:  STRH.W          R1, [R0,#0xA98]
20F7D6:  STRH.W          R1, [R0,#0xA9C]
20F7DA:  STRH.W          R1, [R0,#0xAA0]
20F7DE:  STRH.W          R1, [R0,#0xAA4]
20F7E2:  STRH.W          R1, [R0,#0xAA8]
20F7E6:  STRH.W          R1, [R0,#0xAAC]
20F7EA:  STRH.W          R1, [R0,#0xAB0]
20F7EE:  STRH.W          R1, [R0,#0xAB4]
20F7F2:  STRH.W          R1, [R0,#0xAB8]
20F7F6:  STRH.W          R1, [R0,#0xABC]
20F7FA:  STR             R1, [R0,R2]
20F7FC:  MOVW            R2, #0x16A4
20F800:  STR             R1, [R0,R2]
20F802:  MOVW            R2, #0x16A8
20F806:  STR             R1, [R0,R2]
20F808:  MOVW            R2, #0x1698
20F80C:  STR             R1, [R0,R2]
20F80E:  MOVS            R1, #1
20F810:  STRH.W          R1, [R0,#0x48C]
20F814:  BX              LR
