; =========================================================
; Game Engine Function: sub_6C26C
; Address            : 0x6C26C - 0x6C2B4
; =========================================================

6C26C:  PUSH            {R4,R5,R7,LR}
6C26E:  ADD             R7, SP, #8
6C270:  LDR             R0, =(off_114AA8 - 0x6C27E)
6C272:  MOV             R5, #0xA987C8
6C27A:  ADD             R0, PC; off_114AA8
6C27C:  LDR             R4, [R0]; dword_1A4404
6C27E:  LDR             R0, [R4]
6C280:  LDR             R1, [R0,R5]
6C282:  CMP             R1, #7
6C284:  BEQ             loc_6C292
6C286:  MOV.W           R0, #0x1F4; useconds
6C28A:  BLX             usleep
6C28E:  LDR             R0, [R4]
6C290:  B               loc_6C280
6C292:  LDR             R1, =(aSampOrig - 0x6C2A4); "SAMP_ORIG" ...
6C294:  MOVW            R3, #0x687C
6C298:  LDR             R2, =(aGameStorageS - 0x6C2A6); "Game storage: %s" ...
6C29A:  MOVT            R3, #0x6D ; 'm'
6C29E:  ADD             R3, R0
6C2A0:  ADD             R1, PC; "SAMP_ORIG"
6C2A2:  ADD             R2, PC; "Game storage: %s"
6C2A4:  MOVS            R0, #4; prio
6C2A6:  BLX             __android_log_print
6C2AA:  BL              sub_684C8
6C2AE:  MOVS            R0, #0; retval
6C2B0:  BLX             pthread_exit
