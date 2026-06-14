; =========================================================
; Game Engine Function: sub_1FE7C0
; Address            : 0x1FE7C0 - 0x1FE89E
; =========================================================

1FE7C0:  PUSH            {R4-R7,LR}
1FE7C2:  ADD             R7, SP, #0xC
1FE7C4:  PUSH.W          {R8-R11}
1FE7C8:  SUB             SP, SP, #4
1FE7CA:  MOV             R4, R0
1FE7CC:  MOV             R8, R1
1FE7CE:  LDR.W           R0, [R4,#0x140]
1FE7D2:  MOV             R5, R2
1FE7D4:  LDR.W           R1, [R4,#0x1DC]
1FE7D8:  CMP             R0, R1
1FE7DA:  BNE             loc_1FE86A
1FE7DC:  LDRD.W          R10, R0, [R7,#arg_0]
1FE7E0:  MOVS            R1, #0
1FE7E2:  MOV.W           R11, #2
1FE7E6:  CMP             R0, #0
1FE7E8:  ADD.W           R9, R4, #0x144
1FE7EC:  STRD.W          R3, R1, [R4,#0x150]
1FE7F0:  IT NE
1FE7F2:  MOVNE.W         R11, #4
1FE7F6:  MOV.W           R6, #0x400
1FE7FA:  LDR.W           R0, [R4,#0x148]
1FE7FE:  CBNZ            R0, loc_1FE82A
1FE800:  LDR             R0, [R5]
1FE802:  CMP             R6, R0
1FE804:  IT HI
1FE806:  MOVHI           R6, R0
1FE808:  CMP             R6, #0
1FE80A:  SUB.W           R0, R0, R6
1FE80E:  STR             R0, [R5]
1FE810:  BEQ             loc_1FE826
1FE812:  MOV             R0, R4
1FE814:  MOV             R1, R8
1FE816:  MOV             R2, R6
1FE818:  BLX             j_png_read_data
1FE81C:  MOV             R0, R4
1FE81E:  MOV             R1, R8
1FE820:  MOV             R2, R6
1FE822:  BLX             j_png_calculate_crc
1FE826:  STRD.W          R8, R6, [R4,#0x144]
1FE82A:  LDR.W           R0, [R4,#0x154]
1FE82E:  CBNZ            R0, loc_1FE83E
1FE830:  LDR.W           R0, [R10]
1FE834:  MOVS            R1, #0
1FE836:  STR.W           R1, [R10]
1FE83A:  STR.W           R0, [R4,#0x154]
1FE83E:  LDR             R0, [R5]
1FE840:  MOVS            R1, #0
1FE842:  CMP             R0, #0
1FE844:  MOV             R0, R9
1FE846:  IT EQ
1FE848:  MOVEQ           R1, R11
1FE84A:  BLX             j_inflate
1FE84E:  MOV             R1, R0
1FE850:  CBNZ            R1, loc_1FE87A
1FE852:  LDR.W           R0, [R10]
1FE856:  CMP             R0, #0
1FE858:  ITT EQ
1FE85A:  LDREQ.W         R0, [R4,#0x154]
1FE85E:  CMPEQ           R0, #0
1FE860:  BNE             loc_1FE7FA
1FE862:  MOVS            R0, #0
1FE864:  MOVS            R2, #0
1FE866:  MOVS            R1, #0
1FE868:  B               loc_1FE882
1FE86A:  LDR             R0, =(aZstreamUnclaim - 0x1FE870); "zstream unclaimed"
1FE86C:  ADD             R0, PC; "zstream unclaimed"
1FE86E:  STR.W           R0, [R4,#0x15C]
1FE872:  ADD             SP, SP, #4
1FE874:  POP.W           {R8-R11}
1FE878:  POP             {R4-R7,PC}
1FE87A:  LDR.W           R0, [R10]
1FE87E:  LDR.W           R2, [R4,#0x154]
1FE882:  ADD             R0, R2
1FE884:  STR.W           R0, [R10]
1FE888:  MOVS            R0, #0
1FE88A:  STR.W           R0, [R4,#0x154]
1FE88E:  MOV             R0, R4
1FE890:  ADD             SP, SP, #4
1FE892:  POP.W           {R8-R11}
1FE896:  POP.W           {R4-R7,LR}
1FE89A:  B.W             sub_1A03D8
