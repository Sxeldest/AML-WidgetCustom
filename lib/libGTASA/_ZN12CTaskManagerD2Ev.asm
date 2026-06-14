; =========================================================
; Game Engine Function: _ZN12CTaskManagerD2Ev
; Address            : 0x53385A - 0x53390A
; =========================================================

53385A:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskManager::~CTaskManager()'
53385C:  ADD             R7, SP, #8
53385E:  MOV             R4, R0
533860:  LDR             R0, [R4]
533862:  CMP             R0, #0
533864:  ITTT NE
533866:  LDRNE           R1, [R0]
533868:  LDRNE           R1, [R1,#4]
53386A:  BLXNE           R1
53386C:  LDR             R0, [R4,#4]
53386E:  MOVS            R5, #0
533870:  STR             R5, [R4]
533872:  CMP             R0, #0
533874:  ITTT NE
533876:  LDRNE           R1, [R0]
533878:  LDRNE           R1, [R1,#4]
53387A:  BLXNE           R1
53387C:  LDR             R0, [R4,#8]
53387E:  STR             R5, [R4,#4]
533880:  CMP             R0, #0
533882:  ITTT NE
533884:  LDRNE           R1, [R0]
533886:  LDRNE           R1, [R1,#4]
533888:  BLXNE           R1
53388A:  LDR             R0, [R4,#0xC]
53388C:  MOVS            R5, #0
53388E:  STR             R5, [R4,#8]
533890:  CMP             R0, #0
533892:  ITTT NE
533894:  LDRNE           R1, [R0]
533896:  LDRNE           R1, [R1,#4]
533898:  BLXNE           R1
53389A:  LDR             R0, [R4,#0x10]
53389C:  STR             R5, [R4,#0xC]
53389E:  CMP             R0, #0
5338A0:  ITTT NE
5338A2:  LDRNE           R1, [R0]
5338A4:  LDRNE           R1, [R1,#4]
5338A6:  BLXNE           R1
5338A8:  LDR             R0, [R4,#0x14]
5338AA:  MOVS            R5, #0
5338AC:  STR             R5, [R4,#0x10]
5338AE:  CMP             R0, #0
5338B0:  ITTT NE
5338B2:  LDRNE           R1, [R0]
5338B4:  LDRNE           R1, [R1,#4]
5338B6:  BLXNE           R1
5338B8:  LDR             R0, [R4,#0x18]
5338BA:  STR             R5, [R4,#0x14]
5338BC:  CMP             R0, #0
5338BE:  ITTT NE
5338C0:  LDRNE           R1, [R0]
5338C2:  LDRNE           R1, [R1,#4]
5338C4:  BLXNE           R1
5338C6:  LDR             R0, [R4,#0x1C]
5338C8:  MOVS            R5, #0
5338CA:  STR             R5, [R4,#0x18]
5338CC:  CMP             R0, #0
5338CE:  ITTT NE
5338D0:  LDRNE           R1, [R0]
5338D2:  LDRNE           R1, [R1,#4]
5338D4:  BLXNE           R1
5338D6:  LDR             R0, [R4,#0x20]
5338D8:  STR             R5, [R4,#0x1C]
5338DA:  CMP             R0, #0
5338DC:  ITTT NE
5338DE:  LDRNE           R1, [R0]
5338E0:  LDRNE           R1, [R1,#4]
5338E2:  BLXNE           R1
5338E4:  LDR             R0, [R4,#0x24]
5338E6:  MOVS            R5, #0
5338E8:  STR             R5, [R4,#0x20]
5338EA:  CMP             R0, #0
5338EC:  ITTT NE
5338EE:  LDRNE           R1, [R0]
5338F0:  LDRNE           R1, [R1,#4]
5338F2:  BLXNE           R1
5338F4:  LDR             R0, [R4,#0x28]
5338F6:  STR             R5, [R4,#0x24]
5338F8:  CMP             R0, #0
5338FA:  ITTT NE
5338FC:  LDRNE           R1, [R0]
5338FE:  LDRNE           R1, [R1,#4]
533900:  BLXNE           R1
533902:  MOVS            R0, #0
533904:  STR             R0, [R4,#0x28]
533906:  MOV             R0, R4
533908:  POP             {R4,R5,R7,PC}
