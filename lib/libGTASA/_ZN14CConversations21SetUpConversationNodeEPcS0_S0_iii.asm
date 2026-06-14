; =========================================================
; Game Engine Function: _ZN14CConversations21SetUpConversationNodeEPcS0_S0_iii
; Address            : 0x3012A0 - 0x301356
; =========================================================

3012A0:  PUSH            {R4-R7,LR}
3012A2:  ADD             R7, SP, #0xC
3012A4:  PUSH.W          {R8-R10}
3012A8:  MOV             R10, R1
3012AA:  MOV             R1, R0; char *
3012AC:  LDR             R0, =(_ZN14CConversations31m_SettingUpConversationNumNodesE_ptr - 0x3012B8)
3012AE:  MOV             R8, R2
3012B0:  MOVS            R6, #0x2C ; ','
3012B2:  MOV             R9, R3
3012B4:  ADD             R0, PC; _ZN14CConversations31m_SettingUpConversationNumNodesE_ptr
3012B6:  LDR             R4, [R0]; CConversations::m_SettingUpConversationNumNodes ...
3012B8:  LDR             R0, =(_ZN14CConversations12m_aTempNodesE_ptr - 0x3012C0)
3012BA:  LDR             R2, [R4]; CConversations::m_SettingUpConversationNumNodes
3012BC:  ADD             R0, PC; _ZN14CConversations12m_aTempNodesE_ptr
3012BE:  LDR             R5, [R0]; CConversations::m_aTempNodes ...
3012C0:  MLA.W           R0, R2, R6, R5; char *
3012C4:  MOVS            R2, #6; size_t
3012C6:  BLX             strncpy
3012CA:  LDR             R0, [R4]; CConversations::m_SettingUpConversationNumNodes
3012CC:  MLA.W           R0, R0, R6, R5; char *
3012D0:  BLX             j__Z13MakeUpperCasePc; MakeUpperCase(char *)
3012D4:  LDR             R0, [R4]; CConversations::m_SettingUpConversationNumNodes
3012D6:  CMP.W           R10, #0
3012DA:  LDRD.W          R1, R2, [R7,#arg_0]
3012DE:  MLA.W           R0, R0, R6, R5
3012E2:  STRD.W          R9, R1, [R0,#0x20]
3012E6:  STR             R2, [R0,#0x28]
3012E8:  ADD.W           R0, R0, #8; char *
3012EC:  BEQ             loc_3012F8
3012EE:  MOV             R1, R10; char *
3012F0:  MOVS            R2, #6; size_t
3012F2:  BLX             strncpy
3012F6:  B               loc_301300
3012F8:  MOVS            R1, #0
3012FA:  STRB            R1, [R0]
3012FC:  BLX             j__Z13MakeUpperCasePc; MakeUpperCase(char *)
301300:  LDR             R0, =(_ZN14CConversations31m_SettingUpConversationNumNodesE_ptr - 0x30130E)
301302:  MOVS            R5, #0x2C ; ','
301304:  LDR             R2, =(_ZN14CConversations12m_aTempNodesE_ptr - 0x301310)
301306:  CMP.W           R8, #0
30130A:  ADD             R0, PC; _ZN14CConversations31m_SettingUpConversationNumNodesE_ptr
30130C:  ADD             R2, PC; _ZN14CConversations12m_aTempNodesE_ptr
30130E:  LDR             R0, [R0]; CConversations::m_SettingUpConversationNumNodes ...
301310:  LDR             R1, [R0]; CConversations::m_SettingUpConversationNumNodes
301312:  LDR             R0, [R2]; CConversations::m_aTempNodes ...
301314:  MLA.W           R0, R1, R5, R0
301318:  ADD.W           R0, R0, #0x10; char *
30131C:  BEQ             loc_301342
30131E:  MOV             R1, R8; char *
301320:  MOVS            R2, #6; size_t
301322:  BLX             strncpy
301326:  LDR             R0, =(_ZN14CConversations31m_SettingUpConversationNumNodesE_ptr - 0x30132C)
301328:  ADD             R0, PC; _ZN14CConversations31m_SettingUpConversationNumNodesE_ptr
30132A:  LDR             R4, [R0]; CConversations::m_SettingUpConversationNumNodes ...
30132C:  LDR             R0, =(_ZN14CConversations12m_aTempNodesE_ptr - 0x301332)
30132E:  ADD             R0, PC; _ZN14CConversations12m_aTempNodesE_ptr
301330:  LDR             R1, [R4]; CConversations::m_SettingUpConversationNumNodes
301332:  LDR             R0, [R0]; CConversations::m_aTempNodes ...
301334:  MLA.W           R0, R1, R5, R0
301338:  ADDS            R0, #0x10; char *
30133A:  BLX             j__Z13MakeUpperCasePc; MakeUpperCase(char *)
30133E:  LDR             R1, [R4]; CConversations::m_SettingUpConversationNumNodes
301340:  B               loc_301346
301342:  MOVS            R2, #0
301344:  STRB            R2, [R0]
301346:  LDR             R0, =(_ZN14CConversations31m_SettingUpConversationNumNodesE_ptr - 0x30134E)
301348:  ADDS            R1, #1
30134A:  ADD             R0, PC; _ZN14CConversations31m_SettingUpConversationNumNodesE_ptr
30134C:  LDR             R0, [R0]; CConversations::m_SettingUpConversationNumNodes ...
30134E:  STR             R1, [R0]; CConversations::m_SettingUpConversationNumNodes
301350:  POP.W           {R8-R10}
301354:  POP             {R4-R7,PC}
