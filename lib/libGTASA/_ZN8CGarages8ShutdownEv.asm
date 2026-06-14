; =========================================================
; Game Engine Function: _ZN8CGarages8ShutdownEv
; Address            : 0x30E4F4 - 0x30E51A
; =========================================================

30E4F4:  PUSH            {R4,R5,R7,LR}
30E4F6:  ADD             R7, SP, #8
30E4F8:  LDR             R0, =(_ZN8CGarages10NumGaragesE_ptr - 0x30E502)
30E4FA:  MOVS            R1, #0
30E4FC:  MOVS            R4, #0x50 ; 'P'
30E4FE:  ADD             R0, PC; _ZN8CGarages10NumGaragesE_ptr
30E500:  LDR             R0, [R0]; CGarages::NumGarages ...
30E502:  STR             R1, [R0]; CGarages::NumGarages
30E504:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x30E50A)
30E506:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
30E508:  LDR             R5, [R0]; CGarages::aGarages ...
30E50A:  ADDS            R0, R5, R4; this
30E50C:  BLX             j__ZN18CAEDoorAudioEntity5ResetEv; CAEDoorAudioEntity::Reset(void)
30E510:  ADDS            R4, #0xD8
30E512:  CMP.W           R4, #0x2A80
30E516:  BNE             loc_30E50A
30E518:  POP             {R4,R5,R7,PC}
