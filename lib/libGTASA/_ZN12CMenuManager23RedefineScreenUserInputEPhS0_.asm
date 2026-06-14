; =========================================================
; Game Engine Function: _ZN12CMenuManager23RedefineScreenUserInputEPhS0_
; Address            : 0x433A5C - 0x433D30
; =========================================================

433A5C:  PUSH            {R4-R7,LR}
433A5E:  ADD             R7, SP, #0xC
433A60:  PUSH.W          {R8-R10}
433A64:  MOV             R4, R0
433A66:  MOVW            R5, #0x1ACD
433A6A:  LDRB            R0, [R4,R5]
433A6C:  MOV             R9, R2
433A6E:  MOV             R6, R1
433A70:  CBZ             R0, loc_433A78
433A72:  POP.W           {R8-R10}
433A76:  POP             {R4-R7,PC}
433A78:  LDRB.W          R0, [R4,#0x121]
433A7C:  CMP             R0, #0x27 ; '''
433A7E:  BNE             loc_433A9C
433A80:  LDRB.W          R0, [R4,#0x7B]
433A84:  CBZ             R0, loc_433A8C
433A86:  MOV.W           R8, #0x19
433A8A:  B               loc_433A9C
433A8C:  LDRB.W          R0, [R4,#0x94]
433A90:  MOV.W           R8, #0x1C
433A94:  CMP             R0, #0
433A96:  IT EQ
433A98:  MOVEQ.W         R8, #0x16
433A9C:  MOVS            R0, #0; this
433A9E:  MOV.W           R10, #0
433AA2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433AA6:  MOVS            R0, #0x35 ; '5'
433AA8:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
433AAC:  CMP             R0, #0
433AAE:  BEQ             loc_433B4A
433AB0:  MOVS            R0, #1
433AB2:  STRB.W          R10, [R4,#0x7C]
433AB6:  STRB            R0, [R6]
433AB8:  MOVS            R0, #0; this
433ABA:  MOVS            R6, #0
433ABC:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433AC0:  MOVS            R0, #0x1A
433AC2:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
433AC6:  CBZ             R0, loc_433ADA
433AC8:  LDRB.W          R0, [R4,#0x121]
433ACC:  CMP             R0, #0x27 ; '''
433ACE:  BNE             loc_433ADA
433AD0:  MOVW            R0, #0x1AD9
433AD4:  LDRB            R0, [R4,R0]
433AD6:  CMP             R0, #0
433AD8:  BEQ             loc_433B9A
433ADA:  MOVW            R0, #0x1AD9
433ADE:  STRB            R6, [R4,R0]
433AE0:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x433AE8)
433AE2:  LDR             R1, =(dword_990C0C - 0x433AEA)
433AE4:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
433AE6:  ADD             R1, PC; dword_990C0C
433AE8:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
433AEA:  LDR             R1, [R1]
433AEC:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
433AEE:  SUBS            R0, R0, R1
433AF0:  CMP             R0, #0xC9
433AF2:  BCC             loc_433B10
433AF4:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x433B02)
433AF6:  MOVW            R2, #0x1AB8
433AFA:  LDR             R1, =(dword_990C0C - 0x433B0C)
433AFC:  MOVS            R3, #0
433AFE:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
433B00:  STRB            R3, [R4,R2]
433B02:  MOVW            R2, #0x1AB4
433B06:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
433B08:  ADD             R1, PC; dword_990C0C
433B0A:  STR             R3, [R4,R2]
433B0C:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
433B0E:  STR             R0, [R1]
433B10:  MOVS            R0, #0x4F ; 'O'
433B12:  BLX             j__Z18LIB_KeyboardIsDown13OSKeyboardKey; LIB_KeyboardIsDown(OSKeyboardKey)
433B16:  CBZ             R0, loc_433B60
433B18:  MOVS            R0, #0
433B1A:  MOVW            R1, #0x1AB6
433B1E:  LDRB            R2, [R4,R1]
433B20:  STRB.W          R0, [R4,#0x7C]
433B24:  CMP             R2, #0
433B26:  BNE             loc_433BC8
433B28:  ADDS            R0, R4, R1
433B2A:  LDR             R1, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x433B34)
433B2C:  LDR             R2, =(dword_990C0C - 0x433B38)
433B2E:  MOVS            R3, #1
433B30:  ADD             R1, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
433B32:  STRB            R3, [R0]
433B34:  ADD             R2, PC; dword_990C0C
433B36:  LDR             R1, [R1]; CTimer::m_snTimeInMillisecondsPauseMode ...
433B38:  LDR             R0, [R1]; CTimer::m_snTimeInMillisecondsPauseMode
433B3A:  STR             R0, [R2]
433B3C:  LDR             R0, [R4,#0x54]
433B3E:  CBZ             R0, loc_433BBE
433B40:  CMP             R0, #1
433B42:  ITT GE
433B44:  SUBGE           R0, #1
433B46:  STRGE           R0, [R4,#0x54]
433B48:  B               loc_433BC8
433B4A:  MOVS            R0, #0; this
433B4C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433B50:  LDRH            R1, [R0,#0x20]
433B52:  CMP             R1, #0
433B54:  BEQ             loc_433AB8
433B56:  LDRH.W          R0, [R0,#0x50]
433B5A:  CMP             R0, #0
433B5C:  BNE             loc_433AB8
433B5E:  B               loc_433AB0
433B60:  MOVS            R0, #0; this
433B62:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433B66:  LDRH            R1, [R0,#0x10]; int
433B68:  CBZ             R1, loc_433B72
433B6A:  LDRH.W          R0, [R0,#0x40]
433B6E:  CMP             R0, #0
433B70:  BEQ             loc_433B18
433B72:  MOVS            R0, #0; this
433B74:  MOVS            R5, #0
433B76:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433B7A:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x433B80)
433B7C:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
433B7E:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
433B80:  LDRB            R0, [R0,#(_ZN4CPad23NewMouseControllerStateE+3 - 0x959AF4)]; CPad::NewMouseControllerState
433B82:  CBZ             R0, loc_433B92
433B84:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x433B8A)
433B86:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
433B88:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
433B8A:  LDRB            R0, [R0,#(_ZN4CPad23OldMouseControllerStateE+3 - 0x959B08)]; CPad::OldMouseControllerState
433B8C:  CBNZ            R0, loc_433B92
433B8E:  MOVS            R0, #1
433B90:  B               loc_433B1A
433B92:  MOVW            R0, #0x1AB6
433B96:  STRB            R5, [R4,R0]
433B98:  B               loc_433BC8
433B9A:  ADDS            R0, R4, R5
433B9C:  MOVW            R1, #0x1AC4
433BA0:  MOVS            R2, #0x10
433BA2:  STR             R2, [R4,R1]
433BA4:  MOVS            R1, #1
433BA6:  STRB            R1, [R0]
433BA8:  MOVW            R0, #0x1ACE
433BAC:  STRB            R1, [R4,R0]
433BAE:  MOVW            R0, #0x1ACC
433BB2:  STRB            R1, [R4,R0]
433BB4:  ADD.W           R0, R4, #0x24 ; '$'
433BB8:  STR.W           R0, [R4,#0xB8]
433BBC:  B               loc_433AE0
433BBE:  MOV.W           R0, #0xFFFFFFFF
433BC2:  UXTAB.W         R0, R0, R8
433BC6:  STR             R0, [R4,#0x54]
433BC8:  MOVS            R0, #0x50 ; 'P'
433BCA:  BLX             j__Z18LIB_KeyboardIsDown13OSKeyboardKey; LIB_KeyboardIsDown(OSKeyboardKey)
433BCE:  CBZ             R0, loc_433C06
433BD0:  MOVS            R0, #0
433BD2:  MOVW            R1, #0x1AB7
433BD6:  LDRB            R2, [R4,R1]
433BD8:  STRB.W          R0, [R4,#0x7C]
433BDC:  CBNZ            R2, loc_433C46
433BDE:  ADDS            R0, R4, R1
433BE0:  LDR             R1, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x433BEA)
433BE2:  LDR             R2, =(dword_990C0C - 0x433BEE)
433BE4:  MOVS            R3, #1
433BE6:  ADD             R1, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
433BE8:  STRB            R3, [R0]
433BEA:  ADD             R2, PC; dword_990C0C
433BEC:  LDR             R1, [R1]; CTimer::m_snTimeInMillisecondsPauseMode ...
433BEE:  LDR             R0, [R1]; CTimer::m_snTimeInMillisecondsPauseMode
433BF0:  MOV.W           R1, #0xFFFFFFFF
433BF4:  STR             R0, [R2]
433BF6:  UXTAB.W         R1, R1, R8
433BFA:  LDR             R0, [R4,#0x54]
433BFC:  CMP             R0, R1
433BFE:  BNE             loc_433C38
433C00:  MOVS            R0, #0
433C02:  STR             R0, [R4,#0x54]
433C04:  B               loc_433C46
433C06:  MOVS            R0, #0; this
433C08:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433C0C:  LDRH            R1, [R0,#0x12]; int
433C0E:  CBZ             R1, loc_433C18
433C10:  LDRH.W          R0, [R0,#0x42]
433C14:  CMP             R0, #0
433C16:  BEQ             loc_433BD0
433C18:  MOVS            R0, #0; this
433C1A:  MOVS            R5, #0
433C1C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433C20:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x433C26)
433C22:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
433C24:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
433C26:  LDRB            R0, [R0,#(word_959AF8 - 0x959AF4)]
433C28:  CBZ             R0, loc_433C40
433C2A:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x433C30)
433C2C:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
433C2E:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
433C30:  LDRB            R0, [R0,#(word_959B0C - 0x959B08)]
433C32:  CBNZ            R0, loc_433C40
433C34:  MOVS            R0, #1
433C36:  B               loc_433BD2
433C38:  ITT LT
433C3A:  ADDLT           R0, #1
433C3C:  STRLT           R0, [R4,#0x54]
433C3E:  B               loc_433C46
433C40:  MOVW            R0, #0x1AB7
433C44:  STRB            R5, [R4,R0]
433C46:  MOVS            R0, #0; this
433C48:  MOVS            R5, #0
433C4A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433C4E:  BLX             j__ZN4CPad17GetEscapeJustDownEv; CPad::GetEscapeJustDown(void)
433C52:  CBZ             R0, loc_433C60
433C54:  MOVS            R0, #1
433C56:  STRB.W          R5, [R4,#0x7C]
433C5A:  STRB.W          R0, [R9]
433C5E:  B               loc_433C72
433C60:  MOVS            R0, #0; this
433C62:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433C66:  LDRH            R1, [R0,#0x1E]; int
433C68:  CBZ             R1, loc_433C72
433C6A:  LDRH.W          R0, [R0,#0x4E]
433C6E:  CMP             R0, #0
433C70:  BEQ             loc_433C54
433C72:  MOVS            R0, #0; this
433C74:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433C78:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x433C7E)
433C7A:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
433C7C:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
433C7E:  LDRB            R0, [R0]; CPad::NewMouseControllerState
433C80:  CBZ             R0, loc_433C9C
433C82:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x433C88)
433C84:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
433C86:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
433C88:  LDRB            R0, [R0]; CPad::OldMouseControllerState
433C8A:  CBNZ            R0, loc_433C9C
433C8C:  MOVW            R0, #0x1AC4
433C90:  LDR             R0, [R4,R0]
433C92:  CMP             R0, #3
433C94:  ITT EQ
433C96:  MOVEQ           R0, #1
433C98:  STRBEQ.W        R0, [R9]
433C9C:  MOVS            R0, #0; this
433C9E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433CA2:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x433CA8)
433CA4:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
433CA6:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
433CA8:  LDRB            R0, [R0]; CPad::NewMouseControllerState
433CAA:  CBZ             R0, loc_433CDA
433CAC:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x433CB2)
433CAE:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
433CB0:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
433CB2:  LDRB            R0, [R0]; CPad::OldMouseControllerState
433CB4:  CMP             R0, #0
433CB6:  ITTT EQ
433CB8:  MOVWEQ          R0, #0x1AC4
433CBC:  LDREQ           R1, [R4,R0]
433CBE:  CMPEQ           R1, #4
433CC0:  BNE             loc_433CDA
433CC2:  ADDS            R5, R4, R0
433CC4:  LDR             R0, =(AudioEngine_ptr - 0x433CCE)
433CC6:  MOVS            R1, #1; int
433CC8:  MOVS            R2, #0; float
433CCA:  ADD             R0, PC; AudioEngine_ptr
433CCC:  MOV.W           R3, #0x3F800000; float
433CD0:  LDR             R0, [R0]; AudioEngine ; this
433CD2:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
433CD6:  MOVS            R0, #5
433CD8:  STR             R0, [R5]
433CDA:  LDRB.W          R0, [R9]
433CDE:  CMP             R0, #0
433CE0:  BEQ.W           loc_433A72
433CE4:  MOVW            R0, #0x1AAC
433CE8:  LDRB            R1, [R4,R0]
433CEA:  CBZ             R1, loc_433D22
433CEC:  ADDS            R5, R4, R0
433CEE:  LDRB.W          R0, [R4,#0x7B]
433CF2:  MOVS            R1, #0
433CF4:  MOVS            R2, #1; bool
433CF6:  CMP             R0, #0
433CF8:  MOV             R0, R4; this
433CFA:  IT EQ
433CFC:  MOVEQ           R1, #1
433CFE:  STRB.W          R1, [R4,#0x7B]
433D02:  MOVS            R1, #0x45 ; 'E'; unsigned __int16
433D04:  BLX             j__ZN12CMenuManager19DrawControllerBoundEtb; CMenuManager::DrawControllerBound(ushort,bool)
433D08:  LDRB            R0, [R5]
433D0A:  CMP             R0, #0
433D0C:  BNE.W           loc_433A72
433D10:  LDRB.W          R0, [R4,#0x7B]
433D14:  MOVS            R1, #2
433D16:  CMP             R0, #0
433D18:  MOVW            R0, #0x1AAD
433D1C:  IT EQ
433D1E:  MOVEQ           R1, #1
433D20:  B               loc_433D28
433D22:  MOVW            R0, #0x1AAD
433D26:  MOVS            R1, #3
433D28:  STRB            R1, [R4,R0]
433D2A:  POP.W           {R8-R10}
433D2E:  POP             {R4-R7,PC}
