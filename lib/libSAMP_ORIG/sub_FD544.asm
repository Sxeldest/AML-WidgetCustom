; =========================================================
; Game Engine Function: sub_FD544
; Address            : 0xFD544 - 0xFD560
; =========================================================

FD544:  PUSH            {R7,LR}
FD546:  MOV             R7, SP
FD548:  CMP             R2, #4
FD54A:  BHI             loc_FD556
FD54C:  LDR             R1, =(off_113084 - 0xFD552); "The associated promise has been destruc"... ...
FD54E:  ADD             R1, PC; off_113084
FD550:  LDR.W           R1, [R1,R2,LSL#2]
FD554:  B               loc_FD55A
FD556:  LDR             R1, =(aUnspecifiedFut - 0xFD55C); "unspecified future_errc value\n" ...
FD558:  ADD             R1, PC; "unspecified future_errc value\n"
FD55A:  BL              sub_5FBF8
FD55E:  POP             {R7,PC}
