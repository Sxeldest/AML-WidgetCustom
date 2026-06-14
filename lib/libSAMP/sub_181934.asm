; =========================================================
; Game Engine Function: sub_181934
; Address            : 0x181934 - 0x181976
; =========================================================

181934:  PUSH            {R7,LR}
181936:  MOV             R7, SP
181938:  SUB             SP, SP, #8
18193A:  MOVS            R3, #0
18193C:  STR             R3, [SP,#0x10+var_10]
18193E:  MOVS            R3, #0
181940:  BL              sub_181978
181944:  CBZ             R0, loc_18196E
181946:  ADDW            R2, R0, #0x6CC
18194A:  MOVS            R0, #0
18194C:  MOVW            R12, #0xFFFF
181950:  MOVS            R1, #0
181952:  LDRH.W          R3, [R2,R1,LSL#3]
181956:  CMP             R3, R12
181958:  BEQ             loc_181966
18195A:  ADDS            R1, #1
18195C:  ADD             R0, R3
18195E:  CMP             R1, #5
181960:  BNE             loc_181952
181962:  MOVS            R1, #5
181964:  B               loc_181968
181966:  CBZ             R1, loc_18196E
181968:  BLX             sub_220A6C
18196C:  B               loc_181972
18196E:  MOV.W           R0, #0xFFFFFFFF
181972:  ADD             SP, SP, #8
181974:  POP             {R7,PC}
