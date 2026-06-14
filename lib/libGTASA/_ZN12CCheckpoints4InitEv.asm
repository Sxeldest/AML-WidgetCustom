; =========================================================
; Game Engine Function: _ZN12CCheckpoints4InitEv
; Address            : 0x5BFD00 - 0x5BFD6C
; =========================================================

5BFD00:  PUSH            {R4-R7,LR}
5BFD02:  ADD             R7, SP, #0xC
5BFD04:  PUSH.W          {R8}
5BFD08:  LDR             R1, =(_ZN12CCheckpoints15m_aCheckPtArrayE_ptr - 0x5BFD18)
5BFD0A:  ADR             R2, dword_5BFD70
5BFD0C:  VMOV.I32        Q9, #0
5BFD10:  VLD1.64         {D16-D17}, [R2@128]
5BFD14:  ADD             R1, PC; _ZN12CCheckpoints15m_aCheckPtArrayE_ptr
5BFD16:  MOVS            R0, #0
5BFD18:  MOVW            R12, #0x101
5BFD1C:  MOV.W           LR, #0xFFFFFFFF
5BFD20:  LDR             R1, [R1]; CCheckpoints::m_aCheckPtArray ...
5BFD22:  MOV.W           R8, #0x400
5BFD26:  MOVS            R3, #5
5BFD28:  MOVS            R4, #1
5BFD2A:  MOVS            R5, #0
5BFD2C:  ADDS            R6, R1, R5
5BFD2E:  STRH.W          R12, [R1,R5]
5BFD32:  ADD.W           R2, R6, #0x28 ; '('
5BFD36:  STRB            R0, [R6,#2]
5BFD38:  ADDS            R5, #0x38 ; '8'
5BFD3A:  STRD.W          R0, LR, [R6,#4]
5BFD3E:  CMP.W           R5, #0x700
5BFD42:  STRH.W          R8, [R6,#0xC]
5BFD46:  STRH            R3, [R6,#0xE]
5BFD48:  STRD.W          R0, R0, [R6,#0x20]
5BFD4C:  STRB            R4, [R6,#3]
5BFD4E:  VST1.32         {D16-D17}, [R2]
5BFD52:  ADD.W           R2, R6, #0x10
5BFD56:  VST1.32         {D18-D19}, [R2]
5BFD5A:  BNE             loc_5BFD2C
5BFD5C:  LDR             R0, =(_ZN12CCheckpoints13NumActiveCPtsE_ptr - 0x5BFD64)
5BFD5E:  MOVS            R1, #0
5BFD60:  ADD             R0, PC; _ZN12CCheckpoints13NumActiveCPtsE_ptr
5BFD62:  LDR             R0, [R0]; CCheckpoints::NumActiveCPts ...
5BFD64:  STR             R1, [R0]; CCheckpoints::NumActiveCPts
5BFD66:  POP.W           {R8}
5BFD6A:  POP             {R4-R7,PC}
