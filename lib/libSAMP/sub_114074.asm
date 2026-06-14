; =========================================================
; Game Engine Function: sub_114074
; Address            : 0x114074 - 0x11412A
; =========================================================

114074:  PUSH            {R4,R6,R7,LR}
114076:  ADD             R7, SP, #8
114078:  MOV             R4, R0
11407A:  LDR             R0, =(off_234B20 - 0x114080)
11407C:  ADD             R0, PC; off_234B20
11407E:  LDR             R0, [R0]; `vtable for'CTransparentSpd ...
114080:  ADD.W           R1, R0, #0x88
114084:  STR             R1, [R4,#0x20]
114086:  ADD.W           R1, R0, #0x78 ; 'x'
11408A:  STR             R1, [R4,#0x18]
11408C:  ADD.W           R1, R0, #0x60 ; '`'
114090:  ADDS            R0, #8
114092:  STR             R1, [R4,#0x10]
114094:  STR             R0, [R4]
114096:  ADD.W           R0, R4, #0x74 ; 't'
11409A:  BL              sub_1630A8
11409E:  ADD.W           R0, R4, #0x70 ; 'p'
1140A2:  BL              sub_1630A8
1140A6:  ADD.W           R0, R4, #0x6C ; 'l'
1140AA:  BL              sub_1630A8
1140AE:  ADD.W           R0, R4, #0x68 ; 'h'
1140B2:  BL              sub_1630A8
1140B6:  ADD.W           R0, R4, #0x64 ; 'd'
1140BA:  BL              sub_1630A8
1140BE:  ADD.W           R0, R4, #0x60 ; '`'
1140C2:  BL              sub_1630A8
1140C6:  ADD.W           R0, R4, #0x5C ; '\'
1140CA:  BL              sub_1630A8
1140CE:  ADD.W           R0, R4, #0x58 ; 'X'
1140D2:  BL              sub_1630A8
1140D6:  ADD.W           R0, R4, #0x54 ; 'T'
1140DA:  BL              sub_1630A8
1140DE:  ADD.W           R0, R4, #0x50 ; 'P'
1140E2:  BL              sub_1630A8
1140E6:  ADD.W           R0, R4, #0x4C ; 'L'
1140EA:  BL              sub_1630A8
1140EE:  LDR             R0, =(_ZTV21SpdWithTouchIndicatorI15CTransparentSpdE - 0x1140F4); `vtable for'SpdWithTouchIndicator<CTransparentSpd> ...
1140F0:  ADD             R0, PC; `vtable for'SpdWithTouchIndicator<CTransparentSpd>
1140F2:  ADDS            R0, #8
1140F4:  STR             R0, [R4,#0x20]
1140F6:  ADD.W           R0, R4, #0x28 ; '('
1140FA:  BL              sub_1630A8
1140FE:  ADD.W           R0, R4, #0x24 ; '$'
114102:  BL              sub_1630A8
114106:  LDR             R0, =(_ZTV24SpdWithDefSpeddIndicatorI15CTransparentSpdE - 0x11410C); `vtable for'SpdWithDefSpeddIndicator<CTransparentSpd> ...
114108:  ADD             R0, PC; `vtable for'SpdWithDefSpeddIndicator<CTransparentSpd>
11410A:  ADDS            R0, #8
11410C:  STR             R0, [R4,#0x18]
11410E:  ADD.W           R0, R4, #0x1C
114112:  BL              sub_1630A8
114116:  LDR             R0, =(_ZTV9SpdWithBGI15CTransparentSpdE - 0x11411C); `vtable for'SpdWithBG<CTransparentSpd> ...
114118:  ADD             R0, PC; `vtable for'SpdWithBG<CTransparentSpd>
11411A:  ADDS            R0, #8
11411C:  STR             R0, [R4,#0x10]
11411E:  ADD.W           R0, R4, #0x14
114122:  BL              sub_1630A8
114126:  MOV             R0, R4
114128:  POP             {R4,R6,R7,PC}
