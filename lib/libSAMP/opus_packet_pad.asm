; =========================================================
; Game Engine Function: opus_packet_pad
; Address            : 0x1B9824 - 0x1B98AA
; =========================================================

1B9824:  PUSH            {R4-R7,LR}
1B9826:  ADD             R7, SP, #0xC
1B9828:  PUSH.W          {R8,R9,R11}
1B982C:  SUB             SP, SP, #0x140
1B982E:  MOV             R4, R0
1B9830:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B983A)
1B9832:  MOV             R6, R1
1B9834:  MOV             R5, R2
1B9836:  ADD             R0, PC; __stack_chk_guard_ptr
1B9838:  CMP             R6, #1
1B983A:  LDR             R0, [R0]; __stack_chk_guard
1B983C:  LDR             R0, [R0]
1B983E:  STR             R0, [SP,#0x158+var_1C]
1B9840:  BLT             loc_1B984C
1B9842:  CMP             R6, R5
1B9844:  BNE             loc_1B984A
1B9846:  MOVS            R0, #0
1B9848:  B               loc_1B9850
1B984A:  BLE             loc_1B986A
1B984C:  MOV.W           R0, #0xFFFFFFFF
1B9850:  LDR             R1, =(__stack_chk_guard_ptr - 0x1B9858)
1B9852:  LDR             R2, [SP,#0x158+var_1C]
1B9854:  ADD             R1, PC; __stack_chk_guard_ptr
1B9856:  LDR             R1, [R1]; __stack_chk_guard
1B9858:  LDR             R1, [R1]
1B985A:  SUBS            R1, R1, R2
1B985C:  ITTT EQ
1B985E:  ADDEQ           SP, SP, #0x140
1B9860:  POPEQ.W         {R8,R9,R11}
1B9864:  POPEQ           {R4-R7,PC}
1B9866:  BLX             __stack_chk_fail
1B986A:  ADDS            R0, R4, R5
1B986C:  MOV.W           R9, #0
1B9870:  SUB.W           R8, R0, R6
1B9874:  MOV             R1, R4; src
1B9876:  MOV             R2, R6; n
1B9878:  STR.W           R9, [SP,#0x158+var_144]
1B987C:  MOV             R0, R8; dest
1B987E:  BLX             j_memmove
1B9882:  ADD             R0, SP, #0x158+var_148
1B9884:  MOV             R1, R8
1B9886:  MOV             R2, R6
1B9888:  BLX             j_opus_repacketizer_cat
1B988C:  CMP             R0, #0
1B988E:  BNE             loc_1B9850
1B9890:  LDR             R2, [SP,#0x158+var_144]
1B9892:  MOVS            R0, #1
1B9894:  STRD.W          R5, R9, [SP,#0x158+var_158]
1B9898:  MOVS            R1, #0
1B989A:  STR             R0, [SP,#0x158+var_150]
1B989C:  ADD             R0, SP, #0x158+var_148
1B989E:  MOV             R3, R4
1B98A0:  BLX             j_opus_repacketizer_out_range_impl
1B98A4:  AND.W           R0, R0, R0,ASR#31
1B98A8:  B               loc_1B9850
