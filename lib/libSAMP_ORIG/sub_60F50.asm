; =========================================================
; Game Engine Function: sub_60F50
; Address            : 0x60F50 - 0x60F6E
; =========================================================

60F50:  PUSH            {R4,R6,R7,LR}
60F52:  ADD             R7, SP, #8
60F54:  LDR             R1, =(aSampOrig - 0x60F60); "SAMP_ORIG" ...
60F56:  MOV             R4, R0
60F58:  LDR             R2, =(aPlayeranimatio - 0x60F64); "PlayerAnimation::SetSpecialAction %u" ...
60F5A:  MOVS            R0, #4; prio
60F5C:  ADD             R1, PC; "SAMP_ORIG"
60F5E:  MOV             R3, R4
60F60:  ADD             R2, PC; "PlayerAnimation::SetSpecialAction %u"
60F62:  BLX             __android_log_print
60F66:  LDR             R0, =(byte_117518 - 0x60F6C)
60F68:  ADD             R0, PC; byte_117518
60F6A:  STRB            R4, [R0]
60F6C:  POP             {R4,R6,R7,PC}
