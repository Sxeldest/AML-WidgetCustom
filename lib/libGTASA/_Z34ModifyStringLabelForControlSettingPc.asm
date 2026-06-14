; =========================================================
; Game Engine Function: _Z34ModifyStringLabelForControlSettingPc
; Address            : 0x31F660 - 0x31F682
; =========================================================

31F660:  PUSH            {R4,R6,R7,LR}
31F662:  ADD             R7, SP, #8
31F664:  MOV             R4, R0
31F666:  BLX             strlen
31F66A:  CMP             R0, #3
31F66C:  IT LT
31F66E:  POPLT           {R4,R6,R7,PC}
31F670:  ADD             R0, R4
31F672:  LDRB.W          R1, [R0,#-2]
31F676:  CMP             R1, #0x5F ; '_'
31F678:  ITT EQ
31F67A:  MOVEQ           R1, #0x4C ; 'L'
31F67C:  STRBEQ.W        R1, [R0,#-1]
31F680:  POP             {R4,R6,R7,PC}
