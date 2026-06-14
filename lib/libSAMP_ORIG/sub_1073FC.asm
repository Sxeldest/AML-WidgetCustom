; =========================================================
; Game Engine Function: sub_1073FC
; Address            : 0x1073FC - 0x107418
; =========================================================

1073FC:  PUSH            {R4,R5,R7,LR}
1073FE:  ADD             R7, SP, #8
107400:  MOV             R5, R0
107402:  MOV             R0, R1; void *
107404:  MOV             R4, R1
107406:  BLX             j___cxa_begin_catch
10740A:  CBZ             R5, loc_107414
10740C:  LDR.W           R0, [R4,#-0x14]
107410:  BL              sub_106E00
107414:  BLX             j__ZSt9terminatev; std::terminate(void)
