; =========================================================
; Game Engine Function: sub_20F070
; Address            : 0x20F070 - 0x20F088
; =========================================================

20F070:  PUSH            {R4,R5,R7,LR}
20F072:  ADD             R7, SP, #8
20F074:  MOV             R4, R1
20F076:  MOV             R5, R0
20F078:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20F07C:  MOV             R2, R0
20F07E:  MOV             R0, R5
20F080:  MOV             R1, R4
20F082:  BL              sub_220344
20F086:  POP             {R4,R5,R7,PC}
