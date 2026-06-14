; =========================================================
; Game Engine Function: sub_158FF0
; Address            : 0x158FF0 - 0x15900E
; =========================================================

158FF0:  PUSH            {R4,R6,R7,LR}
158FF2:  ADD             R7, SP, #8
158FF4:  MOV             R4, R0
158FF6:  LDR             R0, =(off_234E60 - 0x158FFC)
158FF8:  ADD             R0, PC; off_234E60
158FFA:  LDR             R0, [R0]; `vtable for'BufferedAudioRecorder ...
158FFC:  ADD.W           R1, R0, #8
159000:  MOV             R0, R4
159002:  STR.W           R1, [R0],#0x18
159006:  BL              sub_15BC16
15900A:  MOV             R0, R4
15900C:  POP             {R4,R6,R7,PC}
