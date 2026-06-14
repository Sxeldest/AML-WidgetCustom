; =========================================================
; Game Engine Function: _ZN4llmo3mem8pageSizeEv
; Address            : 0x1E2AC4 - 0x1E2AD0
; =========================================================

1E2AC4:  PUSH            {R7,LR}
1E2AC6:  MOV             R7, SP
1E2AC8:  MOVS            R0, #0x27 ; '''; name
1E2ACA:  BLX             sysconf
1E2ACE:  POP             {R7,PC}
