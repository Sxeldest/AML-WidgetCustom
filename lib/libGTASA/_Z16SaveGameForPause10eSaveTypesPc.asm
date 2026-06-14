; =========================================================
; Game Engine Function: _Z16SaveGameForPause10eSaveTypesPc
; Address            : 0x5E4BE8 - 0x5E4D28
; =========================================================

5E4BE8:  PUSH            {R4-R7,LR}
5E4BEA:  ADD             R7, SP, #0xC
5E4BEC:  PUSH.W          {R8,R9,R11}; unsigned int
5E4BF0:  SUB             SP, SP, #8
5E4BF2:  MOV             R5, R1
5E4BF4:  MOV             R4, R0
5E4BF6:  BLX.W           j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
5E4BFA:  CMP             R4, #5
5E4BFC:  BNE             loc_5E4C06
5E4BFE:  ADR             R0, aAnalytic; "Analytic"
5E4C00:  MOV             R1, R5; char *
5E4C02:  BLX.W           j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
5E4C06:  LDR             R0, =(SaveGameStateType_ptr - 0x5E4C14)
5E4C08:  CMP             R4, #5
5E4C0A:  LDR             R1, =(_ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr - 0x5E4C18)
5E4C0C:  MOV.W           R8, #0
5E4C10:  ADD             R0, PC; SaveGameStateType_ptr
5E4C12:  LDR             R2, =(gGameState_ptr - 0x5E4C20)
5E4C14:  ADD             R1, PC; _ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr
5E4C16:  ORR.W           R12, R4, #4
5E4C1A:  LDR             R0, [R0]; SaveGameStateType
5E4C1C:  ADD             R2, PC; gGameState_ptr
5E4C1E:  LDR             R1, [R1]; CTheScripts::bAlreadyRunningAMissionScript ...
5E4C20:  MOV.W           R9, #0
5E4C24:  LDR             R2, [R2]; gGameState
5E4C26:  MOV.W           R6, #0
5E4C2A:  STR             R4, [R0]
5E4C2C:  IT NE
5E4C2E:  MOVNE.W         R8, #1
5E4C32:  LDRB            R5, [R1]; CTheScripts::bAlreadyRunningAMissionScript
5E4C34:  CMP.W           R12, #4
5E4C38:  IT NE
5E4C3A:  MOVNE.W         R9, #1
5E4C3E:  MOVS            R1, #0
5E4C40:  CMP             R5, #0
5E4C42:  MOV.W           R0, #0
5E4C46:  MOV             R3, R5
5E4C48:  IT NE
5E4C4A:  MOVNE           R3, #1
5E4C4C:  CMP             R4, #2
5E4C4E:  IT NE
5E4C50:  MOVNE           R1, #1
5E4C52:  CMP             R4, #3
5E4C54:  IT NE
5E4C56:  MOVNE           R0, #(stderr+1); this
5E4C58:  CMP             R4, #1
5E4C5A:  IT NE
5E4C5C:  MOVNE           R6, #1
5E4C5E:  LDR             R2, [R2]
5E4C60:  CMP             R2, #9
5E4C62:  BNE             loc_5E4D1A
5E4C64:  CMP             R4, #0
5E4C66:  ORR.W           LR, R1, R3
5E4C6A:  ORR.W           R6, R6, R3
5E4C6E:  IT NE
5E4C70:  CMPNE           R4, #5
5E4C72:  BEQ             loc_5E4C9A
5E4C74:  CMP             R4, #4
5E4C76:  MOV.W           R1, #0
5E4C7A:  IT NE
5E4C7C:  MOVNE           R1, #1
5E4C7E:  CMP             R5, #0
5E4C80:  IT NE
5E4C82:  MOVNE           R5, #1
5E4C84:  MOVS            R2, #0
5E4C86:  CMP             R4, #3
5E4C88:  IT NE
5E4C8A:  MOVNE           R2, #1
5E4C8C:  ORRS            R2, R5
5E4C8E:  ITTT NE
5E4C90:  ORRNE           R1, R5
5E4C92:  ANDNE           R1, R6
5E4C94:  ANDSNE.W        R1, R1, LR
5E4C98:  BNE             loc_5E4D1A
5E4C9A:  AND.W           R1, R8, R9
5E4C9E:  AND.W           R5, R6, LR
5E4CA2:  ANDS            R1, R3
5E4CA4:  CMP.W           R12, #4
5E4CA8:  AND.W           R6, R0, R1
5E4CAC:  BNE             loc_5E4CCE
5E4CAE:  LDR             R0, =(TheText_ptr - 0x5E4CB6)
5E4CB0:  ADR             R4, aCkpSav; "CKP_SAV"
5E4CB2:  ADD             R0, PC; TheText_ptr
5E4CB4:  MOV             R1, R4; CKeyGen *
5E4CB6:  LDR             R0, [R0]; TheText ; this
5E4CB8:  BLX.W           j__ZN5CText3GetEPKc; CText::Get(char const*)
5E4CBC:  MOV             R1, R0; char *
5E4CBE:  MOVS            R0, #0
5E4CC0:  STRD.W          R0, R0, [SP,#0x20+var_20]; bool
5E4CC4:  MOV             R0, R4; this
5E4CC6:  MOVS            R2, #0; unsigned __int16 *
5E4CC8:  MOVS            R3, #0; bool
5E4CCA:  BLX.W           j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
5E4CCE:  LDR             R0, =(PcSaveHelper_ptr - 0x5E4CDC)
5E4CD0:  MOVS            R1, #9
5E4CD2:  CMP             R6, #0
5E4CD4:  MOV.W           R2, #1; bool
5E4CD8:  ADD             R0, PC; PcSaveHelper_ptr
5E4CDA:  IT NE
5E4CDC:  MOVNE           R1, #8
5E4CDE:  CMP             R5, #0
5E4CE0:  LDR             R0, [R0]; PcSaveHelper ; this
5E4CE2:  IT EQ
5E4CE4:  MOVEQ           R1, #byte_8; CGenericGameStorage *
5E4CE6:  BLX.W           j__ZN8C_PcSave8SaveSlotEab; C_PcSave::SaveSlot(signed char,bool)
5E4CEA:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x5E4CF0)
5E4CEC:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
5E4CEE:  LDR             R0, [R0]; CGenericGameStorage::ms_bFailed ...
5E4CF0:  LDRB            R0, [R0]; CGenericGameStorage::ms_bFailed
5E4CF2:  CBZ             R0, loc_5E4D08
5E4CF4:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x5E4CFC)
5E4CF6:  LDR             R1, =(gMobileMenu_ptr - 0x5E4CFE)
5E4CF8:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
5E4CFA:  ADD             R1, PC; gMobileMenu_ptr
5E4CFC:  LDR             R2, [R0]; CGenericGameStorage::ms_bFailed ...
5E4CFE:  LDR             R0, [R1]; gMobileMenu ; this
5E4D00:  MOVS            R1, #0
5E4D02:  STRB            R1, [R2]; CGenericGameStorage::ms_bFailed
5E4D04:  BLX.W           j__ZN10MobileMenu10SaveFailedEv; MobileMenu::SaveFailed(void)
5E4D08:  LDR             R0, =(PcSaveHelper_ptr - 0x5E4D0E)
5E4D0A:  ADD             R0, PC; PcSaveHelper_ptr
5E4D0C:  LDR             R0, [R0]; PcSaveHelper ; this
5E4D0E:  BLX.W           j__ZN8C_PcSave16PopulateSlotInfoEv; C_PcSave::PopulateSlotInfo(void)
5E4D12:  BLX.W           j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
5E4D16:  MOVS            R0, #1
5E4D18:  B               loc_5E4D20
5E4D1A:  BLX.W           j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
5E4D1E:  MOVS            R0, #0
5E4D20:  ADD             SP, SP, #8
5E4D22:  POP.W           {R8,R9,R11}
5E4D26:  POP             {R4-R7,PC}
