; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgr10InitialiseEv
; Address            : 0x470D60 - 0x470D80
; =========================================================

470D60:  PUSH            {R4,R6,R7,LR}
470D62:  ADD             R7, SP, #8
470D64:  MOV             R4, R0
470D66:  BLX             j__ZN16cHandlingDataMgr16LoadHandlingDataEv; cHandlingDataMgr::LoadHandlingData(void)
470D6A:  ADR             R0, dword_470D80
470D6C:  VLD1.64         {D16-D17}, [R0@128]
470D70:  MOV             R0, #0x3F7AE148
470D78:  VST1.32         {D16-D17}, [R4]!
470D7C:  STR             R0, [R4]
470D7E:  POP             {R4,R6,R7,PC}
