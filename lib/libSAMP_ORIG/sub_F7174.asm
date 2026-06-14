; =========================================================
; Game Engine Function: sub_F7174
; Address            : 0xF7174 - 0xF718A
; =========================================================

F7174:  PUSH            {R4,R5,R7,LR}
F7176:  ADD             R7, SP, #8
F7178:  MOV             R4, R1
F717A:  MOV             R5, R0
F717C:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F7180:  MOV             R0, R5; nptr
F7182:  MOV             R1, R4; endptr
F7184:  BLX             strtod
F7188:  POP             {R4,R5,R7,PC}
