; =========================================================
; Game Engine Function: _ZN12CMenuManager26JumpToGenericMessageScreenEaPKcS1_
; Address            : 0x43192C - 0x431998
; =========================================================

43192C:  PUSH            {R4-R7,LR}
43192E:  ADD             R7, SP, #0xC
431930:  PUSH.W          {R8,R9,R11}
431934:  MOV             R8, R3
431936:  MOV             R9, R2
431938:  MOV             R4, R1
43193A:  MOV             R6, R0
43193C:  BLX             j__ZN12CMenuManager17SwitchToNewScreenEa; CMenuManager::SwitchToNewScreen(signed char)
431940:  CMP             R4, #0x14
431942:  BEQ             loc_43194C
431944:  CMP             R4, #0x15
431946:  BNE             loc_431962
431948:  MOVS            R0, #0x10
43194A:  B               loc_43194E
43194C:  MOVS            R0, #1
43194E:  LDR             R1, =(aScreens_ptr - 0x43195A)
431950:  MOVS            R3, #0xE2
431952:  LDRSB.W         R2, [R6,#0x121]
431956:  ADD             R1, PC; aScreens_ptr
431958:  LDR             R1, [R1]; "FEP_STA" ...
43195A:  SMLABB.W        R1, R2, R3, R1
43195E:  STRB.W          R0, [R1,#0x26]
431962:  LDR             R0, =(aScreens_ptr - 0x431970)
431964:  ADDW            R4, R6, #0x121
431968:  MOVS            R5, #0xE2
43196A:  MOVS            R2, #8; size_t
43196C:  ADD             R0, PC; aScreens_ptr
43196E:  LDRSB.W         R1, [R4]
431972:  LDR             R6, [R0]; "FEP_STA" ...
431974:  SMLABB.W        R0, R1, R5, R6; char *
431978:  MOV             R1, R9; char *
43197A:  BLX             strncpy
43197E:  LDRSB.W         R0, [R4]
431982:  MOV             R1, R8; char *
431984:  MOVS            R2, #8; size_t
431986:  SMLABB.W        R0, R0, R5, R6
43198A:  ADDS            R0, #0xB; char *
43198C:  POP.W           {R8,R9,R11}
431990:  POP.W           {R4-R7,LR}
431994:  B.W             sub_19F770
