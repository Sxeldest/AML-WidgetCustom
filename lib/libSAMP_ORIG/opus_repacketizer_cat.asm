; =========================================================
; Game Engine Function: opus_repacketizer_cat
; Address            : 0xDB67C - 0xDB730
; =========================================================

DB67C:  PUSH            {R4-R7,LR}
DB67E:  ADD             R7, SP, #0xC
DB680:  PUSH.W          {R8}
DB684:  SUB             SP, SP, #0x18
DB686:  MOV             R4, R0
DB688:  LDR             R0, =(__stack_chk_guard_ptr - 0xDB692)
DB68A:  MOV             R5, R2
DB68C:  MOV             R6, R1
DB68E:  ADD             R0, PC; __stack_chk_guard_ptr
DB690:  CMP             R5, #1
DB692:  LDR             R0, [R0]; __stack_chk_guard
DB694:  LDR             R0, [R0]
DB696:  STR             R0, [SP,#0x28+var_14]
DB698:  BLT             loc_DB6E0
DB69A:  LDR             R0, [R4,#4]
DB69C:  CBZ             R0, loc_DB6AC
DB69E:  LDRB            R0, [R4]
DB6A0:  LDRB            R1, [R6]
DB6A2:  EORS            R0, R1
DB6A4:  UXTB            R0, R0
DB6A6:  CMP             R0, #3
DB6A8:  BLS             loc_DB6BE
DB6AA:  B               loc_DB6E0
DB6AC:  LDRB            R0, [R6]
DB6AE:  MOV.W           R1, #0x1F40
DB6B2:  STRB            R0, [R4]
DB6B4:  MOV             R0, R6
DB6B6:  BLX             j_opus_packet_get_samples_per_frame
DB6BA:  STR.W           R0, [R4,#0x128]
DB6BE:  MOV             R0, R6
DB6C0:  MOV             R1, R5
DB6C2:  BLX             j_opus_packet_get_nb_frames
DB6C6:  MOV             R8, R0
DB6C8:  CMP.W           R8, #1
DB6CC:  BLT             loc_DB6E0
DB6CE:  LDR             R0, [R4,#4]
DB6D0:  LDR.W           R1, [R4,#0x128]
DB6D4:  ADD.W           R2, R0, R8
DB6D8:  MULS            R1, R2
DB6DA:  CMP.W           R1, #0x3C0
DB6DE:  BLE             loc_DB6FE
DB6E0:  MOV             R0, #0xFFFFFFFC
DB6E4:  LDR             R1, =(__stack_chk_guard_ptr - 0xDB6EC)
DB6E6:  LDR             R2, [SP,#0x28+var_14]
DB6E8:  ADD             R1, PC; __stack_chk_guard_ptr
DB6EA:  LDR             R1, [R1]; __stack_chk_guard
DB6EC:  LDR             R1, [R1]
DB6EE:  SUBS            R1, R1, R2
DB6F0:  ITTT EQ
DB6F2:  ADDEQ           SP, SP, #0x18
DB6F4:  POPEQ.W         {R8}
DB6F8:  POPEQ           {R4-R7,PC}
DB6FA:  BLX             __stack_chk_fail
DB6FE:  ADD.W           R2, R4, R0,LSL#1
DB702:  ADD.W           R0, R4, R0,LSL#2
DB706:  ADDS            R2, #0xC8
DB708:  ADDS            R0, #8
DB70A:  MOVS            R1, #0
DB70C:  SUB.W           R3, R7, #-var_15
DB710:  STRD.W          R0, R2, [SP,#0x28+var_28]
DB714:  MOV             R0, R6
DB716:  STRD.W          R1, R1, [SP,#0x28+var_20]
DB71A:  MOV             R1, R5
DB71C:  MOVS            R2, #0
DB71E:  BLX             j_opus_packet_parse_impl
DB722:  CMP             R0, #1
DB724:  ITTTT GE
DB726:  LDRGE           R0, [R4,#4]
DB728:  ADDGE           R0, R8
DB72A:  STRGE           R0, [R4,#4]
DB72C:  MOVGE           R0, #0
DB72E:  B               loc_DB6E4
