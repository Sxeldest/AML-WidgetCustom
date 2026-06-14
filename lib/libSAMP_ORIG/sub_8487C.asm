; =========================================================
; Game Engine Function: sub_8487C
; Address            : 0x8487C - 0x849B2
; =========================================================

8487C:  PUSH            {R4-R7,LR}
8487E:  ADD             R7, SP, #0xC
84880:  PUSH.W          {R8-R11}
84884:  SUB             SP, SP, #0xC
84886:  LDR             R6, [R1,#4]
84888:  MOV             R5, R2
8488A:  MOV             R2, R0
8488C:  MOV.W           R0, #0x55555555
84890:  MOV             R9, R1
84892:  MOV.W           R1, #0x33333333
84896:  AND.W           R0, R0, R6,LSR#1
8489A:  LDR.W           R10, [R5,#4]
8489E:  SUBS            R0, R6, R0
848A0:  AND.W           R1, R1, R0,LSR#2
848A4:  BIC.W           R0, R0, #0xCCCCCCCC
848A8:  ADD             R0, R1
848AA:  MOV.W           R1, #0x1010101
848AE:  ADD.W           R0, R0, R0,LSR#4
848B2:  BIC.W           R0, R0, #0xF0F0F0F0
848B6:  MULS            R0, R1
848B8:  MOV.W           R8, R0,LSR#24
848BC:  CMP.W           R8, #1
848C0:  BHI             loc_848CA
848C2:  SUBS            R0, R6, #1
848C4:  AND.W           R10, R10, R0
848C8:  B               loc_848DC
848CA:  CMP             R10, R6
848CC:  BCC             loc_848DC
848CE:  MOV             R0, R10
848D0:  MOV             R1, R6
848D2:  MOV             R4, R2
848D4:  BLX             sub_109688
848D8:  MOV             R2, R4
848DA:  MOV             R10, R1
848DC:  LDR.W           R11, [R9]
848E0:  LDR.W           R0, [R11,R10,LSL#2]
848E4:  MOV             R4, R0
848E6:  LDR             R0, [R0]
848E8:  CMP             R0, R5
848EA:  BNE             loc_848E4
848EC:  ADD.W           R12, R9, #8
848F0:  CMP             R4, R12
848F2:  BEQ             loc_8491A
848F4:  LDR             R0, [R4,#4]
848F6:  CMP.W           R8, #1
848FA:  BHI             loc_84902
848FC:  SUBS            R1, R6, #1
848FE:  ANDS            R0, R1
84900:  B               loc_84916
84902:  CMP             R0, R6
84904:  BCC             loc_84916
84906:  MOV             R1, R6
84908:  STRD.W          R12, R2, [SP,#0x28+var_24]
8490C:  BLX             sub_109688
84910:  LDRD.W          R12, R2, [SP,#0x28+var_24]
84914:  MOV             R0, R1
84916:  CMP             R0, R10
84918:  BEQ             loc_8494A
8491A:  LDR             R0, [R5]
8491C:  CBZ             R0, loc_84944
8491E:  LDR             R0, [R0,#4]
84920:  CMP.W           R8, #1
84924:  BHI             loc_8492C
84926:  SUBS            R1, R6, #1
84928:  ANDS            R0, R1
8492A:  B               loc_84940
8492C:  CMP             R0, R6
8492E:  BCC             loc_84940
84930:  MOV             R1, R6
84932:  STRD.W          R12, R2, [SP,#0x28+var_24]
84936:  BLX             sub_109688
8493A:  LDRD.W          R12, R2, [SP,#0x28+var_24]
8493E:  MOV             R0, R1
84940:  CMP             R0, R10
84942:  BEQ             loc_8494A
84944:  MOVS            R0, #0
84946:  STR.W           R0, [R11,R10,LSL#2]
8494A:  LDR.W           R11, [R5]
8494E:  MOVS            R3, #0
84950:  CMP.W           R11, #0
84954:  BEQ             loc_84966
84956:  LDR.W           R0, [R11,#4]
8495A:  CMP.W           R8, #1
8495E:  BHI             loc_8496C
84960:  SUBS            R1, R6, #1
84962:  ANDS            R0, R1
84964:  B               loc_84982
84966:  MOV.W           R11, #0
8496A:  B               loc_84992
8496C:  CMP             R0, R6
8496E:  BCC             loc_84982
84970:  MOV             R1, R6
84972:  MOV             R8, R2
84974:  MOV             R6, R12
84976:  BLX             sub_109688
8497A:  MOVS            R3, #0
8497C:  MOV             R12, R6
8497E:  MOV             R2, R8
84980:  MOV             R0, R1
84982:  CMP             R0, R10
84984:  ITTT NE
84986:  LDRNE.W         R1, [R9]
8498A:  STRNE.W         R4, [R1,R0,LSL#2]
8498E:  LDRNE.W         R11, [R5]
84992:  MOVS            R0, #1
84994:  STR.W           R11, [R4]
84998:  STRB            R0, [R2,#8]
8499A:  LDR.W           R0, [R9,#0xC]
8499E:  STRD.W          R5, R12, [R2]
849A2:  SUBS            R0, #1
849A4:  STR             R3, [R5]
849A6:  STR.W           R0, [R9,#0xC]
849AA:  ADD             SP, SP, #0xC
849AC:  POP.W           {R8-R11}
849B0:  POP             {R4-R7,PC}
