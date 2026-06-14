; =========================================================
; Game Engine Function: sub_878FC
; Address            : 0x878FC - 0x879CA
; =========================================================

878FC:  PUSH            {R4-R7,LR}
878FE:  ADD             R7, SP, #0xC
87900:  PUSH.W          {R8-R11}
87904:  SUB             SP, SP, #0xC
87906:  MOV             R10, R1
87908:  LDR             R1, =(__stack_chk_guard_ptr - 0x87912)
8790A:  MOV             R8, R2
8790C:  MOV             R11, R3
8790E:  ADD             R1, PC; __stack_chk_guard_ptr
87910:  LDR             R1, [R1]; __stack_chk_guard
87912:  LDR             R1, [R1]
87914:  STR             R1, [SP,#0x28+var_20]
87916:  LDRB            R2, [R0,#0x14]
87918:  LDR             R1, [R7,#arg_0]
8791A:  CBZ             R2, loc_87922
8791C:  LDR             R2, [R0,#0x10]
8791E:  CMP             R2, R1
87920:  BEQ             loc_8795C
87922:  LDR             R6, [R0,#4]
87924:  CBZ             R6, loc_87950
87926:  SUBS            R3, R6, #1
87928:  ADD.W           R6, R6, R6,LSR#31
8792C:  LDR             R2, [R0]
8792E:  MOVS            R4, #0
87930:  ASRS            R5, R6, #1
87932:  LDR.W           R6, [R2,R5,LSL#3]
87936:  CMP             R6, R1
87938:  BEQ             loc_87954
8793A:  IT GT
8793C:  SUBGT           R3, R5, #1
8793E:  CMP             R6, R1
87940:  IT LE
87942:  ADDLE           R4, R5, #1
87944:  SUBS            R6, R3, R4
87946:  ADD.W           R6, R6, R6,LSR#31
8794A:  ADD.W           R5, R4, R6,ASR#1
8794E:  BGE             loc_87932
87950:  MOVS            R5, #0
87952:  B               loc_879AE
87954:  MOVS            R2, #1
87956:  STRD.W          R5, R1, [R0,#0xC]
8795A:  STRB            R2, [R0,#0x14]
8795C:  LDR             R1, [R0]
8795E:  MOVS            R5, #0
87960:  LDR             R0, [R0,#0xC]
87962:  MOVS            R2, #0x10
87964:  MOVS            R3, #1
87966:  ADD.W           R0, R1, R0,LSL#3
8796A:  SUB.W           R1, R7, #-var_22
8796E:  LDR.W           R9, [R0,#4]
87972:  MOV             R0, R11
87974:  STRB.W          R5, [R10]
87978:  BL              sub_86FF0
8797C:  CBZ             R0, loc_879AE
8797E:  LDR.W           R0, [R11]
87982:  MOVS            R5, #0
87984:  LDR.W           R1, [R11,#8]
87988:  LDRH.W          R2, [R7,#var_22]
8798C:  SUBS            R0, R0, R1
8798E:  CMP             R0, R2
87990:  BLT             loc_879AE
87992:  MOV             R0, R9
87994:  MOV             R1, R11
87996:  MOV             R3, R8
87998:  STR.W           R10, [SP,#0x28+var_28]
8799C:  BL              sub_87618
879A0:  CMP             R0, R8
879A2:  IT GE
879A4:  SUBGE.W         R0, R8, #1
879A8:  STRB.W          R5, [R10,R0]
879AC:  MOVS            R5, #1
879AE:  LDR             R0, [SP,#0x28+var_20]
879B0:  LDR             R1, =(__stack_chk_guard_ptr - 0x879B6)
879B2:  ADD             R1, PC; __stack_chk_guard_ptr
879B4:  LDR             R1, [R1]; __stack_chk_guard
879B6:  LDR             R1, [R1]
879B8:  CMP             R1, R0
879BA:  ITTTT EQ
879BC:  MOVEQ           R0, R5
879BE:  ADDEQ           SP, SP, #0xC
879C0:  POPEQ.W         {R8-R11}
879C4:  POPEQ           {R4-R7,PC}
879C6:  BLX             __stack_chk_fail
