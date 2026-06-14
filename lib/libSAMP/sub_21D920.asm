; =========================================================
; Game Engine Function: sub_21D920
; Address            : 0x21D920 - 0x21D9A2
; =========================================================

21D920:  PUSH            {R4-R7,LR}
21D922:  ADD             R7, SP, #0xC
21D924:  PUSH.W          {R8}
21D928:  SUB             SP, SP, #0x10
21D92A:  MOV             R4, R0
21D92C:  LDR             R0, =(__stack_chk_guard_ptr - 0x21D932)
21D92E:  ADD             R0, PC; __stack_chk_guard_ptr
21D930:  LDR             R0, [R0]; __stack_chk_guard
21D932:  LDR             R0, [R0]
21D934:  STR             R0, [SP,#0x20+var_14]
21D936:  LDRB            R0, [R4,#0x10]
21D938:  CBNZ            R0, loc_21D988
21D93A:  MOVS            R0, #1
21D93C:  MOV             R5, R1
21D93E:  STRB            R0, [R4,#0x10]
21D940:  ADD             R0, SP, #0x20+var_1C
21D942:  MOV             R1, R4
21D944:  MOV             R2, R5
21D946:  BL              sub_21D9BC
21D94A:  LDR.W           R8, [SP,#0x20+var_18]
21D94E:  MOV             R0, R8
21D950:  MOV             R1, R5
21D952:  BL              sub_217AF6
21D956:  CBNZ            R0, loc_21D962
21D958:  MOV             R0, R8
21D95A:  MOV             R1, R5
21D95C:  BL              sub_217B0A
21D960:  CBZ             R0, loc_21D978
21D962:  LDR             R6, =(unk_901C1 - 0x21D96A)
21D964:  MOVS            R1, #2; size_t
21D966:  ADD             R6, PC; unk_901C1
21D968:  MOV             R0, R6; char *
21D96A:  BLX             __strlen_chk
21D96E:  ADDS            R2, R6, R0
21D970:  MOV             R0, R5
21D972:  MOV             R1, R6
21D974:  BL              sub_216F98
21D978:  LDR.W           R0, [R8]
21D97C:  LDR             R2, [R0,#0x14]
21D97E:  MOV             R0, R8
21D980:  MOV             R1, R5
21D982:  BLX             R2
21D984:  MOVS            R0, #0
21D986:  STRB            R0, [R4,#0x10]
21D988:  LDR             R0, [SP,#0x20+var_14]
21D98A:  LDR             R1, =(__stack_chk_guard_ptr - 0x21D990)
21D98C:  ADD             R1, PC; __stack_chk_guard_ptr
21D98E:  LDR             R1, [R1]; __stack_chk_guard
21D990:  LDR             R1, [R1]
21D992:  CMP             R1, R0
21D994:  ITTT EQ
21D996:  ADDEQ           SP, SP, #0x10
21D998:  POPEQ.W         {R8}
21D99C:  POPEQ           {R4-R7,PC}
21D99E:  BLX             __stack_chk_fail
