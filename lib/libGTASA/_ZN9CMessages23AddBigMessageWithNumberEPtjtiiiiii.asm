; =========================================================
; Game Engine Function: _ZN9CMessages23AddBigMessageWithNumberEPtjtiiiiii
; Address            : 0x54C98C - 0x54CA04
; =========================================================

54C98C:  PUSH            {R4-R7,LR}
54C98E:  ADD             R7, SP, #0xC
54C990:  PUSH.W          {R8-R11}
54C994:  SUB.W           SP, SP, #0x650; int
54C998:  SUB             SP, SP, #4
54C99A:  MOV             R5, R2
54C99C:  MOV             R8, R1
54C99E:  LDRD.W          R2, R1, [R7,#arg_8]
54C9A2:  MOV             R6, R0
54C9A4:  LDRD.W          R9, R10, [R7,#arg_0]
54C9A8:  ADD             R0, SP, #0x670+var_65C
54C9AA:  MOV             R4, R3
54C9AC:  LDR.W           R11, [R7,#arg_10]
54C9B0:  STRD.W          R2, R1, [SP,#0x670+var_670]; int
54C9B4:  MOV             R1, R4; unsigned __int16 *
54C9B6:  STRD.W          R11, R0, [SP,#0x670+var_668]; int
54C9BA:  MOV             R0, R6; this
54C9BC:  MOV             R2, R9; int
54C9BE:  MOV             R3, R10; int
54C9C0:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
54C9C4:  LDR             R1, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54C9D0)
54C9C6:  RSB.W           R0, R5, R5,LSL#3
54C9CA:  MOVS            R2, #0
54C9CC:  ADD             R1, PC; _ZN9CMessages11BIGMessagesE_ptr
54C9CE:  LDR             R1, [R1]; CMessages::BIGMessages ...
54C9D0:  ADD.W           R0, R1, R0,LSL#5
54C9D4:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54C9DE)
54C9D6:  ADD.W           R3, R0, #0x14
54C9DA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54C9DC:  STR             R6, [R0,#8]
54C9DE:  STR.W           R8, [R0,#0x10]
54C9E2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
54C9E4:  STRH            R2, [R0,#0xC]
54C9E6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
54C9E8:  STM.W           R3, {R1,R4,R9,R10}
54C9EC:  LDR             R1, [R7,#arg_8]
54C9EE:  STR             R1, [R0,#0x24]
54C9F0:  LDR             R1, [R7,#arg_C]
54C9F2:  STRD.W          R1, R11, [R0,#0x28]
54C9F6:  STR             R2, [R0,#0x30]
54C9F8:  ADD.W           SP, SP, #0x650
54C9FC:  ADD             SP, SP, #4
54C9FE:  POP.W           {R8-R11}
54CA02:  POP             {R4-R7,PC}
