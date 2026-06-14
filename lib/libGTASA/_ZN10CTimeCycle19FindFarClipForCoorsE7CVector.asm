; =========================================================
; Game Engine Function: _ZN10CTimeCycle19FindFarClipForCoorsE7CVector
; Address            : 0x420750 - 0x4207BA
; =========================================================

420750:  PUSH            {R4-R7,LR}
420752:  ADD             R7, SP, #0xC
420754:  PUSH.W          {R8}
420758:  SUB             SP, SP, #0xE0
42075A:  ADD             R3, SP, #0xF0+var_EC
42075C:  ADR             R4, dword_4207C0
42075E:  LDR.W           R12, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x420778)
420762:  ADD.W           R5, R3, #0xCC
420766:  LDR.W           LR, =(_ZN10CTimeCycle16m_bExtraColourOnE_ptr - 0x420776)
42076A:  VLD1.64         {D16-D17}, [R4@128]
42076E:  ADD.W           R4, R3, #0xBC
420772:  ADD             LR, PC; _ZN10CTimeCycle16m_bExtraColourOnE_ptr
420774:  ADD             R12, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
420776:  VST1.32         {D16-D17}, [R4]
42077A:  ADD.W           R4, R3, #0xAC
42077E:  VST1.32         {D16-D17}, [R4]
420782:  LDR.W           R4, [R12]; CTimeCycle::m_ExtraColourInter ...
420786:  MOV.W           R12, #0
42078A:  LDR.W           R6, [LR]; CTimeCycle::m_bExtraColourOn ...
42078E:  VST1.32         {D16-D17}, [R5]
420792:  LDR             R5, [R6]; CTimeCycle::m_bExtraColourOn
420794:  LDR.W           R8, [R4]; CTimeCycle::m_ExtraColourInter
420798:  STR.W           R12, [R6]; CTimeCycle::m_bExtraColourOn
42079C:  STR.W           R12, [R4]; CTimeCycle::m_ExtraColourInter
4207A0:  BLX             j__ZN10CTimeCycle19CalcColoursForPointE7CVectorP10CColourSet; CTimeCycle::CalcColoursForPoint(CVector,CColourSet *)
4207A4:  CMP             R5, #0
4207A6:  STR.W           R8, [R4]; CTimeCycle::m_ExtraColourInter
4207AA:  LDR             R0, [SP,#0xF0+var_9C]
4207AC:  IT NE
4207AE:  MOVNE           R5, #1
4207B0:  STR             R5, [R6]; CTimeCycle::m_bExtraColourOn
4207B2:  ADD             SP, SP, #0xE0
4207B4:  POP.W           {R8}
4207B8:  POP             {R4-R7,PC}
