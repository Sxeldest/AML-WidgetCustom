; =========================================================
; Game Engine Function: _ZN9CMessages15AddMessageJumpQEPKcPtjtb
; Address            : 0x54C358 - 0x54C3E6
; =========================================================

54C358:  PUSH            {R4-R7,LR}
54C35A:  ADD             R7, SP, #0xC
54C35C:  PUSH.W          {R8}
54C360:  SUB             SP, SP, #0x18
54C362:  LDR.W           R8, [R7,#arg_0]
54C366:  MOV             R4, R1
54C368:  MOV             R1, R0; char *
54C36A:  MOV             R6, R3
54C36C:  MOV             R5, R2
54C36E:  CBZ             R1, loc_54C37E
54C370:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C378)
54C372:  MOVS            R2, #8; size_t
54C374:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C376:  LDR             R0, [R0]; char *
54C378:  BLX             strncpy
54C37C:  B               loc_54C388
54C37E:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C386)
54C380:  MOVS            R1, #0
54C382:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C384:  LDR             R0, [R0]; CMessages::BriefMessages ...
54C386:  STRB            R1, [R0]; CMessages::BriefMessages
54C388:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54C394)
54C38A:  CMP.W           R8, #0
54C38E:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C396)
54C390:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54C392:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C394:  LDR             R3, [R1]; CTimer::m_snTimeInMilliseconds ...
54C396:  MOV.W           R1, #0xFFFFFFFF
54C39A:  LDR             R2, [R0]; CMessages::BriefMessages ...
54C39C:  MOV.W           R0, #0
54C3A0:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds
54C3A2:  STR             R4, [R2,#(dword_A00290 - 0xA00288)]
54C3A4:  STRB            R0, [R2,#(byte_A0028F - 0xA00288)]
54C3A6:  STRH            R6, [R2,#(word_A00294 - 0xA00288)]
54C3A8:  STR             R0, [R2,#(dword_A002B8 - 0xA00288)]
54C3AA:  STRB.W          R8, [R2,#(byte_A002BC - 0xA00288)]
54C3AE:  STRD.W          R5, R3, [R2,#(dword_A00298 - 0xA00288)]
54C3B2:  STRD.W          R1, R1, [R2,#(dword_A002A0 - 0xA00288)]
54C3B6:  STRD.W          R1, R1, [R2,#(dword_A002A8 - 0xA00288)]
54C3BA:  STRD.W          R1, R1, [R2,#(dword_A002B0 - 0xA00288)]
54C3BE:  BEQ             loc_54C3DE
54C3C0:  LDR             R2, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C3CE)
54C3C2:  MOV.W           R3, #0xFFFFFFFF; int
54C3C6:  STRD.W          R1, R1, [SP,#0x28+var_28]; int
54C3CA:  ADD             R2, PC; _ZN9CMessages13BriefMessagesE_ptr
54C3CC:  STRD.W          R1, R1, [SP,#0x28+var_20]; int
54C3D0:  STR             R0, [SP,#0x28+var_18]; int
54C3D2:  MOV             R1, R4; char *
54C3D4:  LDR             R0, [R2]; this
54C3D6:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
54C3DA:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
54C3DE:  ADD             SP, SP, #0x18
54C3E0:  POP.W           {R8}
54C3E4:  POP             {R4-R7,PC}
