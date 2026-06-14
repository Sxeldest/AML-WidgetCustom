; =========================================================
; Game Engine Function: _ZN14CRunningScript4InitEv
; Address            : 0x329BE4 - 0x329C50
; =========================================================

329BE4:  PUSH            {R4,R5,R7,LR}
329BE6:  ADD             R7, SP, #8
329BE8:  MOV             R4, R0
329BEA:  MOVS            R5, #0
329BEC:  MOVW            R0, #0x656D
329BF0:  STRB            R5, [R4,#0xE]
329BF2:  STRH            R0, [R4,#0xC]
329BF4:  MOV             R0, #0x616E6F6E
329BFC:  STRD.W          R5, R5, [R4]
329C00:  STR.W           R5, [R4,#0xEC]
329C04:  VMOV.I32        Q8, #0
329C08:  STR             R0, [R4,#8]
329C0A:  MOVS            R0, #0xFF
329C0C:  STR.W           R5, [R4,#0xE4]
329C10:  MOVS            R1, #0xA8
329C12:  STRB.W          R5, [R4,#0xE8]
329C16:  STRB.W          R0, [R4,#0xE9]
329C1A:  ADD.W           R0, R4, #0x2A ; '*'
329C1E:  VST1.16         {D16-D17}, [R0]
329C22:  ADD.W           R0, R4, #0x20 ; ' '
329C26:  VST1.32         {D16-D17}, [R0]
329C2A:  ADD.W           R0, R4, #0x10
329C2E:  VST1.32         {D16-D17}, [R0]
329C32:  ADD.W           R0, R4, #0x3C ; '<'
329C36:  BLX             j___aeabi_memclr8_0
329C3A:  MOV.W           R0, #0x1000000
329C3E:  STRB.W          R5, [R4,#0xF4]
329C42:  STR.W           R0, [R4,#0xF0]
329C46:  STR.W           R5, [R4,#0xF8]
329C4A:  STRB.W          R5, [R4,#0xFC]
329C4E:  POP             {R4,R5,R7,PC}
