; =========================================================
; Game Engine Function: _ZN14CBaseModelInfo11SetColModelEP9CColModelb
; Address            : 0x385094 - 0x3850DA
; =========================================================

385094:  PUSH            {R4,R6,R7,LR}
385096:  ADD             R7, SP, #8
385098:  MOV             R4, R1
38509A:  LDRH            R1, [R0,#0x28]
38509C:  CMP             R2, #0
38509E:  STR             R4, [R0,#0x2C]
3850A0:  BIC.W           R3, R1, #0x80
3850A4:  IT NE
3850A6:  ORRNE.W         R3, R1, #0x80
3850AA:  STRH            R3, [R0,#0x28]
3850AC:  IT EQ
3850AE:  POPEQ           {R4,R6,R7,PC}
3850B0:  LDR             R1, [R0]
3850B2:  LDR             R1, [R1,#0x18]
3850B4:  BLX             R1
3850B6:  CMP             R0, #0
3850B8:  ITT NE
3850BA:  LDRSHNE.W       R0, [R0,#2]
3850BE:  ADDSNE.W        R1, R0, #1
3850C2:  BEQ             locret_3850D8
3850C4:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3850CA)
3850C6:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3850C8:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3850CA:  LDR.W           R0, [R1,R0,LSL#2]
3850CE:  LDRH            R1, [R0,#0x28]
3850D0:  STR             R4, [R0,#0x2C]
3850D2:  BIC.W           R1, R1, #0x80
3850D6:  STRH            R1, [R0,#0x28]
3850D8:  POP             {R4,R6,R7,PC}
