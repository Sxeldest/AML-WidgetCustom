; =========================================================
; Game Engine Function: sub_143520
; Address            : 0x143520 - 0x14354C
; =========================================================

143520:  PUSH            {R4,R5,R7,LR}
143522:  ADD             R7, SP, #8
143524:  MOV             R4, R0
143526:  LDR.W           R0, [R0,#0x3B0]
14352A:  LDR             R0, [R0,#4]
14352C:  CBZ             R0, loc_143536
14352E:  BL              sub_14FE70
143532:  BLX             j__ZdlPv; operator delete(void *)
143536:  MOVW            R0, #0xEA6C; unsigned int
14353A:  BLX             j__Znwj; operator new(uint)
14353E:  MOV             R5, R0
143540:  BL              sub_14FE50
143544:  LDR.W           R0, [R4,#0x3B0]
143548:  STR             R5, [R0,#4]
14354A:  POP             {R4,R5,R7,PC}
