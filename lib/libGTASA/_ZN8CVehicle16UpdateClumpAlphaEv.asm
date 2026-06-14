; =========================================================
; Game Engine Function: _ZN8CVehicle16UpdateClumpAlphaEv
; Address            : 0x58A1D0 - 0x58A206
; =========================================================

58A1D0:  PUSH            {R4,R6,R7,LR}
58A1D2:  ADD             R7, SP, #8
58A1D4:  MOV             R4, R0
58A1D6:  LDR             R0, [R4,#0x18]
58A1D8:  BLX             j__ZN18CVisibilityPlugins13GetClumpAlphaEP7RpClump; CVisibilityPlugins::GetClumpAlpha(RpClump *)
58A1DC:  MOV             R1, R0
58A1DE:  LDRB.W          R0, [R4,#0x42E]
58A1E2:  LSLS            R0, R0, #0x1D
58A1E4:  BMI             loc_58A1F4
58A1E6:  CMP             R1, #0xFE
58A1E8:  BGT             loc_58A1FC
58A1EA:  ADDS            R1, #0x10
58A1EC:  CMP             R1, #0xFF
58A1EE:  IT GE
58A1F0:  MOVGE           R1, #0xFF
58A1F2:  B               loc_58A1FC
58A1F4:  SUBS            R1, #8
58A1F6:  CMP             R1, #0
58A1F8:  IT LE
58A1FA:  MOVLE           R1, #0
58A1FC:  LDR             R0, [R4,#0x18]
58A1FE:  POP.W           {R4,R6,R7,LR}
58A202:  B.W             sub_191068
