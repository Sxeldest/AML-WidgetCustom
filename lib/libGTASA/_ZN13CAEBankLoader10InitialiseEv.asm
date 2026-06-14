; =========================================================
; Game Engine Function: _ZN13CAEBankLoader10InitialiseEv
; Address            : 0x27D4DC - 0x27D504
; =========================================================

27D4DC:  PUSH            {R4,R6,R7,LR}
27D4DE:  ADD             R7, SP, #8
27D4E0:  MOV             R4, R0
27D4E2:  BLX             j__ZN13CAEBankLoader16LoadBankSlotFileEv; CAEBankLoader::LoadBankSlotFile(void)
27D4E6:  CBZ             R0, loc_27D500
27D4E8:  MOV             R0, R4; this
27D4EA:  BLX             j__ZN13CAEBankLoader18LoadBankLookupFileEv; CAEBankLoader::LoadBankLookupFile(void)
27D4EE:  CBZ             R0, loc_27D500
27D4F0:  MOV             R0, R4; this
27D4F2:  BLX             j__ZN13CAEBankLoader20LoadSFXPakLookupFileEv; CAEBankLoader::LoadSFXPakLookupFile(void)
27D4F6:  CMP             R0, #0
27D4F8:  ITTT NE
27D4FA:  MOVNE           R0, #1
27D4FC:  STRBNE          R0, [R4,#0x14]
27D4FE:  POPNE           {R4,R6,R7,PC}
27D500:  MOVS            R0, #0
27D502:  POP             {R4,R6,R7,PC}
