; =========================================================
; Game Engine Function: sub_157AF0
; Address            : 0x157AF0 - 0x157B0E
; =========================================================

157AF0:  PUSH            {R4,R6,R7,LR}
157AF2:  ADD             R7, SP, #8
157AF4:  LDR             R4, =(_ZTV13AudioRecorder - 0x157B02); `vtable for'AudioRecorder ...
157AF6:  MOV.W           R3, #0x3F800000
157AFA:  STR             R3, [R0,#0x14]
157AFC:  MOVS            R3, #0
157AFE:  ADD             R4, PC; `vtable for'AudioRecorder
157B00:  STRB            R3, [R0,#0x10]
157B02:  ADDS            R4, #8
157B04:  STRD.W          R4, R3, [R0]
157B08:  STRD.W          R1, R2, [R0,#8]
157B0C:  POP             {R4,R6,R7,PC}
