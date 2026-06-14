; =========================================================
; Game Engine Function: _ZN9CPedGroup5FlushEv
; Address            : 0x4B6D36 - 0x4B6D54
; =========================================================

4B6D36:  PUSH            {R4,R6,R7,LR}
4B6D38:  ADD             R7, SP, #8
4B6D3A:  MOV             R4, R0
4B6D3C:  ADD.W           R0, R4, #8; this
4B6D40:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B6D44:  ADD.W           R0, R4, #0x30 ; '0'; this
4B6D48:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B6D4C:  MOVS            R0, #0
4B6D4E:  STRB.W          R0, [R4,#0x2D0]
4B6D52:  POP             {R4,R6,R7,PC}
