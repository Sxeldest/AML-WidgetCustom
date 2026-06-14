; =========================================================
; Game Engine Function: sub_11F17C
; Address            : 0x11F17C - 0x11F1A2
; =========================================================

11F17C:  PUSH            {R4,R6,R7,LR}
11F17E:  ADD             R7, SP, #8
11F180:  SUB             SP, SP, #8
11F182:  MOV             R4, R0
11F184:  BL              sub_11F1A8
11F188:  LDR             R0, =(unk_263868 - 0x11F190)
11F18A:  STR             R4, [SP,#0x10+var_C]
11F18C:  ADD             R0, PC; unk_263868
11F18E:  LDR             R0, [R0,#(dword_263878 - 0x263868)]
11F190:  CBZ             R0, loc_11F19E
11F192:  LDR             R1, [R0]
11F194:  LDR             R2, [R1,#0x18]
11F196:  ADD             R1, SP, #0x10+var_C
11F198:  BLX             R2
11F19A:  ADD             SP, SP, #8
11F19C:  POP             {R4,R6,R7,PC}
11F19E:  BL              sub_DC92C
