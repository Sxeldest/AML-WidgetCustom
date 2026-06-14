; =========================================================
; Game Engine Function: _ZN10CTimeCycle16StartExtraColourEib
; Address            : 0x4207D8 - 0x420834
; =========================================================

4207D8:  PUSH            {R4-R7,LR}
4207DA:  ADD             R7, SP, #0xC
4207DC:  PUSH.W          {R11}
4207E0:  LDR             R3, =(_ZN10CTimeCycle24m_ExtraColourWeatherTypeE_ptr - 0x4207EE)
4207E2:  ASRS            R4, R0, #0x1F
4207E4:  LDR             R2, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x4207F8)
4207E6:  ADD.W           R4, R0, R4,LSR#29
4207EA:  ADD             R3, PC; _ZN10CTimeCycle24m_ExtraColourWeatherTypeE_ptr
4207EC:  LDR.W           LR, =(_ZN10CTimeCycle13m_ExtraColourE_ptr - 0x4207FA)
4207F0:  LDR.W           R12, =(_ZN10CTimeCycle16m_bExtraColourOnE_ptr - 0x4207FE)
4207F4:  ADD             R2, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
4207F6:  ADD             LR, PC; _ZN10CTimeCycle13m_ExtraColourE_ptr
4207F8:  LDR             R3, [R3]; CTimeCycle::m_ExtraColourWeatherType ...
4207FA:  ADD             R12, PC; _ZN10CTimeCycle16m_bExtraColourOnE_ptr
4207FC:  VLDR            S2, =0.0
420800:  MOVS            R5, #0x15
420802:  LDR             R6, [R2]; CTimeCycle::m_ExtraColourInter ...
420804:  CMP             R1, #0
420806:  VMOV.F32        S0, #1.0
42080A:  LDR.W           R2, [LR]; CTimeCycle::m_ExtraColour ...
42080E:  IT NE
420810:  VMOVNE.F32      S0, S2
420814:  ADD.W           R5, R5, R4,ASR#3
420818:  STR             R5, [R3]; CTimeCycle::m_ExtraColourWeatherType
42081A:  BIC.W           R3, R4, #7
42081E:  LDR.W           R1, [R12]; CTimeCycle::m_bExtraColourOn ...
420822:  SUBS            R0, R0, R3
420824:  STR             R0, [R2]; CTimeCycle::m_ExtraColour
420826:  MOVS            R0, #1
420828:  VSTR            S0, [R6]
42082C:  STR             R0, [R1]; CTimeCycle::m_bExtraColourOn
42082E:  POP.W           {R11}
420832:  POP             {R4-R7,PC}
