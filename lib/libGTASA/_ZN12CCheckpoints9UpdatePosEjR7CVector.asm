; =========================================================
; Game Engine Function: _ZN12CCheckpoints9UpdatePosEjR7CVector
; Address            : 0x5C42B4 - 0x5C4308
; =========================================================

5C42B4:  LDR             R2, =(_ZN12CCheckpoints15m_aCheckPtArrayE_ptr - 0x5C42BE)
5C42B6:  MOV.W           R3, #0xFFFFFFFF
5C42BA:  ADD             R2, PC; _ZN12CCheckpoints15m_aCheckPtArrayE_ptr
5C42BC:  LDR             R2, [R2]; CCheckpoints::m_aCheckPtArray ...
5C42BE:  ADD.W           R12, R2, #0x34 ; '4'
5C42C2:  B               loc_5C42D0
5C42C4:  ADDS            R3, #1
5C42C6:  ADD.W           R12, R12, #0x38 ; '8'
5C42CA:  CMP             R3, #0x1F
5C42CC:  IT GE
5C42CE:  BXGE            LR
5C42D0:  LDR.W           R2, [R12,#-0x30]
5C42D4:  CMP             R2, R0
5C42D6:  BNE             loc_5C42C4
5C42D8:  LDRH.W          R0, [R12,#-0x34]; CCheckpoints::m_aCheckPtArray
5C42DC:  LDR             R2, [R1]
5C42DE:  STR.W           R2, [R12,#-0x24]
5C42E2:  CMP             R0, #8
5C42E4:  LDR             R2, [R1,#4]
5C42E6:  STR.W           R2, [R12,#-0x20]
5C42EA:  BEQ             locret_5C4306
5C42EC:  CMP             R0, #7
5C42EE:  ITEEE NE
5C42F0:  VLDRNE          S0, [R1,#8]
5C42F4:  VLDREQ          S0, [R12]
5C42F8:  VLDREQ          S2, [R1,#8]
5C42FC:  VADDEQ.F32      S0, S2, S0
5C4300:  VSTR            S0, [R12,#-0x1C]
5C4304:  BX              LR
5C4306:  BX              LR
