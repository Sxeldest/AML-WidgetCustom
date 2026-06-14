; =========================================================
; Game Engine Function: sub_13CCEC
; Address            : 0x13CCEC - 0x13CD7C
; =========================================================

13CCEC:  PUSH            {R4-R7,LR}
13CCEE:  ADD             R7, SP, #0xC
13CCF0:  PUSH.W          {R11}
13CCF4:  SUB             SP, SP, #0x18
13CCF6:  MOV             R4, R0
13CCF8:  MOV             R5, R1
13CCFA:  LDR             R0, [R0]
13CCFC:  LDR             R1, [R4,#4]
13CCFE:  SUBS            R2, R1, R0
13CD00:  MOVS            R1, #1
13CD02:  ADD.W           R1, R1, R2,ASR#3
13CD06:  CMP.W           R1, #0x20000000
13CD0A:  BCS             loc_13CD76
13CD0C:  MOV             R3, R4
13CD0E:  ASRS            R2, R2, #3
13CD10:  LDR.W           R6, [R3,#8]!
13CD14:  SUBS            R0, R6, R0
13CD16:  MOV             R6, #0x7FFFFFF8
13CD1E:  CMP.W           R1, R0,ASR#2
13CD22:  IT LS
13CD24:  ASRLS           R1, R0, #2
13CD26:  CMP             R0, R6
13CD28:  ADD             R6, SP, #0x28+var_24
13CD2A:  IT CS
13CD2C:  MOVCS           R1, #0x1FFFFFFF
13CD30:  MOV             R0, R6
13CD32:  BL              sub_13CD88
13CD36:  LDR             R0, [SP,#0x28+var_1C]
13CD38:  LDRD.W          R1, R2, [R5]
13CD3C:  STRD.W          R1, R2, [R0]
13CD40:  LDR             R0, [SP,#0x28+var_1C]
13CD42:  ADDS            R0, #8
13CD44:  STR             R0, [SP,#0x28+var_1C]
13CD46:  MOV             R0, R4
13CD48:  MOV             R1, R6
13CD4A:  BL              sub_13CDD0
13CD4E:  LDRD.W          R1, R0, [SP,#0x28+var_20]
13CD52:  CMP             R0, R1
13CD54:  ITTTT NE
13CD56:  SUBNE           R1, R0, R1
13CD58:  SUBNE           R1, #8
13CD5A:  MVNNE.W         R1, R1,LSR#3
13CD5E:  ADDNE.W         R0, R0, R1,LSL#3
13CD62:  IT NE
13CD64:  STRNE           R0, [SP,#0x28+var_1C]
13CD66:  LDR             R0, [SP,#0x28+var_24]; void *
13CD68:  CBZ             R0, loc_13CD6E
13CD6A:  BLX             j__ZdlPv; operator delete(void *)
13CD6E:  ADD             SP, SP, #0x18
13CD70:  POP.W           {R11}
13CD74:  POP             {R4-R7,PC}
13CD76:  MOV             R0, R4
13CD78:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
