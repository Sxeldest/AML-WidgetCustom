; =========================================================
; Game Engine Function: alSourceStop
; Address            : 0x25AB70 - 0x25AB84
; =========================================================

25AB70:  PUSH            {R7,LR}
25AB72:  MOV             R7, SP
25AB74:  SUB             SP, SP, #8
25AB76:  ADD             R1, SP, #0x10+var_C
25AB78:  STR             R0, [SP,#0x10+var_C]
25AB7A:  MOVS            R0, #1
25AB7C:  BLX             j_alSourceStopv
25AB80:  ADD             SP, SP, #8
25AB82:  POP             {R7,PC}
