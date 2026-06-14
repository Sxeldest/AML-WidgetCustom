; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity23AddCollisionSoundToListEP7CEntityS1_hhP8CAESoundi
; Address            : 0x394FC0 - 0x39502E
; =========================================================

394FC0:  PUSH            {R4-R7,LR}
394FC2:  ADD             R7, SP, #0xC
394FC4:  PUSH.W          {R8}
394FC8:  ADD.W           R12, R7, #8
394FCC:  ADD.W           LR, R0, #0x208
394FD0:  MOV.W           R6, #0xFFFFFFFF
394FD4:  LDM.W           R12, {R5,R8,R12}
394FD8:  LDR.W           R4, [LR,#8]
394FDC:  CBZ             R4, loc_394FF0
394FDE:  ADDS            R6, #1
394FE0:  ADD.W           LR, LR, #0x14
394FE4:  CMP.W           R6, #0x12A
394FE8:  BLE             loc_394FD8
394FEA:  POP.W           {R8}
394FEE:  POP             {R4-R7,PC}
394FF0:  LDR             R4, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x395002)
394FF2:  CMP.W           R12, #2
394FF6:  STRD.W          R1, R2, [LR]
394FFA:  MOV.W           R2, #0
394FFE:  ADD             R4, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
395000:  STRB.W          R3, [LR,#0x11]
395004:  STRB.W          R5, [LR,#0x12]
395008:  LDR             R1, [R4]; CTimer::m_snTimeInMilliseconds ...
39500A:  STR.W           R8, [LR,#8]
39500E:  STRB.W          R12, [LR,#0x10]
395012:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
395014:  IT EQ
395016:  ADDEQ.W         R2, R1, #0x64 ; 'd'
39501A:  STR.W           R2, [LR,#0xC]
39501E:  LDR.W           R1, [R0,#0x204]
395022:  ADDS            R1, #1
395024:  STR.W           R1, [R0,#0x204]
395028:  POP.W           {R8}
39502C:  POP             {R4-R7,PC}
