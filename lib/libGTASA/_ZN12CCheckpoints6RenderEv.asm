; =========================================================
; Game Engine Function: _ZN12CCheckpoints6RenderEv
; Address            : 0x5C14D8 - 0x5C1514
; =========================================================

5C14D8:  PUSH            {R4-R7,LR}
5C14DA:  ADD             R7, SP, #0xC
5C14DC:  PUSH.W          {R11}
5C14E0:  LDR             R0, =(_ZN12CCheckpoints15m_aCheckPtArrayE_ptr - 0x5C14E8)
5C14E2:  MOVS            R4, #0
5C14E4:  ADD             R0, PC; _ZN12CCheckpoints15m_aCheckPtArrayE_ptr
5C14E6:  LDR             R5, [R0]; CCheckpoints::m_aCheckPtArray ...
5C14E8:  LDR             R0, =(_ZN12CCheckpoints15m_aCheckPtArrayE_ptr - 0x5C14EE)
5C14EA:  ADD             R0, PC; _ZN12CCheckpoints15m_aCheckPtArrayE_ptr
5C14EC:  LDR             R6, [R0]; CCheckpoints::m_aCheckPtArray ...
5C14EE:  ADDS            R0, R5, R4
5C14F0:  LDRB            R0, [R0,#2]
5C14F2:  CMP             R0, #0
5C14F4:  ITT NE
5C14F6:  ADDNE           R0, R6, R4; this
5C14F8:  BLXNE.W         j__ZN11CCheckpoint6RenderEv; CCheckpoint::Render(void)
5C14FC:  ADDS            R4, #0x38 ; '8'
5C14FE:  CMP.W           R4, #0x700
5C1502:  BNE             loc_5C14EE
5C1504:  MOVS            R0, #0x14
5C1506:  MOVS            R1, #2
5C1508:  POP.W           {R11}
5C150C:  POP.W           {R4-R7,LR}
5C1510:  B.W             sub_192888
