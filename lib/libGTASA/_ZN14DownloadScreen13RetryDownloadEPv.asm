; =========================================================
; Game Engine Function: _ZN14DownloadScreen13RetryDownloadEPv
; Address            : 0x2A80C4 - 0x2A80E2
; =========================================================

2A80C4:  PUSH            {R4,R6,R7,LR}
2A80C6:  ADD             R7, SP, #8
2A80C8:  LDR             R1, =(CurrentDownloadingError_ptr - 0x2A80D2)
2A80CA:  MOVS            R3, #0
2A80CC:  LDR             R2, =(startDownloadTime_ptr - 0x2A80D6)
2A80CE:  ADD             R1, PC; CurrentDownloadingError_ptr
2A80D0:  STR             R3, [R0,#0x48]
2A80D2:  ADD             R2, PC; startDownloadTime_ptr
2A80D4:  LDR             R1, [R1]; CurrentDownloadingError
2A80D6:  LDR             R4, [R2]; startDownloadTime
2A80D8:  STR             R3, [R1]
2A80DA:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
2A80DE:  STR             R0, [R4]
2A80E0:  POP             {R4,R6,R7,PC}
