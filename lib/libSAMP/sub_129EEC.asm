; =========================================================
; Game Engine Function: sub_129EEC
; Address            : 0x129EEC - 0x129F10
; =========================================================

129EEC:  PUSH            {R4,R6,R7,LR}
129EEE:  ADD             R7, SP, #8
129EF0:  LDR             R1, =(_ZTV2UI - 0x129EFA); `vtable for'UI ...
129EF2:  MOV             R4, R0
129EF4:  LDR             R0, [R0,#0x54]
129EF6:  ADD             R1, PC; `vtable for'UI
129EF8:  ADD.W           R1, R1, #8
129EFC:  STR             R1, [R4]
129EFE:  CBZ             R0, loc_129F06
129F00:  LDR             R1, [R0]
129F02:  LDR             R1, [R1,#0x14]
129F04:  BLX             R1
129F06:  MOV             R0, R4
129F08:  POP.W           {R4,R6,R7,LR}
129F0C:  B.W             sub_12BCE4
