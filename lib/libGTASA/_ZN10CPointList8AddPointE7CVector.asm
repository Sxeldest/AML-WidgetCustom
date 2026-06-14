; =========================================================
; Game Engine Function: _ZN10CPointList8AddPointE7CVector
; Address            : 0x5486A6 - 0x5486D0
; =========================================================

5486A6:  LDR.W           R12, [R0]
5486AA:  CMP.W           R12, #0x17
5486AE:  IT GT
5486B0:  BXGT            LR
5486B2:  PUSH            {R7,LR}
5486B4:  MOV             R7, SP
5486B6:  ADD.W           LR, R12, #1
5486BA:  ADD.W           R12, R12, R12,LSL#1
5486BE:  STR.W           LR, [R0]
5486C2:  ADD.W           R0, R0, R12,LSL#2
5486C6:  ADDS            R0, #4
5486C8:  STM             R0!, {R1-R3}
5486CA:  POP.W           {R7,LR}
5486CE:  BX              LR
