; =========================================================
; Game Engine Function: sub_1A87F4
; Address            : 0x1A87F4 - 0x1A892E
; =========================================================

1A87F4:  PUSH            {R4-R7,LR}
1A87F6:  ADD             R7, SP, #0xC
1A87F8:  PUSH.W          {R8-R11}
1A87FC:  SUB             SP, SP, #0xC
1A87FE:  MOV             R4, R0
1A8800:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A8808)
1A8802:  MOV             R9, R1
1A8804:  ADD             R0, PC; __stack_chk_guard_ptr
1A8806:  LDR             R0, [R0]; __stack_chk_guard
1A8808:  LDR             R0, [R0]
1A880A:  STR.W           R0, [R7,#var_24]
1A880E:  MOV.W           R0, #0x11E0
1A8812:  LDR             R6, [R4,R0]
1A8814:  CMP             R6, R9
1A8816:  BNE             loc_1A882E
1A8818:  MOVW            R2, #0x11D0
1A881C:  MOVW            R0, #0x11CC
1A8820:  LDR             R1, [R4,R0]
1A8822:  LDR             R2, [R4,R2]
1A8824:  CMP             R2, R1
1A8826:  BNE             loc_1A882E
1A8828:  ADDS            R1, R4, R0
1A882A:  MOVS            R0, #0
1A882C:  B               loc_1A8906
1A882E:  CMP             R6, #0
1A8830:  BEQ             loc_1A88EA
1A8832:  MOVW            R0, #0x11E4
1A8836:  MOV.W           R1, #0x3E8
1A883A:  LDR             R5, [R4,R0]
1A883C:  SXTH            R0, R6
1A883E:  SMULBB.W        R1, R0, R1
1A8842:  SUB.W           R10, SP, #0x130
1A8846:  MOV             SP, R10
1A8848:  MOVW            R0, #0x11CC
1A884C:  MOVS            R3, #0
1A884E:  LDR             R2, [R4,R0]
1A8850:  MOV             R0, R10
1A8852:  MOVW            R8, #0x11CC
1A8856:  BLX             j_silk_resampler_init
1A885A:  STR.W           R0, [R7,#var_28]
1A885E:  MOVW            R1, #0x4DD3
1A8862:  LDR.W           R0, [R4,R8]
1A8866:  MOVT            R1, #0x1062
1A886A:  MOVS            R2, #5
1A886C:  SMMUL.W         R0, R0, R1
1A8870:  ASRS            R1, R0, #6
1A8872:  ADD.W           R0, R1, R0,LSR#31
1A8876:  ADD.W           R1, R5, R5,LSL#2
1A887A:  ADD.W           R1, R2, R1,LSL#1
1A887E:  MUL.W           R8, R0, R1
1A8882:  MOVS            R0, #7
1A8884:  MUL.W           R3, R1, R6
1A8888:  ADD.W           R0, R0, R8,LSL#1
1A888C:  BIC.W           R0, R0, #7
1A8890:  SUB.W           R5, SP, R0
1A8894:  MOVW            R0, #0x1C10
1A8898:  ADD.W           R11, R4, R0
1A889C:  MOV             SP, R5
1A889E:  MOV             R0, R10; int
1A88A0:  MOV             R1, R5; int
1A88A2:  MOV             R2, R11; src
1A88A4:  BLX             j_silk_resampler
1A88A8:  LDR.W           R1, [R7,#var_28]
1A88AC:  MOVS            R3, #1
1A88AE:  ADD.W           R10, R0, R1
1A88B2:  MOVW            R0, #0x1690
1A88B6:  ADDS            R6, R4, R0
1A88B8:  SXTH.W          R0, R9
1A88BC:  MOV.W           R1, #0x3E8
1A88C0:  SMULBB.W        R2, R0, R1
1A88C4:  MOVW            R0, #0x11CC
1A88C8:  LDR             R1, [R4,R0]
1A88CA:  MOV             R0, R6
1A88CC:  BLX             j_silk_resampler_init
1A88D0:  ADD.W           R9, R10, R0
1A88D4:  MOV             R0, R6; int
1A88D6:  MOV             R1, R11; int
1A88D8:  MOV             R2, R5; src
1A88DA:  MOV             R3, R8
1A88DC:  BLX             j_silk_resampler
1A88E0:  MOVW            R1, #0x11CC
1A88E4:  ADD             R0, R9
1A88E6:  ADD             R1, R4
1A88E8:  B               loc_1A8906
1A88EA:  MOV.W           R0, #0x3E8
1A88EE:  MOVW            R5, #0x11CC
1A88F2:  MUL.W           R2, R9, R0
1A88F6:  LDR             R1, [R4,R5]
1A88F8:  MOVW            R0, #0x1690
1A88FC:  MOVS            R3, #1
1A88FE:  ADD             R0, R4
1A8900:  BLX             j_silk_resampler_init
1A8904:  ADDS            R1, R4, R5
1A8906:  MOVW            R2, #0x11D0
1A890A:  LDR             R1, [R1]
1A890C:  STR             R1, [R4,R2]
1A890E:  LDR             R1, =(__stack_chk_guard_ptr - 0x1A8918)
1A8910:  LDR.W           R2, [R7,#var_24]
1A8914:  ADD             R1, PC; __stack_chk_guard_ptr
1A8916:  LDR             R1, [R1]; __stack_chk_guard
1A8918:  LDR             R1, [R1]
1A891A:  SUBS            R1, R1, R2
1A891C:  ITTTT EQ
1A891E:  SUBEQ.W         R4, R7, #-var_1C
1A8922:  MOVEQ           SP, R4
1A8924:  POPEQ.W         {R8-R11}
1A8928:  POPEQ           {R4-R7,PC}
1A892A:  BLX             __stack_chk_fail
