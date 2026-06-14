; =========================================================
; Game Engine Function: sub_16A834
; Address            : 0x16A834 - 0x16A87C
; =========================================================

16A834:  PUSH            {R4,R5,R7,LR}
16A836:  ADD             R7, SP, #8
16A838:  SUB             SP, SP, #8
16A83A:  MOV             R4, R0
16A83C:  LDR             R0, =(dword_381B58 - 0x16A846)
16A83E:  MOVW            R2, #0x2CF8
16A842:  ADD             R0, PC; dword_381B58
16A844:  LDR             R1, [R0]
16A846:  MOV.W           R0, #0
16A84A:  STR             R0, [R1,R2]
16A84C:  CBZ             R4, loc_16A878
16A84E:  STR             R0, [SP,#0x10+n]
16A850:  ADD             R0, SP, #0x10+n
16A852:  BL              sub_170E70
16A856:  LDR             R1, =(aWt - 0x16A860); "wt" ...
16A858:  MOV             R5, R0
16A85A:  MOV             R0, R4; filename
16A85C:  ADD             R1, PC; "wt" ; modes
16A85E:  BLX             fopen
16A862:  CBZ             R0, loc_16A878
16A864:  LDR             R2, [SP,#0x10+n]; n
16A866:  MOV             R4, R0
16A868:  MOV             R0, R5; ptr
16A86A:  MOVS            R1, #1; size
16A86C:  MOV             R3, R4; s
16A86E:  BLX             fwrite
16A872:  MOV             R0, R4; stream
16A874:  BLX             fclose
16A878:  ADD             SP, SP, #8
16A87A:  POP             {R4,R5,R7,PC}
