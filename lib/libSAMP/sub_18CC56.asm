; =========================================================
; Game Engine Function: sub_18CC56
; Address            : 0x18CC56 - 0x18CC74
; =========================================================

18CC56:  PUSH            {R7,LR}
18CC58:  MOV             R7, SP
18CC5A:  MOV             R0, R1; name
18CC5C:  BLX             gethostbyname
18CC60:  CBZ             R0, loc_18CC70
18CC62:  LDR             R0, [R0,#0x10]
18CC64:  LDR             R0, [R0]
18CC66:  CBZ             R0, loc_18CC70
18CC68:  LDR             R0, [R0]; in
18CC6A:  BLX             inet_ntoa
18CC6E:  POP             {R7,PC}
18CC70:  MOVS            R0, #0
18CC72:  POP             {R7,PC}
