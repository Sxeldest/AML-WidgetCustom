; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity17SetUpConversationEv
; Address            : 0x39C0FC - 0x39C29A
; =========================================================

39C0FC:  PUSH            {R4,R6,R7,LR}
39C0FE:  ADD             R7, SP, #8
39C100:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr - 0x39C10C)
39C102:  MOVS            R3, #0
39C104:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity14s_ConversationE_ptr - 0x39C110)
39C106:  MOVS            R4, #0xA6
39C108:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr
39C10A:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr - 0x39C114)
39C10C:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity14s_ConversationE_ptr
39C10E:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPed2 ...
39C110:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr
39C112:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_Conversation ...
39C114:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPed1 ...
39C116:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPed2
39C118:  STR             R3, [R1,#(dword_944EB6 - 0x944EAE)]
39C11A:  STR             R3, [R1,#(dword_944EB2 - 0x944EAE)]
39C11C:  STR             R3, [R1,#(dword_944EBA - 0x944EAE)]
39C11E:  MOVS            R3, #0xA6
39C120:  LDR.W           R0, [R0,#0x59C]
39C124:  LDR             R2, [R2]; int
39C126:  CMP             R0, #5
39C128:  IT EQ
39C12A:  MOVEQ           R4, #0xA5
39C12C:  CMP             R0, #0x16
39C12E:  IT EQ
39C130:  MOVEQ           R4, #0xA5
39C132:  STRH            R4, [R1]; CAEPedSpeechAudioEntity::s_Conversation
39C134:  MOVS            R4, #1
39C136:  LDR.W           R0, [R2,#0x59C]
39C13A:  CMP             R0, #5
39C13C:  IT EQ
39C13E:  MOVEQ           R3, #0xA5
39C140:  CMP             R0, #0x16
39C142:  IT EQ
39C144:  MOVEQ           R3, #0xA5
39C146:  MOVS            R0, #(stderr+1); this
39C148:  STRH            R3, [R1,#(_ZN23CAEPedSpeechAudioEntity14s_ConversationE+2 - 0x944EAE)]; CAEPedSpeechAudioEntity::s_Conversation
39C14A:  MOVS            R1, #0xA; int
39C14C:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39C150:  SXTH            R0, R0
39C152:  CMP             R0, #0xA
39C154:  BHI             locret_39C1DA
39C156:  LSL.W           R1, R4, R0
39C15A:  TST.W           R1, #0x1E
39C15E:  BNE             loc_39C1DC
39C160:  MOVS            R1, #1
39C162:  LSL.W           R0, R1, R0
39C166:  TST.W           R0, #0x1E0
39C16A:  BEQ             loc_39C264
39C16C:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity20s_ConversationLengthE_ptr - 0x39C174)
39C16E:  MOVS            R1, #2
39C170:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity20s_ConversationLengthE_ptr
39C172:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_ConversationLength ...
39C174:  STRH            R1, [R0]; CAEPedSpeechAudioEntity::s_ConversationLength
39C176:  MOVS            R0, #0; this
39C178:  MOVS            R1, #1; int
39C17A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39C17E:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity14s_ConversationE_ptr - 0x39C186)
39C180:  MOVS            R1, #2; int
39C182:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity14s_ConversationE_ptr
39C184:  LDR             R4, [R0]; CAEPedSpeechAudioEntity::s_Conversation ...
39C186:  MOVS            R0, #0xA9
39C188:  STRH            R0, [R4,#(dword_944EB2 - 0x944EAE)]
39C18A:  MOVS            R0, #0; this
39C18C:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39C190:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr - 0x39C19C)
39C192:  UXTH            R0, R0
39C194:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr - 0x39C1A0)
39C196:  MOVS            R3, #0xA3
39C198:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr
39C19A:  CMP             R0, #1
39C19C:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr
39C19E:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_pConversationPed2 ...
39C1A0:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPed1 ...
39C1A2:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_pConversationPed2
39C1A4:  IT EQ
39C1A6:  MOVEQ           R3, #0xA1
39C1A8:  CMP             R0, #0
39C1AA:  IT EQ
39C1AC:  MOVEQ           R3, #0xA2
39C1AE:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPed1
39C1B0:  STRH            R3, [R4,#(dword_944EB2+2 - 0x944EAE)]
39C1B2:  MOVS            R3, #0xA8
39C1B4:  LDR.W           R0, [R1,#0x59C]
39C1B8:  MOVS            R1, #0xA8
39C1BA:  CMP             R0, #5
39C1BC:  IT EQ
39C1BE:  MOVEQ           R3, #0xA7
39C1C0:  CMP             R0, #0x16
39C1C2:  IT EQ
39C1C4:  MOVEQ           R3, #0xA7
39C1C6:  STRH            R3, [R4,#(dword_944EB6 - 0x944EAE)]
39C1C8:  LDR.W           R0, [R2,#0x59C]
39C1CC:  CMP             R0, #5
39C1CE:  IT EQ
39C1D0:  MOVEQ           R1, #0xA7
39C1D2:  CMP             R0, #0x16
39C1D4:  IT EQ
39C1D6:  MOVEQ           R1, #0xA7
39C1D8:  STRH            R1, [R4,#(dword_944EB6+2 - 0x944EAE)]
39C1DA:  POP             {R4,R6,R7,PC}
39C1DC:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity20s_ConversationLengthE_ptr - 0x39C1E4)
39C1DE:  MOVS            R1, #3
39C1E0:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity20s_ConversationLengthE_ptr
39C1E2:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_ConversationLength ...
39C1E4:  STRH            R1, [R0]; CAEPedSpeechAudioEntity::s_ConversationLength
39C1E6:  MOVS            R0, #0; this
39C1E8:  MOVS            R1, #1; int
39C1EA:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39C1EE:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity14s_ConversationE_ptr - 0x39C1FC)
39C1F0:  UXTH            R0, R0
39C1F2:  CMP             R0, #0
39C1F4:  MOV.W           R0, #0xAA
39C1F8:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity14s_ConversationE_ptr
39C1FA:  LDR             R4, [R1]; CAEPedSpeechAudioEntity::s_Conversation ...
39C1FC:  MOV.W           R1, #0xA1
39C200:  IT NE
39C202:  MOVNE           R1, #0xA2
39C204:  STRH            R1, [R4,#(dword_944EB2+2 - 0x944EAE)]
39C206:  IT NE
39C208:  MOVNE           R0, #0xAB
39C20A:  STRH            R0, [R4,#(dword_944EB2 - 0x944EAE)]
39C20C:  MOVS            R0, #0xA9
39C20E:  STRH            R0, [R4,#(dword_944EB6 - 0x944EAE)]
39C210:  MOVS            R0, #0; this
39C212:  MOVS            R1, #2; int
39C214:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39C218:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr - 0x39C224)
39C21A:  UXTH            R0, R0
39C21C:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr - 0x39C228)
39C21E:  MOVS            R3, #0xA3
39C220:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr
39C222:  CMP             R0, #1
39C224:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr
39C226:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_pConversationPed2 ...
39C228:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPed1 ...
39C22A:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_pConversationPed2
39C22C:  IT EQ
39C22E:  MOVEQ           R3, #0xA1
39C230:  CMP             R0, #0
39C232:  IT EQ
39C234:  MOVEQ           R3, #0xA2
39C236:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPed1
39C238:  STRH            R3, [R4,#(dword_944EB6+2 - 0x944EAE)]
39C23A:  MOVS            R3, #0xA8
39C23C:  LDR.W           R0, [R1,#0x59C]
39C240:  MOVS            R1, #0xA8
39C242:  CMP             R0, #5
39C244:  IT EQ
39C246:  MOVEQ           R3, #0xA7
39C248:  CMP             R0, #0x16
39C24A:  IT EQ
39C24C:  MOVEQ           R3, #0xA7
39C24E:  STRH            R3, [R4,#(dword_944EBA - 0x944EAE)]
39C250:  LDR.W           R0, [R2,#0x59C]
39C254:  CMP             R0, #5
39C256:  IT EQ
39C258:  MOVEQ           R1, #0xA7
39C25A:  CMP             R0, #0x16
39C25C:  IT EQ
39C25E:  MOVEQ           R1, #0xA7
39C260:  STRH            R1, [R4,#(dword_944EBA+2 - 0x944EAE)]
39C262:  POP             {R4,R6,R7,PC}
39C264:  TST.W           R0, #0x600
39C268:  IT EQ
39C26A:  POPEQ           {R4,R6,R7,PC}
39C26C:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity20s_ConversationLengthE_ptr - 0x39C274)
39C26E:  MOVS            R1, #1
39C270:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity20s_ConversationLengthE_ptr
39C272:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_ConversationLength ...
39C274:  STRH            R1, [R0]; CAEPedSpeechAudioEntity::s_ConversationLength
39C276:  MOVS            R0, #0; this
39C278:  MOVS            R1, #1; int
39C27A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39C27E:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity14s_ConversationE_ptr - 0x39C28E)
39C280:  MOVW            R3, #0xFFFF
39C284:  TST             R0, R3
39C286:  MOV.W           R2, #0xAA
39C28A:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity14s_ConversationE_ptr
39C28C:  IT NE
39C28E:  MOVNE           R2, #0xAB
39C290:  MOVS            R0, #0xA4
39C292:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_Conversation ...
39C294:  STRH            R2, [R1,#(dword_944EB2 - 0x944EAE)]
39C296:  STRH            R0, [R1,#(dword_944EB2+2 - 0x944EAE)]
39C298:  POP             {R4,R6,R7,PC}
