; =========================================================
; Game Engine Function: _Z18PerformanceWarningPKciS0_
; Address            : 0x1BD638 - 0x1BD644
; =========================================================

1BD638:  MOV             R3, R2
1BD63A:  MOV             R2, R1
1BD63C:  MOV             R1, R0
1BD63E:  ADR             R0, aSDPerfWarningS; "%s(%d): PERF WARNING: %s\n"
1BD640:  B.W             sub_5E6B18
