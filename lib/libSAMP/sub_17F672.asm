; =========================================================
; Game Engine Function: sub_17F672
; Address            : 0x17F672 - 0x17F68A
; =========================================================

17F672:  PUSH            {R4,R6,R7,LR}
17F674:  ADD             R7, SP, #8
17F676:  MOV.W           R0, #0x2F80; unsigned int
17F67A:  BLX             j__Znwj; operator new(uint)
17F67E:  MOV             R4, R0
17F680:  BL              sub_17E85C
17F684:  ADD.W           R0, R4, #0x9D0
17F688:  POP             {R4,R6,R7,PC}
