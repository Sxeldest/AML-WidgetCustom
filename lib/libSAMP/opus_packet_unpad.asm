; =========================================================
; Game Engine Function: opus_packet_unpad
; Address            : 0x1B98B4 - 0x1B9914
; =========================================================

1B98B4:  PUSH            {R4-R7,LR}
1B98B6:  ADD             R7, SP, #0xC
1B98B8:  PUSH.W          {R11}
1B98BC:  SUB             SP, SP, #0x140
1B98BE:  MOV             R4, R0
1B98C0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B98CA)
1B98C2:  MOV             R5, R1
1B98C4:  CMP             R5, #1
1B98C6:  ADD             R0, PC; __stack_chk_guard_ptr
1B98C8:  LDR             R0, [R0]; __stack_chk_guard
1B98CA:  LDR             R0, [R0]
1B98CC:  STR             R0, [SP,#0x150+var_14]
1B98CE:  BLT             loc_1B98F6
1B98D0:  ADD             R0, SP, #0x150+var_140
1B98D2:  MOVS            R6, #0
1B98D4:  MOV             R1, R4
1B98D6:  MOV             R2, R5
1B98D8:  STR             R6, [SP,#0x150+var_13C]
1B98DA:  BLX             j_opus_repacketizer_cat
1B98DE:  CMP             R0, #0
1B98E0:  BLT             loc_1B98FA
1B98E2:  LDR             R2, [SP,#0x150+var_13C]
1B98E4:  ADD             R0, SP, #0x150+var_140
1B98E6:  MOVS            R1, #0
1B98E8:  MOV             R3, R4
1B98EA:  STRD.W          R5, R6, [SP,#0x150+var_150]
1B98EE:  STR             R6, [SP,#0x150+var_148]
1B98F0:  BLX             j_opus_repacketizer_out_range_impl
1B98F4:  B               loc_1B98FA
1B98F6:  MOV.W           R0, #0xFFFFFFFF
1B98FA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1B9902)
1B98FC:  LDR             R2, [SP,#0x150+var_14]
1B98FE:  ADD             R1, PC; __stack_chk_guard_ptr
1B9900:  LDR             R1, [R1]; __stack_chk_guard
1B9902:  LDR             R1, [R1]
1B9904:  SUBS            R1, R1, R2
1B9906:  ITTT EQ
1B9908:  ADDEQ           SP, SP, #0x140
1B990A:  POPEQ.W         {R11}
1B990E:  POPEQ           {R4-R7,PC}
1B9910:  BLX             __stack_chk_fail
