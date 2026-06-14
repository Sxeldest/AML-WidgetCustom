; =========================================================
; Game Engine Function: _ZN9CMessages25AddMessageJumpQWithNumberEPtjtiiiiiib
; Address            : 0x54C8E8 - 0x54C980
; =========================================================

54C8E8:  PUSH            {R4-R7,LR}
54C8EA:  ADD             R7, SP, #0xC
54C8EC:  PUSH.W          {R8-R11}
54C8F0:  SUB.W           SP, SP, #0x650; int
54C8F4:  SUB             SP, SP, #4
54C8F6:  MOV             R6, R2
54C8F8:  MOV             R10, R1
54C8FA:  LDRD.W          R2, R1, [R7,#arg_8]
54C8FE:  MOV             R5, R0
54C900:  LDRD.W          R11, R9, [R7,#arg_0]
54C904:  ADD             R0, SP, #0x670+var_65C
54C906:  MOV             R4, R3
54C908:  LDR.W           R8, [R7,#arg_10]
54C90C:  STRD.W          R2, R1, [SP,#0x670+var_670]; int
54C910:  MOV             R1, R4; unsigned __int16 *
54C912:  STRD.W          R8, R0, [SP,#0x670+var_668]; int
54C916:  MOV             R0, R5; this
54C918:  MOV             R2, R11; int
54C91A:  MOV             R3, R9; int
54C91C:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
54C920:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C92A)
54C922:  LDRD.W          LR, R12, [R7,#arg_8]
54C926:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C928:  LDR             R1, [R0]; CMessages::BriefMessages ...
54C92A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54C930)
54C92C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54C92E:  STRH            R6, [R1,#(word_A00294 - 0xA00288)]
54C930:  LDR             R6, [R7,#arg_14]
54C932:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
54C934:  CMP             R6, #0
54C936:  STR             R5, [R1,#(dword_A00290 - 0xA00288)]
54C938:  STR.W           R10, [R1,#(dword_A00298 - 0xA00288)]
54C93C:  LDR             R2, [R0]; CTimer::m_snTimeInMilliseconds
54C93E:  MOV.W           R0, #0
54C942:  STR             R4, [R1,#(dword_A002A0 - 0xA00288)]
54C944:  STR             R0, [R1,#(dword_A002B8 - 0xA00288)]
54C946:  STRD.W          R11, R9, [R1,#(dword_A002A4 - 0xA00288)]
54C94A:  STRD.W          LR, R12, [R1,#(dword_A002AC - 0xA00288)]
54C94E:  STR.W           R8, [R1,#(dword_A002B4 - 0xA00288)]
54C952:  STRB.W          R6, [R1,#(byte_A002BC - 0xA00288)]
54C956:  STR             R2, [R1,#(dword_A0029C - 0xA00288)]
54C958:  BEQ             loc_54C974
54C95A:  LDR             R1, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C968)
54C95C:  MOV             R2, R4; unsigned __int16 *
54C95E:  STRD.W          R9, LR, [SP,#0x670+var_670]; int
54C962:  MOV             R3, R11; int
54C964:  ADD             R1, PC; _ZN9CMessages13BriefMessagesE_ptr
54C966:  STRD.W          R12, R8, [SP,#0x670+var_668]; int
54C96A:  STR             R0, [SP,#0x670+var_660]; int
54C96C:  LDR             R0, [R1]; this
54C96E:  MOV             R1, R5; char *
54C970:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
54C974:  ADD.W           SP, SP, #0x650
54C978:  ADD             SP, SP, #4
54C97A:  POP.W           {R8-R11}
54C97E:  POP             {R4-R7,PC}
