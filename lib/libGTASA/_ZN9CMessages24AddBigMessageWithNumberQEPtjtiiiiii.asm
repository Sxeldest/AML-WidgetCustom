; =========================================================
; Game Engine Function: _ZN9CMessages24AddBigMessageWithNumberQEPtjtiiiiii
; Address            : 0x54CA0C - 0x54CADE
; =========================================================

54CA0C:  PUSH            {R4-R7,LR}
54CA0E:  ADD             R7, SP, #0xC
54CA10:  PUSH.W          {R8-R11}
54CA14:  SUB.W           SP, SP, #0x650; int
54CA18:  SUB             SP, SP, #4
54CA1A:  MOV             R5, R2
54CA1C:  MOV             R10, R1
54CA1E:  LDRD.W          R2, R1, [R7,#arg_8]
54CA22:  MOV             R6, R0
54CA24:  LDRD.W          R9, R8, [R7,#arg_0]
54CA28:  ADD             R0, SP, #0x670+var_65C
54CA2A:  MOV             R4, R3
54CA2C:  LDR.W           R11, [R7,#arg_10]
54CA30:  STRD.W          R2, R1, [SP,#0x670+var_670]; int
54CA34:  MOV             R1, R4; unsigned __int16 *
54CA36:  STRD.W          R11, R0, [SP,#0x670+var_668]; int
54CA3A:  MOV             R0, R6; this
54CA3C:  MOV             R2, R9; int
54CA3E:  MOV             R3, R8; int
54CA40:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
54CA44:  LDR             R0, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54CA52)
54CA46:  RSB.W           R1, R5, R5,LSL#3
54CA4A:  MOV.W           R12, #0
54CA4E:  ADD             R0, PC; _ZN9CMessages11BIGMessagesE_ptr
54CA50:  LDR             R0, [R0]; CMessages::BIGMessages ...
54CA52:  ADD.W           R2, R0, R1,LSL#5
54CA56:  LDR.W           R3, [R2,#8]!
54CA5A:  CBZ             R3, loc_54CA90
54CA5C:  LDR             R2, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54CA62)
54CA5E:  ADD             R2, PC; _ZN9CMessages11BIGMessagesE_ptr
54CA60:  LDR             R2, [R2]; CMessages::BIGMessages ...
54CA62:  ADD.W           R2, R2, R1,LSL#5
54CA66:  LDR.W           R3, [R2,#0x40]!
54CA6A:  CBZ             R3, loc_54CA94
54CA6C:  LDR             R0, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54CA72)
54CA6E:  ADD             R0, PC; _ZN9CMessages11BIGMessagesE_ptr
54CA70:  LDR             R0, [R0]; CMessages::BIGMessages ...
54CA72:  ADD.W           R2, R0, R1,LSL#5
54CA76:  LDR.W           R0, [R2,#0x78]!
54CA7A:  CBZ             R0, loc_54CA98
54CA7C:  LDR             R0, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54CA82)
54CA7E:  ADD             R0, PC; _ZN9CMessages11BIGMessagesE_ptr
54CA80:  LDR             R0, [R0]; CMessages::BIGMessages ...
54CA82:  ADD.W           R2, R0, R1,LSL#5
54CA86:  LDR.W           R0, [R2,#0xB0]!
54CA8A:  CBNZ            R0, loc_54CAD2
54CA8C:  MOVS            R3, #3
54CA8E:  B               loc_54CA9A
54CA90:  MOVS            R3, #0
54CA92:  B               loc_54CA9A
54CA94:  MOVS            R3, #1
54CA96:  B               loc_54CA9A
54CA98:  MOVS            R3, #2
54CA9A:  LDR             R5, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54CAA2)
54CA9C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54CAA6)
54CA9E:  ADD             R5, PC; _ZN9CMessages11BIGMessagesE_ptr
54CAA0:  STR             R6, [R2]
54CAA2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54CAA4:  LDR             R2, [R5]; CMessages::BIGMessages ...
54CAA6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
54CAA8:  ADD.W           R1, R2, R1,LSL#5
54CAAC:  RSB.W           R2, R3, R3,LSL#3
54CAB0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
54CAB2:  ADD.W           R1, R1, R2,LSL#3
54CAB6:  STRH.W          R12, [R1,#0xC]
54CABA:  STRD.W          R10, R0, [R1,#0x10]
54CABE:  LDR             R0, [R7,#arg_8]
54CAC0:  STRD.W          R4, R9, [R1,#0x18]
54CAC4:  STR.W           R8, [R1,#0x20]
54CAC8:  STR             R0, [R1,#0x24]
54CACA:  ADDS            R1, #0x28 ; '('
54CACC:  LDR             R0, [R7,#arg_C]
54CACE:  STM.W           R1, {R0,R11,R12}
54CAD2:  ADD.W           SP, SP, #0x650
54CAD6:  ADD             SP, SP, #4
54CAD8:  POP.W           {R8-R11}
54CADC:  POP             {R4-R7,PC}
