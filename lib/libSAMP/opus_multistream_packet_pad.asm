; =========================================================
; Game Engine Function: opus_multistream_packet_pad
; Address            : 0x1B991C - 0x1B99FE
; =========================================================

1B991C:  PUSH            {R4-R7,LR}
1B991E:  ADD             R7, SP, #0xC
1B9920:  PUSH.W          {R8-R11}
1B9924:  SUB             SP, SP, #0x1AC
1B9926:  MOV             R4, R0
1B9928:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B9932)
1B992A:  MOV             R5, R1
1B992C:  MOV             R6, R2
1B992E:  ADD             R0, PC; __stack_chk_guard_ptr
1B9930:  CMP             R5, #1
1B9932:  LDR             R0, [R0]; __stack_chk_guard
1B9934:  LDR             R0, [R0]
1B9936:  STR             R0, [SP,#0x1C8+var_20]
1B9938:  BLT             loc_1B9944
1B993A:  CMP             R6, R5
1B993C:  BNE             loc_1B9942
1B993E:  MOVS            R0, #0
1B9940:  B               loc_1B9948
1B9942:  BGE             loc_1B9962
1B9944:  MOV.W           R0, #0xFFFFFFFF
1B9948:  LDR             R1, =(__stack_chk_guard_ptr - 0x1B9950)
1B994A:  LDR             R2, [SP,#0x1C8+var_20]
1B994C:  ADD             R1, PC; __stack_chk_guard_ptr
1B994E:  LDR             R1, [R1]; __stack_chk_guard
1B9950:  LDR             R1, [R1]
1B9952:  SUBS            R1, R1, R2
1B9954:  ITTT EQ
1B9956:  ADDEQ           SP, SP, #0x1AC
1B9958:  POPEQ.W         {R8-R11}
1B995C:  POPEQ           {R4-R7,PC}
1B995E:  BLX             __stack_chk_fail
1B9962:  SUBS            R0, R6, R5
1B9964:  CMP             R3, #1
1B9966:  BLE             loc_1B99B4
1B9968:  SUBS            R6, R3, #1
1B996A:  ADD.W           R8, SP, #0x1C8+var_1AC
1B996E:  ADD.W           R9, SP, #0x1C8+var_1AD
1B9972:  MOV.W           R10, #0
1B9976:  MOV.W           R11, #0
1B997A:  STR             R0, [SP,#0x1C8+var_1B8]
1B997C:  CMP             R5, #1
1B997E:  BLT             loc_1B99F8
1B9980:  ADD             R0, SP, #0x1C8+var_1B4
1B9982:  STRD.W          R10, R8, [SP,#0x1C8+var_1C8]
1B9986:  STR.W           R10, [SP,#0x1C8+var_1C0]
1B998A:  MOV             R1, R5
1B998C:  STR             R0, [SP,#0x1C8+var_1BC]
1B998E:  MOV             R0, R4
1B9990:  MOVS            R2, #1
1B9992:  MOV             R3, R9
1B9994:  BLX             j_opus_packet_parse_impl
1B9998:  CMP             R0, #0
1B999A:  BLT             loc_1B9948
1B999C:  LDR             R0, [SP,#0x1C8+var_1B4]
1B999E:  ADD.W           R11, R11, #1
1B99A2:  CMP             R11, R6
1B99A4:  SUB.W           R5, R5, R0
1B99A8:  ADD             R4, R0
1B99AA:  BLT             loc_1B997C
1B99AC:  CMP             R5, #1
1B99AE:  BLT             loc_1B9944
1B99B0:  LDR             R0, [SP,#0x1C8+var_1B8]
1B99B2:  ADDS            R6, R5, R0
1B99B4:  CMP             R0, #0
1B99B6:  BEQ             loc_1B993E
1B99B8:  BLT             loc_1B9944
1B99BA:  ADD.W           R8, R4, R0
1B99BE:  MOV.W           R9, #0
1B99C2:  MOV             R1, R4; src
1B99C4:  MOV             R2, R5; n
1B99C6:  MOV             R0, R8; dest
1B99C8:  STR.W           R9, [SP,#0x1C8+var_148]
1B99CC:  BLX             j_memmove
1B99D0:  ADD             R0, SP, #0x1C8+var_14C
1B99D2:  MOV             R1, R8
1B99D4:  MOV             R2, R5
1B99D6:  BLX             j_opus_repacketizer_cat
1B99DA:  CMP             R0, #0
1B99DC:  BNE             loc_1B9948
1B99DE:  LDR             R2, [SP,#0x1C8+var_148]
1B99E0:  MOVS            R0, #1
1B99E2:  STRD.W          R6, R9, [SP,#0x1C8+var_1C8]
1B99E6:  MOVS            R1, #0
1B99E8:  STR             R0, [SP,#0x1C8+var_1C0]
1B99EA:  ADD             R0, SP, #0x1C8+var_14C
1B99EC:  MOV             R3, R4
1B99EE:  BLX             j_opus_repacketizer_out_range_impl
1B99F2:  AND.W           R0, R0, R0,ASR#31
1B99F6:  B               loc_1B9948
1B99F8:  MOV             R0, #0xFFFFFFFC
1B99FC:  B               loc_1B9948
