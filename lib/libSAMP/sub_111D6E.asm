; =========================================================
; Game Engine Function: sub_111D6E
; Address            : 0x111D6E - 0x111E02
; =========================================================

111D6E:  PUSH            {R4-R7,LR}
111D70:  ADD             R7, SP, #0xC
111D72:  PUSH.W          {R11}
111D76:  SUB             SP, SP, #0x18
111D78:  MOV             R5, R1
111D7A:  MOV             R4, R0
111D7C:  LDRD.W          R1, R0, [R0,#4]
111D80:  CMP             R1, R0
111D82:  BCS             loc_111D9A
111D84:  LDRD.W          R0, R2, [R5]
111D88:  ADD.W           R3, R1, #8
111D8C:  STR             R3, [R4,#4]
111D8E:  STRD.W          R0, R2, [R1]
111D92:  MOVS            R0, #0
111D94:  STRD.W          R0, R0, [R5]
111D98:  B               loc_111DF4
111D9A:  LDR             R3, [R4]
111D9C:  SUBS            R2, R1, R3
111D9E:  MOVS            R1, #1
111DA0:  ADD.W           R1, R1, R2,ASR#3
111DA4:  CMP.W           R1, #0x20000000
111DA8:  BCS             loc_111DFC
111DAA:  SUBS            R0, R0, R3
111DAC:  MOV             R3, #0x7FFFFFF8
111DB4:  ADD             R6, SP, #0x28+var_24
111DB6:  CMP.W           R1, R0,ASR#2
111DBA:  IT LS
111DBC:  ASRLS           R1, R0, #2
111DBE:  CMP             R0, R3
111DC0:  ADD.W           R3, R4, #8
111DC4:  MOV.W           R2, R2,ASR#3
111DC8:  MOV             R0, R6
111DCA:  IT CS
111DCC:  MOVCS           R1, #0x1FFFFFFF
111DD0:  BL              sub_111F74
111DD4:  LDR             R0, [SP,#0x28+var_1C]
111DD6:  LDRD.W          R1, R2, [R5]
111DDA:  STRD.W          R1, R2, [R0],#8
111DDE:  MOVS            R1, #0
111DE0:  STRD.W          R1, R1, [R5]
111DE4:  STR             R0, [SP,#0x28+var_1C]
111DE6:  MOV             R0, R4
111DE8:  MOV             R1, R6
111DEA:  BL              sub_111FBC
111DEE:  ADD             R0, SP, #0x28+var_24
111DF0:  BL              sub_11200C
111DF4:  ADD             SP, SP, #0x18
111DF6:  POP.W           {R11}
111DFA:  POP             {R4-R7,PC}
111DFC:  MOV             R0, R4
111DFE:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
