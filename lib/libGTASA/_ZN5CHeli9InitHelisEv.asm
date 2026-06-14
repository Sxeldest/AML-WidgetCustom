; =========================================================
; Game Engine Function: _ZN5CHeli9InitHelisEv
; Address            : 0x572DEC - 0x572E3A
; =========================================================

572DEC:  PUSH            {R7,LR}
572DEE:  MOV             R7, SP
572DF0:  LDR             R2, =(_ZN5CHeli20NumberOfSearchLightsE_ptr - 0x572DFC)
572DF2:  VMOV.I32        Q8, #0
572DF6:  LDR             R3, =(_ZN5CHeli16HeliSearchLightsE_ptr - 0x572E00)
572DF8:  ADD             R2, PC; _ZN5CHeli20NumberOfSearchLightsE_ptr
572DFA:  LDR             R1, =(_ZN5CHeli6pHelisE_ptr - 0x572E08)
572DFC:  ADD             R3, PC; _ZN5CHeli16HeliSearchLightsE_ptr
572DFE:  LDR             R0, =(_ZN5CHeli19bPoliceHelisAllowedE_ptr - 0x572E0C)
572E00:  LDR.W           LR, [R2]; CHeli::NumberOfSearchLights ...
572E04:  ADD             R1, PC; _ZN5CHeli6pHelisE_ptr
572E06:  LDR             R2, [R3]; CHeli::HeliSearchLights ...
572E08:  ADD             R0, PC; _ZN5CHeli19bPoliceHelisAllowedE_ptr
572E0A:  LDR             R1, [R1]; CHeli::pHelis ...
572E0C:  LDR.W           R12, [R0]; CHeli::bPoliceHelisAllowed ...
572E10:  MOVS            R0, #0
572E12:  MOV             R3, R2
572E14:  VST1.32         {D16-D17}, [R3]!
572E18:  VST1.32         {D16-D17}, [R3]
572E1C:  ADD.W           R3, R2, #0x5C ; '\'
572E20:  ADDS            R2, #0x4C ; 'L'
572E22:  VST1.32         {D16-D17}, [R3]
572E26:  VST1.32         {D16-D17}, [R2]
572E2A:  STRD.W          R0, R0, [R1]; CHeli::pHelis
572E2E:  STR.W           R0, [LR]; CHeli::NumberOfSearchLights
572E32:  MOVS            R0, #1
572E34:  STRB.W          R0, [R12]; CHeli::bPoliceHelisAllowed
572E38:  POP             {R7,PC}
