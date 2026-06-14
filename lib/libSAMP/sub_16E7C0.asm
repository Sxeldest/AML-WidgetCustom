; =========================================================
; Game Engine Function: sub_16E7C0
; Address            : 0x16E7C0 - 0x16E86C
; =========================================================

16E7C0:  PUSH            {R4-R7,LR}
16E7C2:  ADD             R7, SP, #0xC
16E7C4:  PUSH.W          {R8-R11}
16E7C8:  SUB             SP, SP, #0xC
16E7CA:  MOV             R9, R0
16E7CC:  LDR             R0, =(dword_381B58 - 0x16E7D4)
16E7CE:  MOVS            R6, #1
16E7D0:  ADD             R0, PC; dword_381B58
16E7D2:  STR             R0, [SP,#0x28+var_20]
16E7D4:  LDR             R0, =(dword_381B60 - 0x16E7DA)
16E7D6:  ADD             R0, PC; dword_381B60
16E7D8:  MOV             R8, R0
16E7DA:  LDR             R0, =(off_2390AC - 0x16E7E0)
16E7DC:  ADD             R0, PC; off_2390AC
16E7DE:  STR             R0, [SP,#0x28+var_24]
16E7E0:  LDR             R0, =(off_2390B0 - 0x16E7E6)
16E7E2:  ADD             R0, PC; off_2390B0
16E7E4:  STR             R0, [SP,#0x28+var_28]
16E7E6:  MOVS            R0, #0
16E7E8:  ADD.W           R0, R0, R0,LSL#1
16E7EC:  ADD.W           R4, R9, R0,LSL#2
16E7F0:  MOV             R5, R4
16E7F2:  LDR.W           R0, [R5,#4]!
16E7F6:  CMP.W           R0, #0xFFFFFFFF
16E7FA:  BGT             loc_16E854
16E7FC:  LDR             R0, [SP,#0x28+var_20]
16E7FE:  LDR             R0, [R0]
16E800:  CBZ             R0, loc_16E80C
16E802:  LDR.W           R1, [R0,#0x370]
16E806:  ADDS            R1, #1
16E808:  STR.W           R1, [R0,#0x370]
16E80C:  LDR             R0, [SP,#0x28+var_24]
16E80E:  LDR.W           R1, [R8]
16E812:  LDR             R2, [R0]
16E814:  MOVS            R0, #0
16E816:  BLX             R2; sub_171190
16E818:  MOV             R11, R4
16E81A:  MOV             R10, R0
16E81C:  LDR.W           R1, [R11,#8]!; src
16E820:  CBZ             R1, loc_16E84C
16E822:  LDR             R0, [R4]
16E824:  LSLS            R2, R0, #2; n
16E826:  MOV             R0, R10; dest
16E828:  BLX             j_memcpy
16E82C:  LDR.W           R0, [R11]
16E830:  CBZ             R0, loc_16E842
16E832:  LDR             R1, [SP,#0x28+var_20]
16E834:  LDR             R1, [R1]
16E836:  CBZ             R1, loc_16E842
16E838:  LDR.W           R2, [R1,#0x370]
16E83C:  SUBS            R2, #1
16E83E:  STR.W           R2, [R1,#0x370]
16E842:  LDR             R2, [SP,#0x28+var_28]
16E844:  LDR.W           R1, [R8]
16E848:  LDR             R2, [R2]
16E84A:  BLX             R2; j_opus_decoder_destroy_0
16E84C:  MOVS            R0, #0
16E84E:  STR.W           R10, [R11]
16E852:  STR             R0, [R5]
16E854:  MOVS            R0, #0
16E856:  STR             R0, [R4]
16E858:  LSLS            R0, R6, #0x1F
16E85A:  MOV.W           R0, #1
16E85E:  MOV.W           R6, #0
16E862:  BNE             loc_16E7E8
16E864:  ADD             SP, SP, #0xC
16E866:  POP.W           {R8-R11}
16E86A:  POP             {R4-R7,PC}
