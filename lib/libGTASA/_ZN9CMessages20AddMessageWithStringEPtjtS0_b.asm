; =========================================================
; Game Engine Function: _ZN9CMessages20AddMessageWithStringEPtjtS0_b
; Address            : 0x54CAF8 - 0x54CC50
; =========================================================

54CAF8:  PUSH            {R4-R7,LR}
54CAFA:  ADD             R7, SP, #0xC
54CAFC:  PUSH.W          {R8-R10}
54CB00:  SUB.W           SP, SP, #0x658
54CB04:  MOV             R4, R0
54CB06:  MOV             R10, R3
54CB08:  MOV             R9, R2
54CB0A:  MOV             R8, R1
54CB0C:  CBZ             R4, loc_54CB2A
54CB0E:  ADD             R1, SP, #0x670+var_658
54CB10:  MOVS            R0, #0
54CB12:  MOV             R2, R4
54CB14:  LDRH            R3, [R2]
54CB16:  CBZ             R3, loc_54CB38
54CB18:  ADDS            R0, #1
54CB1A:  STRH.W          R3, [R1],#2
54CB1E:  ADDS            R2, #2
54CB20:  UXTH            R3, R0
54CB22:  CMP.W           R3, #0x18E
54CB26:  BLS             loc_54CB14
54CB28:  B               loc_54CB38
54CB2A:  ADD             R0, SP, #0x670+var_658
54CB2C:  MOVW            R1, #0x31E
54CB30:  BLX             j___aeabi_memclr8
54CB34:  MOVW            R0, #0x18F
54CB38:  UXTH            R1, R0
54CB3A:  ADD             R0, SP, #0x670+var_658; this
54CB3C:  MOVS            R6, #0
54CB3E:  STRH.W          R6, [R0,R1,LSL#1]
54CB42:  MOV             R1, R10; unsigned __int16 *
54CB44:  BLX             j__ZN9CMessages20InsertStringInStringEPtS0_; CMessages::InsertStringInString(ushort *,ushort *)
54CB48:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CB4E)
54CB4A:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CB4C:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CB4E:  LDR.W           R1, [R0,#(dword_A00290 - 0xA00288)]!
54CB52:  CBZ             R1, loc_54CBB4
54CB54:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CB5A)
54CB56:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CB58:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CB5A:  LDR.W           R1, [R0,#(dword_A002C8 - 0xA00288)]!
54CB5E:  CBZ             R1, loc_54CBB8
54CB60:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CB66)
54CB62:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CB64:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CB66:  LDR.W           R1, [R0,#(dword_A00300 - 0xA00288)]!
54CB6A:  CBZ             R1, loc_54CBBE
54CB6C:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CB72)
54CB6E:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CB70:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CB72:  LDR.W           R1, [R0,#(dword_A00338 - 0xA00288)]!
54CB76:  CBZ             R1, loc_54CBC4
54CB78:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CB7E)
54CB7A:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CB7C:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CB7E:  LDR.W           R1, [R0,#(dword_A00370 - 0xA00288)]!
54CB82:  CBZ             R1, loc_54CBCA
54CB84:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CB8A)
54CB86:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CB88:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CB8A:  LDR.W           R1, [R0,#(dword_A003A8 - 0xA00288)]
54CB8E:  CBZ             R1, loc_54CBD0
54CB90:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CB96)
54CB92:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CB94:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CB96:  LDR.W           R1, [R0,#(dword_A003E0 - 0xA00288)]
54CB9A:  CBZ             R1, loc_54CBDA
54CB9C:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CBA2)
54CB9E:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CBA0:  LDR             R0, [R0]; CMessages::BriefMessages ...
54CBA2:  LDR.W           R1, [R0,#(dword_A00418 - 0xA00288)]
54CBA6:  CMP             R1, #0
54CBA8:  BNE             loc_54CC46
54CBAA:  ADD.W           R0, R0, #0x190
54CBAE:  MOVS            R1, #1
54CBB0:  MOVS            R6, #7
54CBB2:  B               loc_54CBE2
54CBB4:  MOVS            R1, #0
54CBB6:  B               loc_54CBE2
54CBB8:  MOVS            R6, #1
54CBBA:  MOVS            R1, #1
54CBBC:  B               loc_54CBE2
54CBBE:  MOVS            R1, #1
54CBC0:  MOVS            R6, #2
54CBC2:  B               loc_54CBE2
54CBC4:  MOVS            R1, #1
54CBC6:  MOVS            R6, #3
54CBC8:  B               loc_54CBE2
54CBCA:  MOVS            R1, #1
54CBCC:  MOVS            R6, #4
54CBCE:  B               loc_54CBE2
54CBD0:  ADD.W           R0, R0, #0x120
54CBD4:  MOVS            R1, #1
54CBD6:  MOVS            R6, #5
54CBD8:  B               loc_54CBE2
54CBDA:  ADD.W           R0, R0, #0x158
54CBDE:  MOVS            R1, #1
54CBE0:  MOVS            R6, #6
54CBE2:  LDR             R3, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CBEC)
54CBE4:  CMP             R1, #0
54CBE6:  LDR             R5, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54CBF0)
54CBE8:  ADD             R3, PC; _ZN9CMessages13BriefMessagesE_ptr
54CBEA:  STR             R4, [R0]
54CBEC:  ADD             R5, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54CBEE:  LDR             R2, [R7,#arg_0]
54CBF0:  LDR             R0, [R3]; CMessages::BriefMessages ...
54CBF2:  RSB.W           R3, R6, R6,LSL#3
54CBF6:  LDR             R6, [R5]; CTimer::m_snTimeInMilliseconds ...
54CBF8:  ADD.W           R0, R0, R3,LSL#3
54CBFC:  LDR             R3, [R6]; CTimer::m_snTimeInMilliseconds
54CBFE:  MOV.W           R6, #0xFFFFFFFF
54CC02:  STRH.W          R9, [R0,#0xC]
54CC06:  STR.W           R10, [R0,#0x30]; CMessages::PreviousBriefs ...
54CC0A:  STRB.W          R2, [R0,#0x34]
54CC0E:  STRD.W          R8, R3, [R0,#0x10]; CMessages::PreviousBriefs ...
54CC12:  STRD.W          R6, R6, [R0,#0x18]; CMessages::PreviousBriefs ...
54CC16:  STRD.W          R6, R6, [R0,#0x20]; CMessages::PreviousBriefs ...
54CC1A:  STRD.W          R6, R6, [R0,#0x28]; CMessages::PreviousBriefs ...
54CC1E:  BNE             loc_54CC46
54CC20:  CBZ             R2, loc_54CC46
54CC22:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54CC28)
54CC24:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54CC26:  LDR             R0, [R0]; this
54CC28:  ADD.W           R6, R0, #0x18
54CC2C:  LDR             R1, [R0,#(dword_A00290 - 0xA00288)]; char *
54CC2E:  LDM             R6, {R2,R3,R6}; int
54CC30:  LDRD.W          R5, R4, [R0,#(dword_A002AC - 0xA00288)]
54CC34:  LDRD.W          R12, LR, [R0,#(dword_A002B4 - 0xA00288)]
54CC38:  STRD.W          R6, R5, [SP,#0x670+var_670]; int
54CC3C:  ADD             R5, SP, #0x670+var_668
54CC3E:  STM.W           R5, {R4,R12,LR}
54CC42:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
54CC46:  ADD.W           SP, SP, #0x658
54CC4A:  POP.W           {R8-R10}
54CC4E:  POP             {R4-R7,PC}
