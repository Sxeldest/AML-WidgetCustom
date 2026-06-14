; =========================================================
; Game Engine Function: _Z21GetOSWPerformanceTimev
; Address            : 0x420A40 - 0x420A5E
; =========================================================

420A40:  PUSH            {R7,LR}
420A42:  MOV             R7, SP
420A44:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
420A48:  VLDR            D16, =1000000.0
420A4C:  VMOV            D17, R0, R1
420A50:  VMUL.F64        D16, D17, D16
420A54:  VMOV            R0, R1, D16
420A58:  BLX             __aeabi_d2ulz
420A5C:  POP             {R7,PC}
