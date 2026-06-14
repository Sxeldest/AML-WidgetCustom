; =========================================================
; Game Engine Function: sub_17E820
; Address            : 0x17E820 - 0x17E85A
; =========================================================

17E820:  PUSH            {R4,R5,R7,LR}
17E822:  ADD             R7, SP, #8
17E824:  MOV             R4, R0
17E826:  LDRD.W          R2, R0, [R0]
17E82A:  CBZ             R0, loc_17E840
17E82C:  MOVS            R3, #0
17E82E:  LDR.W           R5, [R2,R3,LSL#2]
17E832:  CBZ             R5, loc_17E83A
17E834:  LDR             R5, [R5]
17E836:  CMP             R5, R1
17E838:  BEQ             loc_17E844
17E83A:  ADDS            R3, #1
17E83C:  CMP             R0, R3
17E83E:  BNE             loc_17E82E
17E840:  MOVS            R5, #0xFF
17E842:  B               loc_17E846
17E844:  UXTB            R5, R3
17E846:  LDR.W           R0, [R2,R5,LSL#2]; void *
17E84A:  CBZ             R0, loc_17E852
17E84C:  BLX             j__ZdlPv; operator delete(void *)
17E850:  LDR             R2, [R4]
17E852:  MOVS            R0, #0
17E854:  STR.W           R0, [R2,R5,LSL#2]
17E858:  POP             {R4,R5,R7,PC}
