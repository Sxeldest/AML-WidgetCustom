; =========================================================
; Game Engine Function: sub_14A618
; Address            : 0x14A618 - 0x14A660
; =========================================================

14A618:  PUSH            {R4,R6,R7,LR}
14A61A:  ADD             R7, SP, #8
14A61C:  MOV             R4, R0
14A61E:  LDR.W           R0, [R0,#0x128]
14A622:  CBZ             R0, loc_14A652
14A624:  MOV             R0, R4
14A626:  BL              sub_149278
14A62A:  LDR             R1, =(aAxl - 0x14A638); "AXL" ...
14A62C:  MOVS            R0, #3; prio
14A62E:  LDR             R2, =(aRemovePlayerP - 0x14A63A); "Remove player %p" ...
14A630:  LDR.W           R3, [R4,#0x128]
14A634:  ADD             R1, PC; "AXL"
14A636:  ADD             R2, PC; "Remove player %p"
14A638:  BLX             __android_log_print
14A63C:  LDR             R0, =(off_234970 - 0x14A646)
14A63E:  LDR.W           R1, [R4,#0x128]
14A642:  ADD             R0, PC; off_234970
14A644:  LDR             R0, [R0]; dword_23DEF0
14A646:  LDR             R0, [R0]
14A648:  BL              sub_F9E64
14A64C:  MOVS            R0, #0
14A64E:  STR.W           R0, [R4,#0x128]
14A652:  LDRB            R0, [R4,#0x19]
14A654:  CBZ             R0, loc_14A65A
14A656:  MOVS            R0, #0
14A658:  STRB            R0, [R4,#0x19]
14A65A:  MOVS            R0, #1
14A65C:  STRB            R0, [R4]
14A65E:  POP             {R4,R6,R7,PC}
