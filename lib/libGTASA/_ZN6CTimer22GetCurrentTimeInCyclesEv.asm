; =========================================================
; Game Engine Function: _ZN6CTimer22GetCurrentTimeInCyclesEv
; Address            : 0x420FF0 - 0x421016
; =========================================================

420FF0:  PUSH            {R7,LR}
420FF2:  MOV             R7, SP
420FF4:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
420FF8:  VLDR            D16, =1000000.0
420FFC:  VMOV            D17, R0, R1
421000:  VMUL.F64        D16, D17, D16
421004:  VMOV            R0, R1, D16
421008:  BLX             __aeabi_d2ulz
42100C:  LDR             R1, =(dword_96B528 - 0x421012)
42100E:  ADD             R1, PC; dword_96B528
421010:  LDR             R1, [R1]
421012:  SUBS            R0, R0, R1
421014:  POP             {R7,PC}
