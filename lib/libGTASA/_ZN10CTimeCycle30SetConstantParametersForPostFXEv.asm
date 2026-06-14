; =========================================================
; Game Engine Function: _ZN10CTimeCycle30SetConstantParametersForPostFXEv
; Address            : 0x420690 - 0x42071E
; =========================================================

420690:  PUSH            {R7,LR}
420692:  MOV             R7, SP
420694:  BLX             j__ZN12CPostEffects16IsVisionFXActiveEv; CPostEffects::IsVisionFXActive(void)
420698:  CMP             R0, #1
42069A:  BNE             locret_42071C
42069C:  LDR             R0, =(_ZN12CPostEffects14m_bNightVisionE_ptr - 0x4206A2)
42069E:  ADD             R0, PC; _ZN12CPostEffects14m_bNightVisionE_ptr
4206A0:  LDR             R0, [R0]; CPostEffects::m_bNightVision ...
4206A2:  LDRB            R0, [R0]; CPostEffects::m_bNightVision
4206A4:  CBZ             R0, loc_4206D6
4206A6:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x4206B4)
4206A8:  ADR             R1, dword_420720
4206AA:  VLD1.64         {D16-D17}, [R1@128]
4206AE:  MOVS            R1, #0
4206B0:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
4206B2:  MOV.W           R2, #0x800000
4206B6:  MOVS            R3, #0x80
4206B8:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
4206BA:  STRH.W          R1, [R0,#(word_966598 - 0x96654C)]
4206BE:  STR             R1, [R0,#(dword_966594 - 0x96654C)]
4206C0:  STR             R1, [R0,#(dword_966560 - 0x96654C)]
4206C2:  STRD.W          R2, R1, [R0,#(dword_966570 - 0x96654C)]
4206C6:  MOVW            R1, #0xCCCD
4206CA:  STR             R3, [R0,#(dword_966576+2 - 0x96654C)]
4206CC:  MOVT            R1, #0x3ECC
4206D0:  VST1.32         {D16-D17}, [R0]!
4206D4:  STR             R1, [R0]
4206D6:  LDR             R0, =(_ZN12CPostEffects17m_bInfraredVisionE_ptr - 0x4206DC)
4206D8:  ADD             R0, PC; _ZN12CPostEffects17m_bInfraredVisionE_ptr
4206DA:  LDR             R0, [R0]; CPostEffects::m_bInfraredVision ...
4206DC:  LDRB            R0, [R0]; CPostEffects::m_bInfraredVision
4206DE:  CMP             R0, #0
4206E0:  IT EQ
4206E2:  POPEQ           {R7,PC}
4206E4:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x4206F2)
4206E6:  ADR             R1, dword_420730
4206E8:  VLD1.64         {D16-D17}, [R1@128]
4206EC:  MOVS            R1, #0
4206EE:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
4206F0:  MOV.W           R2, #0x3F800000
4206F4:  MOV.W           R3, #0x800000
4206F8:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
4206FA:  ADD.W           R12, R0, #0x24 ; '$'
4206FE:  STRH.W          R1, [R0,#(word_966598 - 0x96654C)]
420702:  STR             R1, [R0,#(dword_966594 - 0x96654C)]
420704:  STR             R1, [R0,#(dword_9665A4 - 0x96654C)]
420706:  STR.W           R1, [R0,#(dword_9665E8 - 0x96654C)]
42070A:  STRH.W          R1, [R0,#(word_9665EC - 0x96654C)]
42070E:  STR             R2, [R0,#(dword_966560 - 0x96654C)]
420710:  MOVS            R2, #0x80
420712:  STM.W           R12, {R1-R3}
420716:  VST1.32         {D16-D17}, [R0]!
42071A:  STR             R1, [R0]
42071C:  POP             {R7,PC}
