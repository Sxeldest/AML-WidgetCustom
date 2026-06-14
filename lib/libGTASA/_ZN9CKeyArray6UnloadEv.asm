; =========================================================
; Game Engine Function: _ZN9CKeyArray6UnloadEv
; Address            : 0x54D48E - 0x54D4A6
; =========================================================

54D48E:  PUSH            {R4,R6,R7,LR}
54D490:  ADD             R7, SP, #8
54D492:  MOV             R4, R0
54D494:  LDR             R0, [R4]; void *
54D496:  CBZ             R0, loc_54D4A0
54D498:  BLX             _ZdaPv; operator delete[](void *)
54D49C:  MOVS            R0, #0
54D49E:  STR             R0, [R4]
54D4A0:  MOVS            R0, #0
54D4A2:  STR             R0, [R4,#4]
54D4A4:  POP             {R4,R6,R7,PC}
