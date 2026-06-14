; =========================================================
; Game Engine Function: sub_E9E1C
; Address            : 0xE9E1C - 0xE9E46
; =========================================================

E9E1C:  PUSH            {R4-R7,LR}
E9E1E:  ADD             R7, SP, #0xC
E9E20:  PUSH.W          {R11}
E9E24:  MOV             R4, R1
E9E26:  MOV             R5, R0
E9E28:  BL              sub_E9E46
E9E2C:  MOV             R6, R0
E9E2E:  ADDS            R0, R5, #4
E9E30:  ADD.W           R1, R4, #0x10
E9E34:  BL              sub_E5EAC
E9E38:  MOV             R0, R4; void *
E9E3A:  BLX             j__ZdlPv; operator delete(void *)
E9E3E:  MOV             R0, R6
E9E40:  POP.W           {R11}
E9E44:  POP             {R4-R7,PC}
