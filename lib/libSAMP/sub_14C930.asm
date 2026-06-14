; =========================================================
; Game Engine Function: sub_14C930
; Address            : 0x14C930 - 0x14C9CE
; =========================================================

14C930:  PUSH            {R4,R6,R7,LR}
14C932:  ADD             R7, SP, #8
14C934:  SUB             SP, SP, #0x158
14C936:  LDRD.W          R1, R0, [R0]; src
14C93A:  MOVS            R3, #0
14C93C:  ASRS            R2, R0, #0x1F
14C93E:  ADD.W           R0, R0, R2,LSR#29
14C942:  MOVS            R2, #1
14C944:  ADD.W           R2, R2, R0,ASR#3; size
14C948:  ADD             R0, SP, #0x160+var_11C; int
14C94A:  BL              sub_17D4F2
14C94E:  LDR             R1, =(aAxl - 0x14C956); "AXL" ...
14C950:  LDR             R2, =(aClearanimation - 0x14C958); "ClearAnimation" ...
14C952:  ADD             R1, PC; "AXL"
14C954:  ADD             R2, PC; "ClearAnimation"
14C956:  MOVS            R0, #4; prio
14C958:  BLX             __android_log_print
14C95C:  ADD             R0, SP, #0x160+var_11C; int
14C95E:  ADD.W           R1, SP, #0x160+var_11E; int
14C962:  MOVS            R2, #0x10
14C964:  MOVS            R3, #1
14C966:  BL              sub_17D786
14C96A:  LDR             R0, =(off_23496C - 0x14C970)
14C96C:  ADD             R0, PC; off_23496C
14C96E:  LDR             R0, [R0]; dword_23DEF4
14C970:  LDR             R0, [R0]
14C972:  LDR.W           R0, [R0,#0x3B0]
14C976:  LDR             R0, [R0]
14C978:  CBZ             R0, loc_14C9C4
14C97A:  ADD.W           R2, R0, #0x13A0
14C97E:  LDRH.W          R1, [SP,#0x160+var_11E]
14C982:  LDRH            R3, [R2]
14C984:  CMP             R1, R3
14C986:  BNE             loc_14C98E
14C988:  LDR             R0, [R2,#0x1C]
14C98A:  LDR             R4, [R0,#0x1C]
14C98C:  B               loc_14C9AC
14C98E:  CMP.W           R1, #0x3EC
14C992:  BHI             loc_14C9C4
14C994:  ADDS            R2, R0, R1
14C996:  LDRB.W          R2, [R2,#0xFB4]
14C99A:  CBZ             R2, loc_14C9C4
14C99C:  ADD.W           R0, R0, R1,LSL#2
14C9A0:  MOVS            R1, #0
14C9A2:  LDR             R0, [R0,#4]
14C9A4:  LDR             R0, [R0]
14C9A6:  LDR.W           R4, [R0,#0x128]
14C9AA:  STRB            R1, [R0,#0x11]
14C9AC:  CBZ             R4, loc_14C9C4
14C9AE:  MOV             R1, SP
14C9B0:  MOV             R0, R4
14C9B2:  BL              sub_F8910
14C9B6:  ADD             R3, SP, #0x160+var_130
14C9B8:  LDR             R0, [R4]
14C9BA:  LDM             R3, {R1-R3}
14C9BC:  LDR.W           R12, [R0,#0x10]
14C9C0:  MOV             R0, R4
14C9C2:  BLX             R12
14C9C4:  ADD             R0, SP, #0x160+var_11C
14C9C6:  BL              sub_17D542
14C9CA:  ADD             SP, SP, #0x158
14C9CC:  POP             {R4,R6,R7,PC}
