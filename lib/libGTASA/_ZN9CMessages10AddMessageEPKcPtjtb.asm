; =========================================================
; Game Engine Function: _ZN9CMessages10AddMessageEPKcPtjtb
; Address            : 0x54C1DC - 0x54C328
; =========================================================

54C1DC:  PUSH            {R4-R7,LR}
54C1DE:  ADD             R7, SP, #0xC
54C1E0:  PUSH.W          {R8-R11}; unsigned __int16 *
54C1E4:  SUB             SP, SP, #0x14
54C1E6:  MOV             R10, R1
54C1E8:  MOV             R1, R0; char *
54C1EA:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C1F4)
54C1EC:  MOV             R9, R3
54C1EE:  MOV             R8, R2
54C1F0:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C1F2:  LDR             R4, [R0]; CMessages::BriefMessages ...
54C1F4:  LDR.W           R0, [R4,#(dword_A00290 - 0xA00288)]!
54C1F8:  CBZ             R0, loc_54C25C
54C1FA:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C200)
54C1FC:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C1FE:  LDR             R4, [R0]; CMessages::BriefMessages ...
54C200:  LDR.W           R0, [R4,#(dword_A002C8 - 0xA00288)]!
54C204:  CBZ             R0, loc_54C264
54C206:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C20C)
54C208:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C20A:  LDR             R4, [R0]; CMessages::BriefMessages ...
54C20C:  LDR.W           R0, [R4,#(dword_A00300 - 0xA00288)]!
54C210:  CBZ             R0, loc_54C26C
54C212:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C218)
54C214:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C216:  LDR             R4, [R0]; CMessages::BriefMessages ...
54C218:  LDR.W           R0, [R4,#(dword_A00338 - 0xA00288)]!
54C21C:  CBZ             R0, loc_54C274
54C21E:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C224)
54C220:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C222:  LDR             R4, [R0]; CMessages::BriefMessages ...
54C224:  LDR.W           R0, [R4,#(dword_A00370 - 0xA00288)]!
54C228:  CBZ             R0, loc_54C27C
54C22A:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C230)
54C22C:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C22E:  LDR             R0, [R0]; CMessages::BriefMessages ...
54C230:  LDR.W           R2, [R0,#(dword_A003A8 - 0xA00288)]
54C234:  CBZ             R2, loc_54C284
54C236:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C23C)
54C238:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C23A:  LDR             R0, [R0]; CMessages::BriefMessages ...
54C23C:  LDR.W           R2, [R0,#(dword_A003E0 - 0xA00288)]
54C240:  CBZ             R2, loc_54C290
54C242:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C248)
54C244:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C246:  LDR             R0, [R0]; CMessages::BriefMessages ...
54C248:  LDR.W           R2, [R0,#(dword_A00418 - 0xA00288)]
54C24C:  CMP             R2, #0
54C24E:  BNE             loc_54C320
54C250:  ADD.W           R4, R0, #0x190
54C254:  MOV.W           R11, #1
54C258:  MOVS            R0, #7
54C25A:  B               loc_54C29A
54C25C:  MOVS            R0, #0
54C25E:  MOV.W           R11, #0
54C262:  B               loc_54C29A
54C264:  MOVS            R0, #1
54C266:  MOV.W           R11, #1
54C26A:  B               loc_54C29A
54C26C:  MOV.W           R11, #1
54C270:  MOVS            R0, #2
54C272:  B               loc_54C29A
54C274:  MOV.W           R11, #1
54C278:  MOVS            R0, #3
54C27A:  B               loc_54C29A
54C27C:  MOV.W           R11, #1
54C280:  MOVS            R0, #4
54C282:  B               loc_54C29A
54C284:  ADD.W           R4, R0, #0x120
54C288:  MOV.W           R11, #1
54C28C:  MOVS            R0, #5
54C28E:  B               loc_54C29A
54C290:  ADD.W           R4, R0, #0x158
54C294:  MOV.W           R11, #1
54C298:  MOVS            R0, #6
54C29A:  LDR             R2, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C2A8)
54C29C:  RSB.W           R5, R0, R0,LSL#3
54C2A0:  LDR             R6, [R7,#arg_0]
54C2A2:  CMP             R1, #0
54C2A4:  ADD             R2, PC; _ZN9CMessages13BriefMessagesE_ptr
54C2A6:  LDR             R2, [R2]; CMessages::BriefMessages ...
54C2A8:  ADD.W           R0, R2, R5,LSL#3; char *
54C2AC:  BEQ             loc_54C2B6
54C2AE:  MOVS            R2, #8; size_t
54C2B0:  BLX             strncpy
54C2B4:  B               loc_54C2BA
54C2B6:  MOVS            R1, #0
54C2B8:  STRB            R1, [R0]; CMessages::PreviousBriefs ...
54C2BA:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54C2CA)
54C2BC:  CMP.W           R11, #0
54C2C0:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C2D0)
54C2C2:  MOV.W           R2, #0
54C2C6:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54C2C8:  MOV.W           R3, #0xFFFFFFFF
54C2CC:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C2CE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
54C2D0:  LDR             R0, [R0]; CMessages::BriefMessages ...
54C2D2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
54C2D4:  ADD.W           R0, R0, R5,LSL#3
54C2D8:  STRB            R2, [R0,#7]
54C2DA:  STR.W           R10, [R4]
54C2DE:  STRH.W          R9, [R0,#0xC]
54C2E2:  STR             R2, [R0,#0x30]; CMessages::PreviousBriefs ...
54C2E4:  STRB.W          R6, [R0,#0x34]
54C2E8:  STRD.W          R8, R1, [R0,#0x10]; CMessages::PreviousBriefs ...
54C2EC:  STRD.W          R3, R3, [R0,#0x18]; CMessages::PreviousBriefs ...
54C2F0:  STRD.W          R3, R3, [R0,#0x20]; CMessages::PreviousBriefs ...
54C2F4:  STRD.W          R3, R3, [R0,#0x28]; CMessages::PreviousBriefs ...
54C2F8:  BNE             loc_54C320
54C2FA:  CBZ             R6, loc_54C320
54C2FC:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54C302)
54C2FE:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54C300:  LDR             R0, [R0]; this
54C302:  ADD.W           R6, R0, #0x18
54C306:  LDR             R1, [R0,#(dword_A00290 - 0xA00288)]; char *
54C308:  LDM             R6, {R2,R3,R6}; int
54C30A:  LDRD.W          R5, R4, [R0,#(dword_A002AC - 0xA00288)]
54C30E:  LDRD.W          R12, LR, [R0,#(dword_A002B4 - 0xA00288)]
54C312:  STRD.W          R6, R5, [SP,#0x30+var_30]; int
54C316:  ADD             R5, SP, #0x30+var_28
54C318:  STM.W           R5, {R4,R12,LR}
54C31C:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
54C320:  ADD             SP, SP, #0x14
54C322:  POP.W           {R8-R11}
54C326:  POP             {R4-R7,PC}
