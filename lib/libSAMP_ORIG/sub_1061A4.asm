; =========================================================
; Game Engine Function: sub_1061A4
; Address            : 0x1061A4 - 0x106204
; =========================================================

1061A4:  PUSH            {R4-R7,LR}
1061A6:  ADD             R7, SP, #0xC
1061A8:  PUSH.W          {R8}
1061AC:  MOV             R5, R0
1061AE:  LDR             R0, [R0,#0xC]
1061B0:  MOV             R4, R1
1061B2:  LDR             R1, [R0]
1061B4:  LDR             R2, [R1,#0x10]
1061B6:  MOV             R1, R4
1061B8:  BLX             R2
1061BA:  LDR             R0, [R5,#0xC]
1061BC:  MOV             R1, R4
1061BE:  BL              sub_10069E
1061C2:  LDR             R6, =(asc_4F675 - 0x1061C8); "(" ...
1061C4:  ADD             R6, PC; "("
1061C6:  ADD.W           R8, R6, #1
1061CA:  CBNZ            R0, loc_1061DE
1061CC:  LDR             R0, [R5,#0xC]
1061CE:  MOV             R1, R4
1061D0:  BL              sub_1006B2
1061D4:  CBNZ            R0, loc_1061DE
1061D6:  LDR             R6, =(asc_4B4F4 - 0x1061DC); " " ...
1061D8:  ADD             R6, PC; " "
1061DA:  ADD.W           R8, R6, #1
1061DE:  MOV             R0, R4
1061E0:  MOV             R1, R6
1061E2:  MOV             R2, R8
1061E4:  BL              sub_FFB40
1061E8:  LDR             R0, [R5,#8]
1061EA:  MOV             R1, R4
1061EC:  BL              sub_FE074
1061F0:  LDR             R1, =(asc_4C907 - 0x1061F8); "::*" ...
1061F2:  MOV             R0, R4
1061F4:  ADD             R1, PC; "::*"
1061F6:  ADDS            R2, R1, #3
1061F8:  POP.W           {R8}
1061FC:  POP.W           {R4-R7,LR}
106200:  B.W             sub_FFB40
