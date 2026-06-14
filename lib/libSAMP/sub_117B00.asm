; =========================================================
; Game Engine Function: sub_117B00
; Address            : 0x117B00 - 0x117B1C
; =========================================================

117B00:  PUSH            {R4,R6,R7,LR}
117B02:  ADD             R7, SP, #8
117B04:  MOV             R4, R0
117B06:  LDR             R0, =(_ZTV24SpdWithDefSpeddIndicatorI14CRedAndBlueSpdE - 0x117B0C); `vtable for'SpdWithDefSpeddIndicator<CRedAndBlueSpd> ...
117B08:  ADD             R0, PC; `vtable for'SpdWithDefSpeddIndicator<CRedAndBlueSpd>
117B0A:  ADD.W           R1, R0, #8
117B0E:  MOV             R0, R4
117B10:  STR.W           R1, [R0],#4
117B14:  BL              sub_1630A8
117B18:  MOV             R0, R4
117B1A:  POP             {R4,R6,R7,PC}
