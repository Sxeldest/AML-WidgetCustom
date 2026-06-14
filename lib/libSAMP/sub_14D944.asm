; =========================================================
; Game Engine Function: sub_14D944
; Address            : 0x14D944 - 0x14DA04
; =========================================================

14D944:  PUSH            {R4,R6,R7,LR}
14D946:  ADD             R7, SP, #8
14D948:  SUB             SP, SP, #0x138
14D94A:  LDRD.W          R1, R0, [R0]; src
14D94E:  MOVS            R3, #0
14D950:  ASRS            R2, R0, #0x1F
14D952:  ADD.W           R0, R0, R2,LSR#29
14D956:  MOVS            R2, #1
14D958:  ADD.W           R2, R2, R0,ASR#3; size
14D95C:  ADD             R0, SP, #0x140+var_13C; int
14D95E:  BL              sub_17D4F2
14D962:  SUB.W           R1, R7, #-var_A; int
14D966:  MOVS            R2, #0x10
14D968:  MOVS            R3, #1
14D96A:  BL              sub_17D786
14D96E:  ADD             R0, SP, #0x140+var_13C; int
14D970:  SUB.W           R1, R7, #-var_B; int
14D974:  MOVS            R2, #8
14D976:  MOVS            R3, #1
14D978:  BL              sub_17D786
14D97C:  LDRB.W          R2, [R7,#var_B]
14D980:  CMP             R2, #0x18
14D982:  BHI             loc_14D9FA
14D984:  SUB.W           R4, R7, #-dest
14D988:  ADD             R0, SP, #0x140+var_13C; int
14D98A:  MOV             R1, R4; dest
14D98C:  BL              sub_17D744
14D990:  LDRB.W          R0, [R7,#var_B]
14D994:  MOVS            R1, #0
14D996:  STRB            R1, [R4,R0]
14D998:  ADD             R0, SP, #0x140+var_13C; int
14D99A:  ADD             R1, SP, #0x140+var_28; int
14D99C:  MOVS            R2, #8
14D99E:  MOVS            R3, #1
14D9A0:  BL              sub_17D786
14D9A4:  LDR             R0, =(off_23496C - 0x14D9AA)
14D9A6:  ADD             R0, PC; off_23496C
14D9A8:  LDR             R0, [R0]; dword_23DEF4
14D9AA:  LDR             R0, [R0]
14D9AC:  LDR.W           R0, [R0,#0x3B0]
14D9B0:  LDR             R4, [R0]
14D9B2:  CBZ             R4, loc_14D9FA
14D9B4:  LDRB.W          R0, [SP,#0x140+var_28]
14D9B8:  CMP             R0, #1
14D9BA:  BNE             loc_14D9DC
14D9BC:  LDRH.W          R0, [R7,#var_A]
14D9C0:  ADDS            R1, R4, R0
14D9C2:  LDRB.W          R1, [R1,#0xFB4]
14D9C6:  CBZ             R1, loc_14D9DC
14D9C8:  ADD.W           R0, R4, R0,LSL#2
14D9CC:  LDR             R0, [R0,#4]
14D9CE:  CBZ             R0, loc_14D9DC
14D9D0:  ADDS            R0, #4
14D9D2:  SUB.W           R1, R7, #-dest
14D9D6:  MOVS            R2, #0x19
14D9D8:  BLX             __strcpy_chk
14D9DC:  MOV.W           R0, #0x13A0
14D9E0:  LDRH.W          R1, [R7,#var_A]
14D9E4:  LDRH            R0, [R4,R0]
14D9E6:  CMP             R0, R1
14D9E8:  BNE             loc_14D9FA
14D9EA:  MOVW            R0, #0x13A2
14D9EE:  SUB.W           R1, R7, #-dest
14D9F2:  ADD             R0, R4
14D9F4:  MOVS            R2, #0x19
14D9F6:  BLX             __strcpy_chk
14D9FA:  ADD             R0, SP, #0x140+var_13C
14D9FC:  BL              sub_17D542
14DA00:  ADD             SP, SP, #0x138
14DA02:  POP             {R4,R6,R7,PC}
