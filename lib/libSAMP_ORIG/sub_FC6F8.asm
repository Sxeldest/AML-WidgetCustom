; =========================================================
; Game Engine Function: sub_FC6F8
; Address            : 0xFC6F8 - 0xFC72A
; =========================================================

FC6F8:  PUSH            {R4-R7,LR}
FC6FA:  ADD             R7, SP, #0xC
FC6FC:  PUSH.W          {R8}
FC700:  MOV             R5, R0
FC702:  MOV             R4, R1
FC704:  MOV             R0, R1
FC706:  MOVS            R1, #0x64 ; 'd'
FC708:  MOV.W           R8, #0x64 ; 'd'
FC70C:  BLX             sub_108874
FC710:  MOV             R6, R0
FC712:  MOV             R0, R5
FC714:  MOV             R1, R6
FC716:  BL              sub_FC84C
FC71A:  MLS.W           R1, R6, R8, R4
FC71E:  POP.W           {R8}
FC722:  POP.W           {R4-R7,LR}
FC726:  B.W             sub_FC84C
