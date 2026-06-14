; =========================================================
; Game Engine Function: sub_11A828
; Address            : 0x11A828 - 0x11A844
; =========================================================

11A828:  PUSH            {R4,R5,R7,LR}
11A82A:  ADD             R7, SP, #8
11A82C:  MOV             R4, R0
11A82E:  LDR             R0, [R0,#4]
11A830:  CBZ             R0, loc_11A834
11A832:  POP             {R4,R5,R7,PC}
11A834:  MOVS            R0, #0x50 ; 'P'; unsigned int
11A836:  BLX             j__Znwj; operator new(uint)
11A83A:  MOV             R5, R0
11A83C:  BL              sub_1193EC
11A840:  STR             R5, [R4,#4]
11A842:  POP             {R4,R5,R7,PC}
