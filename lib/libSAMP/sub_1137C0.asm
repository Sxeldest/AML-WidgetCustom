; =========================================================
; Game Engine Function: sub_1137C0
; Address            : 0x1137C0 - 0x11386E
; =========================================================

1137C0:  PUSH            {R4,R6,R7,LR}
1137C2:  ADD             R7, SP, #8
1137C4:  MOV             R4, R0
1137C6:  LDR             R0, =(off_234B1C - 0x1137CC)
1137C8:  ADD             R0, PC; off_234B1C
1137CA:  LDR             R0, [R0]; `vtable for'CRedAndBlueSpd ...
1137CC:  ADD.W           R1, R0, #0x88
1137D0:  STR             R1, [R4,#0x20]
1137D2:  ADD.W           R1, R0, #0x78 ; 'x'
1137D6:  STR             R1, [R4,#0x18]
1137D8:  ADD.W           R1, R0, #0x60 ; '`'
1137DC:  ADDS            R0, #8
1137DE:  STR             R1, [R4,#0x10]
1137E0:  STR             R0, [R4]
1137E2:  ADD.W           R0, R4, #0x70 ; 'p'
1137E6:  BL              sub_1630A8
1137EA:  ADD.W           R0, R4, #0x6C ; 'l'
1137EE:  BL              sub_1630A8
1137F2:  ADD.W           R0, R4, #0x68 ; 'h'
1137F6:  BL              sub_1630A8
1137FA:  ADD.W           R0, R4, #0x64 ; 'd'
1137FE:  BL              sub_1630A8
113802:  ADD.W           R0, R4, #0x60 ; '`'
113806:  BL              sub_1630A8
11380A:  ADD.W           R0, R4, #0x5C ; '\'
11380E:  BL              sub_1630A8
113812:  ADD.W           R0, R4, #0x58 ; 'X'
113816:  BL              sub_1630A8
11381A:  ADD.W           R0, R4, #0x54 ; 'T'
11381E:  BL              sub_1630A8
113822:  ADD.W           R0, R4, #0x50 ; 'P'
113826:  BL              sub_1630A8
11382A:  ADD.W           R0, R4, #0x4C ; 'L'
11382E:  BL              sub_1630A8
113832:  LDR             R0, =(_ZTV21SpdWithTouchIndicatorI14CRedAndBlueSpdE - 0x113838); `vtable for'SpdWithTouchIndicator<CRedAndBlueSpd> ...
113834:  ADD             R0, PC; `vtable for'SpdWithTouchIndicator<CRedAndBlueSpd>
113836:  ADDS            R0, #8
113838:  STR             R0, [R4,#0x20]
11383A:  ADD.W           R0, R4, #0x28 ; '('
11383E:  BL              sub_1630A8
113842:  ADD.W           R0, R4, #0x24 ; '$'
113846:  BL              sub_1630A8
11384A:  LDR             R0, =(_ZTV24SpdWithDefSpeddIndicatorI14CRedAndBlueSpdE - 0x113850); `vtable for'SpdWithDefSpeddIndicator<CRedAndBlueSpd> ...
11384C:  ADD             R0, PC; `vtable for'SpdWithDefSpeddIndicator<CRedAndBlueSpd>
11384E:  ADDS            R0, #8
113850:  STR             R0, [R4,#0x18]
113852:  ADD.W           R0, R4, #0x1C
113856:  BL              sub_1630A8
11385A:  LDR             R0, =(_ZTV9SpdWithBGI14CRedAndBlueSpdE - 0x113860); `vtable for'SpdWithBG<CRedAndBlueSpd> ...
11385C:  ADD             R0, PC; `vtable for'SpdWithBG<CRedAndBlueSpd>
11385E:  ADDS            R0, #8
113860:  STR             R0, [R4,#0x10]
113862:  ADD.W           R0, R4, #0x14
113866:  BL              sub_1630A8
11386A:  MOV             R0, R4
11386C:  POP             {R4,R6,R7,PC}
