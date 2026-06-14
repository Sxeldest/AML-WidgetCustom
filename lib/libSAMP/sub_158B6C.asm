; =========================================================
; Game Engine Function: sub_158B6C
; Address            : 0x158B6C - 0x158B8A
; =========================================================

158B6C:  PUSH            {R4,R6,R7,LR}
158B6E:  ADD             R7, SP, #8
158B70:  MOV             R4, R0
158B72:  LDR             R0, [R0]; stream
158B74:  CBZ             R0, loc_158B7E
158B76:  BLX             fclose
158B7A:  MOVS            R0, #0
158B7C:  STR             R0, [R4]
158B7E:  LDR             R0, [R4,#8]; this
158B80:  CBZ             R0, loc_158B86
158B82:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
158B86:  MOV             R0, R4
158B88:  POP             {R4,R6,R7,PC}
