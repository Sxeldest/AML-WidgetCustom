; =========================================================
; Game Engine Function: _ZN13CMonsterTruck15ResetSuspensionEv
; Address            : 0x5747CC - 0x5747F4
; =========================================================

5747CC:  PUSH            {R4,R6,R7,LR}
5747CE:  ADD             R7, SP, #8
5747D0:  MOV             R4, R0
5747D2:  BLX             j__ZN11CAutomobile15ResetSuspensionEv; CAutomobile::ResetSuspension(void)
5747D6:  ADDW            R0, R4, #0x89C
5747DA:  VMOV.F32        Q8, #1.0
5747DE:  VLD1.32         {D18-D19}, [R0]
5747E2:  ADDW            R0, R4, #0x99C
5747E6:  VST1.32         {D16-D17}, [R0]
5747EA:  ADDW            R0, R4, #0x84C
5747EE:  VST1.32         {D18-D19}, [R0]
5747F2:  POP             {R4,R6,R7,PC}
