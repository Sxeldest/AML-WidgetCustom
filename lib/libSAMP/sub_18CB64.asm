; =========================================================
; Game Engine Function: sub_18CB64
; Address            : 0x18CB64 - 0x18CB72
; =========================================================

18CB64:  PUSH            {R4,R6,R7,LR}
18CB66:  ADD             R7, SP, #8
18CB68:  MOV             R4, R0
18CB6A:  BLX             DeleteCriticalSection_0
18CB6E:  MOV             R0, R4
18CB70:  POP             {R4,R6,R7,PC}
