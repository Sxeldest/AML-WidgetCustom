; =========================================================
; Game Engine Function: _ZN13CMovingThings6UpdateEv
; Address            : 0x5A66B0 - 0x5A66EA
; =========================================================

5A66B0:  PUSH            {R4-R7,LR}
5A66B2:  ADD             R7, SP, #0xC
5A66B4:  PUSH.W          {R11}
5A66B8:  BLX.W           j__ZN12CPlaneTrails6UpdateEv; CPlaneTrails::Update(void)
5A66BC:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A66C4)
5A66BE:  MOVS            R4, #0
5A66C0:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A66C2:  LDR             R5, [R0]; CEscalators::aArray ...
5A66C4:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A66CA)
5A66C6:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A66C8:  LDR             R6, [R0]; CEscalators::aArray ...
5A66CA:  ADDS            R0, R5, R4
5A66CC:  LDRB.W          R0, [R0,#0x78]
5A66D0:  CMP             R0, #0
5A66D2:  ITT NE
5A66D4:  ADDNE           R0, R6, R4; this
5A66D6:  BLXNE.W         j__ZN10CEscalator6UpdateEv; CEscalator::Update(void)
5A66DA:  ADD.W           R4, R4, #0x150
5A66DE:  CMP.W           R4, #0x2A00
5A66E2:  BNE             loc_5A66CA
5A66E4:  POP.W           {R11}
5A66E8:  POP             {R4-R7,PC}
