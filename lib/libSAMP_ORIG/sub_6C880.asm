; =========================================================
; Game Engine Function: sub_6C880
; Address            : 0x6C880 - 0x6C8AC
; =========================================================

6C880:  PUSH            {R7,LR}
6C882:  MOV             R7, SP
6C884:  LDR             R0, =(off_114AB0 - 0x6C892)
6C886:  MOV             R1, #0x25B210
6C88E:  ADD             R0, PC; off_114AB0
6C890:  LDR             R0, [R0]; dword_1A4408
6C892:  LDR             R0, [R0]
6C894:  ADDS            R0, R0, R1
6C896:  IT NE
6C898:  POPNE           {R7,PC}
6C89A:  LDR             R1, =(aSampOrig - 0x6C8A4); "SAMP_ORIG" ...
6C89C:  MOVS            R0, #4; prio
6C89E:  LDR             R2, =(aLocalplayerkey - 0x6C8A6); "LocalPlayerKeys pointer is null" ...
6C8A0:  ADD             R1, PC; "SAMP_ORIG"
6C8A2:  ADD             R2, PC; "LocalPlayerKeys pointer is null"
6C8A4:  BLX             __android_log_print
6C8A8:  MOVS            R0, #0
6C8AA:  POP             {R7,PC}
