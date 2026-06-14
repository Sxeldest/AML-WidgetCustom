; =========================================================
; Game Engine Function: _ZN4CPed13ClearLookFlagEv
; Address            : 0x4A1010 - 0x4A108E
; =========================================================

4A1010:  PUSH            {R4-R7,LR}
4A1012:  ADD             R7, SP, #0xC
4A1014:  PUSH.W          {R8,R9,R11}
4A1018:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4A102A)
4A101A:  ADD.W           LR, R0, #0x488
4A101E:  LDR.W           R5, [R0,#0x484]
4A1022:  ADDW            R3, R0, #0x484
4A1026:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4A1028:  MOV.W           R8, #2
4A102C:  LDR             R2, [R1]; CTimer::m_snTimeInMilliseconds ...
4A102E:  LDM.W           LR, {R1,R12,LR}
4A1032:  LDR.W           R9, [R2]; CTimer::m_snTimeInMilliseconds
4A1036:  MOV             R4, R5
4A1038:  LSLS            R5, R4, #0x1D
4A103A:  BPL             loc_4A1088
4A103C:  BIC.W           R1, R1, #0x800
4A1040:  MOV             R5, R4
4A1042:  BFI.W           R5, R8, #2, #2
4A1046:  STRD.W          R5, R1, [R3]
4A104A:  STRD.W          R12, LR, [R3,#8]
4A104E:  LDR.W           R6, [R0,#0x44C]
4A1052:  ORR.W           R2, R6, #8
4A1056:  CMP             R2, #0x3A ; ':'
4A1058:  BEQ             loc_4A106A
4A105A:  LSLS            R2, R4, #5
4A105C:  ITTT PL
4A105E:  LDRPL.W         R2, [R0,#0x534]
4A1062:  BICPL.W         R2, R2, #2
4A1066:  STRPL.W         R2, [R0,#0x534]
4A106A:  LDR.W           R2, [R0,#0x59C]
4A106E:  CMP             R2, #2
4A1070:  MOV.W           R2, #0xFA0
4A1074:  IT CC
4A1076:  MOVCC.W         R2, #0x7D0
4A107A:  ADD             R2, R9
4A107C:  STR.W           R2, [R0,#0x750]
4A1080:  BIC.W           R2, R6, #1
4A1084:  CMP             R2, #2
4A1086:  BEQ             loc_4A1036
4A1088:  POP.W           {R8,R9,R11}
4A108C:  POP             {R4-R7,PC}
