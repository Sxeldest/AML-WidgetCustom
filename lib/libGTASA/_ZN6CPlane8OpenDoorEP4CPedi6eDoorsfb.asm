; =========================================================
; Game Engine Function: _ZN6CPlane8OpenDoorEP4CPedi6eDoorsfb
; Address            : 0x578D28 - 0x578D46
; =========================================================

578D28:  PUSH            {R7,LR}
578D2A:  MOV             R7, SP
578D2C:  SUB             SP, SP, #8; float
578D2E:  VLDR            S0, [R7,#8]
578D32:  LDR.W           R12, [R7,#0xC]
578D36:  STR.W           R12, [SP,#0x10+var_C]; int
578D3A:  VSTR            S0, [SP,#0x10+var_10]
578D3E:  BLX             j__ZN11CAutomobile8OpenDoorEP4CPedi6eDoorsfb; CAutomobile::OpenDoor(CPed *,int,eDoors,float,bool)
578D42:  ADD             SP, SP, #8
578D44:  POP             {R7,PC}
