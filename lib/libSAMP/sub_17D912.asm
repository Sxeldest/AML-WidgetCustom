; =========================================================
; Game Engine Function: sub_17D912
; Address            : 0x17D912 - 0x17D9C0
; =========================================================

17D912:  PUSH            {R4-R7,LR}
17D914:  ADD             R7, SP, #0xC
17D916:  PUSH.W          {R8-R11}
17D91A:  SUB             SP, SP, #4
17D91C:  MOV             R11, R0
17D91E:  MOV.W           R0, #0xFFFFFFFF
17D922:  MOVS            R6, #0xFF
17D924:  CMP             R3, #0
17D926:  ADD.W           R10, R0, R2,ASR#3
17D92A:  IT NE
17D92C:  MOVNE           R6, #0
17D92E:  MOV             R9, R3
17D930:  MOV             R4, R1
17D932:  CMP             R2, #0x10
17D934:  BLT             loc_17D980
17D936:  LDRB.W          R0, [R4,R10]
17D93A:  CMP.W           R10, #1
17D93E:  IT GE
17D940:  MOVGE.W         R10, #1
17D944:  MOV.W           R8, R2,ASR#3
17D948:  STR             R4, [SP,#0x20+var_20]
17D94A:  CMP             R6, R0
17D94C:  BNE             loc_17D96E
17D94E:  SUB.W           R10, R10, #1
17D952:  SUBS            R4, #2
17D954:  MOV             R0, R11
17D956:  BL              sub_17D84A
17D95A:  SUB.W           R5, R8, #1
17D95E:  CMP             R5, #1
17D960:  BLE             loc_17D97E
17D962:  LDRB.W          R0, [R4,R8]
17D966:  MOV             R8, R5
17D968:  CMP             R6, R0
17D96A:  BEQ             loc_17D954
17D96C:  B               loc_17D970
17D96E:  MOV             R5, R8
17D970:  MOV             R0, R11
17D972:  BL              sub_17D828
17D976:  LSLS            R2, R5, #3
17D978:  MOV             R0, R11
17D97A:  LDR             R1, [SP,#0x20+var_20]
17D97C:  B               loc_17D9B0
17D97E:  LDR             R4, [SP,#0x20+var_20]
17D980:  LDRB.W          R0, [R4,R10]
17D984:  CMP.W           R9, #0
17D988:  BEQ             loc_17D99E
17D98A:  CMP             R0, #0x10
17D98C:  BCC             loc_17D9A2
17D98E:  MOV             R0, R11
17D990:  BL              sub_17D828
17D994:  ADD.W           R1, R4, R10
17D998:  MOV             R0, R11
17D99A:  MOVS            R2, #8
17D99C:  B               loc_17D9B0
17D99E:  CMP             R0, #0xF0
17D9A0:  BCC             loc_17D98E
17D9A2:  MOV             R0, R11
17D9A4:  BL              sub_17D84A
17D9A8:  ADD.W           R1, R4, R10
17D9AC:  MOV             R0, R11
17D9AE:  MOVS            R2, #4
17D9B0:  MOVS            R3, #1
17D9B2:  ADD             SP, SP, #4
17D9B4:  POP.W           {R8-R11}
17D9B8:  POP.W           {R4-R7,LR}
17D9BC:  B.W             sub_17D628
