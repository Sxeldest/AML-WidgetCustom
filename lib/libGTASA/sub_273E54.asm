; =========================================================
; Game Engine Function: sub_273E54
; Address            : 0x273E54 - 0x273EBA
; =========================================================

273E54:  LDR             R0, =(byte_6DF874 - 0x273E5A)
273E56:  ADD             R0, PC; byte_6DF874
273E58:  LDRB            R0, [R0]
273E5A:  CMP             R0, #0
273E5C:  IT NE
273E5E:  BXNE            LR
273E60:  PUSH            {R4,R5,R7,LR}
273E62:  ADD             R7, SP, #0x10+var_8
273E64:  SUB             SP, SP, #0x18
273E66:  LDR             R4, =(aNvevent - 0x273E70); "NVEvent"
273E68:  ADR             R2, aPostingQuitEve; "Posting quit event"
273E6A:  MOVS            R0, #3; prio
273E6C:  ADD             R4, PC; "NVEvent"
273E6E:  MOV             R1, R4; tag
273E70:  BLX             __android_log_print
273E74:  LDR             R5, =(dword_6D8200 - 0x273E7A)
273E76:  ADD             R5, PC; dword_6D8200
273E78:  LDR             R0, [R5]
273E7A:  STR             R0, [R5,#(dword_6D8204 - 0x6D8200)]
273E7C:  MOVS            R0, #7
273E7E:  STR             R0, [SP,#0x28+var_28]
273E80:  MOV             R0, SP
273E82:  BL              sub_27C4F0
273E86:  MOVS            R0, #0
273E88:  STRB            R0, [R5,#(byte_6D8210 - 0x6D8200)]
273E8A:  ADD.W           R0, R5, #0xC; cond
273E8E:  BLX             pthread_cond_broadcast
273E92:  ADR             R2, aWaitingForMain; "Waiting for main loop exit"
273E94:  MOVS            R0, #3; prio
273E96:  MOV             R1, R4; tag
273E98:  BLX             __android_log_print
273E9C:  LDR             R0, =(dword_6DF878 - 0x273EA4)
273E9E:  MOVS            R1, #0; thread_return
273EA0:  ADD             R0, PC; dword_6DF878
273EA2:  LDR             R0, [R0]; th
273EA4:  BLX             pthread_join
273EA8:  ADR             R2, aMainLoopExited; "Main loop exited"
273EAA:  MOVS            R0, #3; prio
273EAC:  MOV             R1, R4; tag
273EAE:  BLX             __android_log_print
273EB2:  ADD             SP, SP, #0x18
273EB4:  POP.W           {R4,R5,R7,LR}
273EB8:  BX              LR
