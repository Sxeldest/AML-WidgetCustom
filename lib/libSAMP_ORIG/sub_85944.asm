; =========================================================
; Game Engine Function: sub_85944
; Address            : 0x85944 - 0x859AE
; =========================================================

85944:  PUSH            {R4,R5,R7,LR}
85946:  ADD             R7, SP, #8
85948:  SUB             SP, SP, #0x18
8594A:  MOV             R4, R0
8594C:  LDR             R0, =(__stack_chk_guard_ptr - 0x85956)
8594E:  MOV             R12, R1
85950:  MOVS            R1, #0
85952:  ADD             R0, PC; __stack_chk_guard_ptr
85954:  LDR             R0, [R0]; __stack_chk_guard
85956:  LDR             R0, [R0]
85958:  STR             R0, [SP,#0x20+var_C]
8595A:  VLDR            D16, [R2]
8595E:  LDR             R0, [R2,#8]
85960:  STRD.W          R1, R1, [R2]
85964:  STR             R1, [R2,#8]
85966:  MOVS            R1, #4; int
85968:  STR             R3, [SP,#0x20+var_20]; float
8596A:  ADD             R3, SP, #0x20+var_18; int
8596C:  STR             R0, [SP,#0x20+var_10]
8596E:  MOV             R0, R4; int
85970:  MOV             R2, R12; int
85972:  VSTR            D16, [SP,#0x20+var_18]
85976:  BL              sub_7E210
8597A:  LDRB.W          R0, [SP,#0x20+var_18]
8597E:  LDR             R5, [R7,#arg_0]
85980:  LSLS            R0, R0, #0x1F
85982:  ITT NE
85984:  LDRNE           R0, [SP,#0x20+var_10]; void *
85986:  BLXNE           j__ZdlPv; operator delete(void *)
8598A:  LDR             R0, =(_ZTV14StreamAtPlayer - 0x85994); `vtable for'StreamAtPlayer ...
8598C:  STRH.W          R5, [R4,#0x5C]
85990:  ADD             R0, PC; `vtable for'StreamAtPlayer
85992:  ADDS            R0, #8
85994:  STR             R0, [R4]
85996:  LDR             R0, [SP,#0x20+var_C]
85998:  LDR             R1, =(__stack_chk_guard_ptr - 0x8599E)
8599A:  ADD             R1, PC; __stack_chk_guard_ptr
8599C:  LDR             R1, [R1]; __stack_chk_guard
8599E:  LDR             R1, [R1]
859A0:  CMP             R1, R0
859A2:  ITTT EQ
859A4:  MOVEQ           R0, R4
859A6:  ADDEQ           SP, SP, #0x18
859A8:  POPEQ           {R4,R5,R7,PC}
859AA:  BLX             __stack_chk_fail
