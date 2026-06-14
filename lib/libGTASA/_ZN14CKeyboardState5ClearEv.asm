; =========================================================
; Game Engine Function: _ZN14CKeyboardState5ClearEv
; Address            : 0x3F82D4 - 0x3F8306
; =========================================================

3F82D4:  PUSH            {R4,R6,R7,LR}
3F82D6:  ADD             R7, SP, #8
3F82D8:  MOV.W           R1, #0x23C
3F82DC:  MOV             R4, R0
3F82DE:  BLX             j___aeabi_memclr8_1
3F82E2:  MOVS            R0, #0
3F82E4:  VMOV.I32        Q8, #0
3F82E8:  STRH.W          R0, [R4,#0x26E]
3F82EC:  ADDW            R0, R4, #0x25E
3F82F0:  VST1.16         {D16-D17}, [R0]
3F82F4:  ADDW            R0, R4, #0x24E
3F82F8:  VST1.16         {D16-D17}, [R0]
3F82FC:  ADDW            R0, R4, #0x23E
3F8300:  VST1.16         {D16-D17}, [R0]
3F8304:  POP             {R4,R6,R7,PC}
