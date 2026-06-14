; =========================================================
; Game Engine Function: _ZN8COctTree12NoOfChildrenEv
; Address            : 0x45C258 - 0x45C2A4
; =========================================================

45C258:  PUSH            {R4,R5,R7,LR}
45C25A:  ADD             R7, SP, #8
45C25C:  LDRH            R1, [R0,#0xC]
45C25E:  MOVS            R3, #1
45C260:  LDRH            R2, [R0,#0xA]
45C262:  LDRH            R4, [R0,#0xE]
45C264:  EOR.W           R1, R3, R1,LSR#15
45C268:  LDRH.W          R12, [R0,#0x16]
45C26C:  EOR.W           R2, R3, R2,LSR#15
45C270:  LDRH.W          LR, [R0,#0x14]
45C274:  ADD             R1, R2
45C276:  EOR.W           R2, R3, R4,LSR#15
45C27A:  LDRH            R5, [R0,#0x12]
45C27C:  ADD             R1, R2
45C27E:  LDRH            R4, [R0,#0x18]
45C280:  LDRH            R0, [R0,#0x10]
45C282:  EOR.W           R0, R3, R0,LSR#15
45C286:  ADD             R0, R1
45C288:  EOR.W           R1, R3, R5,LSR#15
45C28C:  ADD             R0, R1
45C28E:  EOR.W           R1, R3, LR,LSR#15
45C292:  ADD             R0, R1
45C294:  EOR.W           R1, R3, R12,LSR#15
45C298:  UXTAH.W         R0, R1, R0
45C29C:  EOR.W           R1, R3, R4,LSR#15
45C2A0:  ADD             R0, R1
45C2A2:  POP             {R4,R5,R7,PC}
