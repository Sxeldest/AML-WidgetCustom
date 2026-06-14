; =========================================================
; Game Engine Function: sub_11127C
; Address            : 0x11127C - 0x1112A2
; =========================================================

11127C:  PUSH            {R4,R6,R7,LR}
11127E:  ADD             R7, SP, #8
111280:  SUB             SP, SP, #8
111282:  MOV             R4, R0
111284:  BL              sub_1112A8
111288:  LDR             R0, =(unk_263418 - 0x111290)
11128A:  STR             R4, [SP,#0x10+var_C]
11128C:  ADD             R0, PC; unk_263418
11128E:  LDR             R0, [R0,#(dword_263428 - 0x263418)]
111290:  CBZ             R0, loc_11129E
111292:  LDR             R1, [R0]
111294:  LDR             R2, [R1,#0x18]
111296:  ADD             R1, SP, #0x10+var_C
111298:  BLX             R2
11129A:  ADD             SP, SP, #8
11129C:  POP             {R4,R6,R7,PC}
11129E:  BL              sub_DC92C
