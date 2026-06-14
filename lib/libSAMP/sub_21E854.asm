; =========================================================
; Game Engine Function: sub_21E854
; Address            : 0x21E854 - 0x21E870
; =========================================================

21E854:  PUSH            {R4,R5,R7,LR}
21E856:  ADD             R7, SP, #8
21E858:  MOV             R5, R0
21E85A:  MOV             R0, R1; void *
21E85C:  MOV             R4, R1
21E85E:  BLX             j___cxa_begin_catch
21E862:  CBZ             R5, loc_21E86C
21E864:  LDR.W           R0, [R4,#-0x14]
21E868:  BL              sub_21E258
21E86C:  BLX             j__ZSt9terminatev; std::terminate(void)
