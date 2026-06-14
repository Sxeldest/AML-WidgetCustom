; =========================================================
; Game Engine Function: sub_115EE8
; Address            : 0x115EE8 - 0x115F36
; =========================================================

115EE8:  PUSH            {R4-R7,LR}
115EEA:  ADD             R7, SP, #0xC
115EEC:  PUSH.W          {R11}
115EF0:  MOV             R4, R0
115EF2:  LDR             R0, =(_ZTV14CRedAndBlueHud - 0x115EF8); `vtable for'CRedAndBlueHud ...
115EF4:  ADD             R0, PC; `vtable for'CRedAndBlueHud
115EF6:  ADDS            R0, #8
115EF8:  STR             R0, [R4]
115EFA:  MOV             R0, R4
115EFC:  BL              sub_1175E4
115F00:  ADD.W           R5, R4, #0x24 ; '$'
115F04:  MOV             R0, R5
115F06:  BL              sub_1630A8
115F0A:  ADD.W           R6, R4, #0x28 ; '('
115F0E:  MOV             R0, R6
115F10:  BL              sub_1630A8
115F14:  ADD.W           R0, R4, #0x2C ; ','
115F18:  BL              sub_1630A8
115F1C:  MOV             R0, R6
115F1E:  BL              sub_1630A8
115F22:  MOV             R0, R5
115F24:  BL              sub_1630A8
115F28:  MOV             R0, R4
115F2A:  POP.W           {R11}
115F2E:  POP.W           {R4-R7,LR}
115F32:  B.W             sub_117584
