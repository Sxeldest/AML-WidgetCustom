; =========================================================
; Game Engine Function: sub_6BB0C
; Address            : 0x6BB0C - 0x6BB32
; =========================================================

6BB0C:  PUSH            {R7,LR}
6BB0E:  MOV             R7, SP
6BB10:  LDR             R1, =(aSampOrig - 0x6BB1A); "SAMP_ORIG" ...
6BB12:  MOVS            R0, #4; prio
6BB14:  LDR             R2, =(aRpcScrstopaudi - 0x6BB1C); "RPC: ScrStopAudioStream" ...
6BB16:  ADD             R1, PC; "SAMP_ORIG"
6BB18:  ADD             R2, PC; "RPC: ScrStopAudioStream"
6BB1A:  BLX             __android_log_print
6BB1E:  LDR             R0, =(off_114BE4 - 0x6BB24)
6BB20:  ADD             R0, PC; off_114BE4
6BB22:  LDR             R0, [R0]; dword_1A4430
6BB24:  LDR             R0, [R0]
6BB26:  CMP             R0, #0
6BB28:  ITT NE
6BB2A:  MOVNE           R1, #0
6BB2C:  BLNE            sub_60318
6BB30:  POP             {R7,PC}
