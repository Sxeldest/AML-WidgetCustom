; =========================================================
; Game Engine Function: sub_117AD0
; Address            : 0x117AD0 - 0x117AF2
; =========================================================

117AD0:  PUSH            {R4,R6,R7,LR}
117AD2:  ADD             R7, SP, #8
117AD4:  MOV             R4, R0
117AD6:  LDR             R0, =(_ZTV21SpdWithTouchIndicatorI14CRedAndBlueSpdE - 0x117ADC); `vtable for'SpdWithTouchIndicator<CRedAndBlueSpd> ...
117AD8:  ADD             R0, PC; `vtable for'SpdWithTouchIndicator<CRedAndBlueSpd>
117ADA:  ADD.W           R1, R0, #8
117ADE:  MOV             R0, R4
117AE0:  STR.W           R1, [R0],#8
117AE4:  BL              sub_1630A8
117AE8:  ADDS            R0, R4, #4
117AEA:  BL              sub_1630A8
117AEE:  MOV             R0, R4
117AF0:  POP             {R4,R6,R7,PC}
