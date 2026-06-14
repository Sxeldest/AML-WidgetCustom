; =========================================================
; Game Engine Function: _ZN32CTaskComplexObserveTrafficLightsC2Ev
; Address            : 0x4ECA80 - 0x4ECA9C
; =========================================================

4ECA80:  PUSH            {R7,LR}
4ECA82:  MOV             R7, SP
4ECA84:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4ECA88:  LDR             R1, =(_ZTV32CTaskComplexObserveTrafficLights_ptr - 0x4ECA92)
4ECA8A:  MOVS            R2, #0
4ECA8C:  STRH            R2, [R0,#0x14]
4ECA8E:  ADD             R1, PC; _ZTV32CTaskComplexObserveTrafficLights_ptr
4ECA90:  STRD.W          R2, R2, [R0,#0xC]
4ECA94:  LDR             R1, [R1]; `vtable for'CTaskComplexObserveTrafficLights ...
4ECA96:  ADDS            R1, #8
4ECA98:  STR             R1, [R0]
4ECA9A:  POP             {R7,PC}
