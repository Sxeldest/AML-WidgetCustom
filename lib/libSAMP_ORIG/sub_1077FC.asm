; =========================================================
; Game Engine Function: sub_1077FC
; Address            : 0x1077FC - 0x1078A8
; =========================================================

1077FC:  PUSH            {R4-R7,LR}
1077FE:  ADD             R7, SP, #0xC
107800:  PUSH.W          {R11}
107804:  SUB             SP, SP, #8
107806:  MOV             R5, R0
107808:  LDR             R0, =(__stack_chk_guard_ptr - 0x10780E)
10780A:  ADD             R0, PC; __stack_chk_guard_ptr
10780C:  LDR             R0, [R0]; __stack_chk_guard
10780E:  LDR             R0, [R0]
107810:  STR             R0, [SP,#0x18+var_14]
107812:  LDR             R4, =(unk_1AF8A0 - 0x107818)
107814:  ADD             R4, PC; unk_1AF8A0
107816:  STR             R4, [SP,#0x18+var_18]
107818:  MOV             R0, R4; mutex
10781A:  BLX             pthread_mutex_lock
10781E:  ADDS            R0, R5, #3
107820:  MOVS            R1, #1
107822:  ADD.W           R1, R1, R0,LSR#2
107826:  LDR             R0, [R4,#(dword_1AF8A4 - 0x1AF8A0)]
107828:  LDR             R2, =(dword_1AF6A0 - 0x10782E)
10782A:  ADD             R2, PC; dword_1AF6A0
10782C:  CBNZ            R0, loc_107838
10782E:  MOV.W           R0, #0x800080
107832:  STR             R2, [R4,#(dword_1AF8A4 - 0x1AF8A0)]
107834:  STR             R0, [R2]
107836:  MOV             R0, R2
107838:  ADD.W           R6, R2, #0x200
10783C:  MOVS            R3, #0
10783E:  MOVS            R5, #0
107840:  CBZ             R0, loc_107886
107842:  CMP             R0, R6
107844:  BEQ             loc_107886
107846:  LDRH            R5, [R0,#2]
107848:  CMP             R1, R5
10784A:  BCC             loc_10785A
10784C:  BEQ             loc_107870
10784E:  LDRH            R3, [R0]
107850:  ADD.W           R5, R2, R3,LSL#2
107854:  MOV             R3, R0
107856:  MOV             R0, R5
107858:  B               loc_10783E
10785A:  SUBS            R2, R5, R1
10785C:  MOVS            R4, #0
10785E:  UXTH            R3, R2
107860:  STRH            R2, [R0,#2]
107862:  STRH.W          R4, [R0,R3,LSL#2]
107866:  ADD.W           R0, R0, R3,LSL#2
10786A:  ADDS            R5, R0, #4
10786C:  STRH            R1, [R0,#2]
10786E:  B               loc_107886
107870:  LDRH            R1, [R0]
107872:  CBZ             R3, loc_107878
107874:  STRH            R1, [R3]
107876:  B               loc_10787E
107878:  ADD.W           R1, R2, R1,LSL#2
10787C:  STR             R1, [R4,#(dword_1AF8A4 - 0x1AF8A0)]
10787E:  MOVS            R1, #0
107880:  STRH.W          R1, [R0],#4
107884:  MOV             R5, R0
107886:  MOV             R0, SP
107888:  BL              sub_107998
10788C:  LDR             R0, [SP,#0x18+var_14]
10788E:  LDR             R1, =(__stack_chk_guard_ptr - 0x107894)
107890:  ADD             R1, PC; __stack_chk_guard_ptr
107892:  LDR             R1, [R1]; __stack_chk_guard
107894:  LDR             R1, [R1]
107896:  CMP             R1, R0
107898:  ITTTT EQ
10789A:  MOVEQ           R0, R5
10789C:  ADDEQ           SP, SP, #8
10789E:  POPEQ.W         {R11}
1078A2:  POPEQ           {R4-R7,PC}
1078A4:  BLX             __stack_chk_fail
