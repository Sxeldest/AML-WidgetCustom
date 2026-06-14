; =========================================================
; Game Engine Function: sub_106F48
; Address            : 0x106F48 - 0x106F5A
; =========================================================

106F48:  PUSH            {R7,LR}
106F4A:  MOV             R7, SP
106F4C:  LDR             R0, =(off_1172AC - 0x106F54); "uncaught" ...
106F4E:  LDR             R1, =(aUnexpected - 0x106F56); "unexpected" ...
106F50:  ADD             R0, PC; off_1172AC
106F52:  ADD             R1, PC; "unexpected"
106F54:  STR             R1, [R0]; "uncaught" ...
106F56:  BLX             j__ZSt9terminatev; std::terminate(void)
