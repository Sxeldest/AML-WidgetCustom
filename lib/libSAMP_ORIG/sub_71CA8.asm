; =========================================================
; Game Engine Function: sub_71CA8
; Address            : 0x71CA8 - 0x71CF4
; =========================================================

71CA8:  PUSH            {R4,R5,R7,LR}
71CAA:  ADD             R7, SP, #8
71CAC:  MOV             R4, R0
71CAE:  LDR             R0, =(_ZTV12ImGuiWrapper - 0x71CB6); `vtable for'ImGuiWrapper ...
71CB0:  LDR             R1, =(aSampOrig - 0x71CBC); "SAMP_ORIG" ...
71CB2:  ADD             R0, PC; `vtable for'ImGuiWrapper
71CB4:  LDR             R2, =(aImguiwrapperSh - 0x71CBE); "ImGuiWrapper::shutdown" ...
71CB6:  ADDS            R0, #8
71CB8:  ADD             R1, PC; "SAMP_ORIG"
71CBA:  ADD             R2, PC; "ImGuiWrapper::shutdown"
71CBC:  STR             R0, [R4]
71CBE:  MOVS            R0, #4; prio
71CC0:  BLX             __android_log_print
71CC4:  LDR             R0, [R4,#0x20]
71CC6:  CBZ             R0, loc_71CE4
71CC8:  BL              sub_8C514
71CCC:  MOV             R5, R0
71CCE:  LDR             R0, =(off_114AE4 - 0x71CD4)
71CD0:  ADD             R0, PC; off_114AE4
71CD2:  LDR             R1, [R0]; off_11756C
71CD4:  LDR             R0, [R4,#0x20]
71CD6:  LDR             R1, [R1]
71CD8:  BLX             R1
71CDA:  LDR.W           R0, [R5,#0x8C]
71CDE:  MOVS            R1, #0
71CE0:  STR             R1, [R4,#0x20]
71CE2:  STR             R1, [R0,#8]
71CE4:  LDRB            R0, [R4,#0xC]
71CE6:  LSLS            R0, R0, #0x1F
71CE8:  ITT NE
71CEA:  LDRNE           R0, [R4,#0x14]; void *
71CEC:  BLXNE           j__ZdlPv; operator delete(void *)
71CF0:  MOV             R0, R4
71CF2:  POP             {R4,R5,R7,PC}
