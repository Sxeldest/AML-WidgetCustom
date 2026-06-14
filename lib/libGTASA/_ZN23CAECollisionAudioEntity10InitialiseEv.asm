; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity10InitialiseEv
; Address            : 0x46D8D6 - 0x46D91A
; =========================================================

46D8D6:  ADDW            R2, R0, #0x21A
46D8DA:  MOVS            R1, #0
46D8DC:  MOV.W           R3, #0x12C
46D8E0:  MOVW            R12, #0xC3C3
46D8E4:  STR.W           R1, [R0,#0x204]
46D8E8:  STRH.W          R12, [R2,#-1]
46D8EC:  SUBS            R3, #1
46D8EE:  STR.W           R1, [R2,#-0x12]
46D8F2:  STR.W           R1, [R2,#-0xE]
46D8F6:  STR.W           R1, [R2,#-0xA]
46D8FA:  STR.W           R1, [R2,#-6]
46D8FE:  STRB.W          R1, [R2,#-2]
46D902:  ADD.W           R2, R2, #0x14
46D906:  BNE             loc_46D8E8
46D908:  PUSH            {R7,LR}
46D90A:  MOV             R7, SP
46D90C:  ADDS            R0, #0x7C ; '|'
46D90E:  MOV.W           R1, #0x188
46D912:  MOVS            R2, #0xFF
46D914:  BLX             j___aeabi_memset8
46D918:  POP             {R7,PC}
