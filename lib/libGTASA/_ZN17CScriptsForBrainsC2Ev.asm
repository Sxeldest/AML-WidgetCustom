; =========================================================
; Game Engine Function: _ZN17CScriptsForBrainsC2Ev
; Address            : 0x32F588 - 0x32F5BA
; =========================================================

32F588:  PUSH            {R4,R6,R7,LR}
32F58A:  ADD             R7, SP, #8
32F58C:  MOVW            LR, #0
32F590:  MOVS            R1, #0
32F592:  MOVW            R2, #0xFFFF
32F596:  MOV.W           R12, #1
32F59A:  MOVT            LR, #0x40A0
32F59E:  MOVS            R3, #0
32F5A0:  STRH            R2, [R0,R3]
32F5A2:  ADDS            R4, R0, R3
32F5A4:  ADDS            R3, #0x14
32F5A6:  CMP.W           R3, #0x578
32F5AA:  STRB.W          R12, [R4,#4]
32F5AE:  STRH            R2, [R4,#2]
32F5B0:  STRD.W          LR, R1, [R4,#8]
32F5B4:  STR             R1, [R4,#0x10]
32F5B6:  BNE             loc_32F5A0
32F5B8:  POP             {R4,R6,R7,PC}
