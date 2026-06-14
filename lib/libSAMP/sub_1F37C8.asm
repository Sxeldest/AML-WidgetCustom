; =========================================================
; Game Engine Function: sub_1F37C8
; Address            : 0x1F37C8 - 0x1F37E4
; =========================================================

1F37C8:  PUSH            {R7,LR}
1F37CA:  MOV             R7, SP
1F37CC:  CMP             R2, #4
1F37CE:  BHI             loc_1F37DA
1F37D0:  LDR             R1, =(off_2312C0 - 0x1F37D6); "The associated promise has been destruc"... ...
1F37D2:  ADD             R1, PC; off_2312C0
1F37D4:  LDR.W           R1, [R1,R2,LSL#2]
1F37D8:  B               loc_1F37DE
1F37DA:  LDR             R1, =(aUnspecifiedFut - 0x1F37E0); "unspecified future_errc value\n" ...
1F37DC:  ADD             R1, PC; "unspecified future_errc value\n"
1F37DE:  BL              sub_DC6DC
1F37E2:  POP             {R7,PC}
