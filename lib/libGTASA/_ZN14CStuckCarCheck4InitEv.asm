; =========================================================
; Game Engine Function: _ZN14CStuckCarCheck4InitEv
; Address            : 0x32824A - 0x328282
; =========================================================

32824A:  PUSH            {R7,LR}
32824C:  MOV             R7, SP
32824E:  MOVW            LR, #0x4000
328252:  MOVS            R1, #0
328254:  MOV.W           R12, #0xFFFFFFFF
328258:  MOVT            LR, #0xC59C
32825C:  MOVS            R2, #0
32825E:  STR.W           R12, [R0,R2]
328262:  ADDS            R3, R0, R2
328264:  ADDS            R2, #0x24 ; '$'
328266:  CMP.W           R2, #0x240
32826A:  STRD.W          LR, LR, [R3,#4]
32826E:  STRD.W          LR, R12, [R3,#0xC]
328272:  STR.W           R1, [R3,#0x1E]
328276:  STR.W           R1, [R3,#0x1A]
32827A:  STRD.W          R1, R1, [R3,#0x14]
32827E:  BNE             loc_32825E
328280:  POP             {R7,PC}
