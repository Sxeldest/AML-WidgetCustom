; =========================================================
; Game Engine Function: sub_F7220
; Address            : 0xF7220 - 0xF7238
; =========================================================

F7220:  PUSH            {R4,R5,R7,LR}
F7222:  ADD             R7, SP, #8
F7224:  MOV             R4, R1
F7226:  MOV             R5, R0
F7228:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F722C:  MOV             R2, R0; locale_t
F722E:  MOV             R0, R5; char *
F7230:  MOV             R1, R4; char **
F7232:  BLX             strtold_l
F7236:  POP             {R4,R5,R7,PC}
