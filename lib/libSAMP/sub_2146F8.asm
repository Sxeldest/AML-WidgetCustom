; =========================================================
; Game Engine Function: sub_2146F8
; Address            : 0x2146F8 - 0x214712
; =========================================================

2146F8:  PUSH            {R7,LR}
2146FA:  MOV             R7, SP
2146FC:  CMP.W           R2, #0x1000
214700:  BLT             loc_21470C
214702:  LDR             R1, =(aUnspecifiedSys - 0x214708); "unspecified system_category error" ...
214704:  ADD             R1, PC; "unspecified system_category error"
214706:  BL              sub_DC6DC
21470A:  POP             {R7,PC}
21470C:  BL              sub_2145F4
214710:  POP             {R7,PC}
