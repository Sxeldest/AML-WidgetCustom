; =========================================================
; Game Engine Function: JNI_OnLoad
; Address            : 0x6AEC0 - 0x6AEE2
; =========================================================

6AEC0:  PUSH            {R4,R6,R7,LR}
6AEC2:  ADD             R7, SP, #8
6AEC4:  LDR             R1, =(aSampOrig - 0x6AED0); "SAMP_ORIG" ...
6AEC6:  MOV             R4, R0
6AEC8:  LDR             R2, =(aInitializingSa - 0x6AED2); "Initializing SAMP_ORIG library... Build"... ...
6AECA:  MOVS            R0, #4; prio
6AECC:  ADD             R1, PC; "SAMP_ORIG"
6AECE:  ADD             R2, PC; "Initializing SAMP_ORIG library... Build"...
6AED0:  BLX             __android_log_print
6AED4:  LDR             R0, =(dword_1A4400 - 0x6AEDA)
6AED6:  ADD             R0, PC; dword_1A4400
6AED8:  STR             R4, [R0]
6AEDA:  MOVS            R0, #0x10004
6AEE0:  POP             {R4,R6,R7,PC}
