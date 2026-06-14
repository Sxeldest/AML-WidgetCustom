; =========================================================
; Game Engine Function: sub_1EE05A
; Address            : 0x1EE05A - 0x1EE06C
; =========================================================

1EE05A:  PUSH            {R4,R6,R7,LR}
1EE05C:  ADD             R7, SP, #8
1EE05E:  MOV             R4, R0
1EE060:  MOVS            R0, #0; this
1EE062:  STR             R0, [R4]
1EE064:  BLX             j__ZNSt6__ndk115system_categoryEv; std::system_category(void)
1EE068:  STR             R0, [R4,#4]
1EE06A:  POP             {R4,R6,R7,PC}
