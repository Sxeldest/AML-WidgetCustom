; =========================================================
; Game Engine Function: sub_8345C
; Address            : 0x8345C - 0x834A4
; =========================================================

8345C:  PUSH            {R4,R6,R7,LR}
8345E:  ADD             R7, SP, #8
83460:  LDR             R0, =(byte_1A49FC - 0x83466)
83462:  ADD             R0, PC; byte_1A49FC
83464:  LDRB            R1, [R0]
83466:  MOVS            R0, #0
83468:  CBZ             R1, locret_8349E
8346A:  LDR             R4, =(byte_1A6FA6 - 0x83470)
8346C:  ADD             R4, PC; byte_1A6FA6
8346E:  LDRB            R1, [R4]
83470:  CBNZ            R1, locret_8349E
83472:  LDR             R1, =(byte_1A4A24 - 0x83478)
83474:  ADD             R1, PC; byte_1A4A24
83476:  LDRB            R1, [R1]
83478:  CBNZ            R1, locret_8349E
8347A:  BL              sub_8265C
8347E:  CBZ             R0, loc_834A0
83480:  LDR             R0, =(aSvDbgRecordSta - 0x83486); "[sv:dbg:record:startrecording] : channe"... ...
83482:  ADD             R0, PC; "[sv:dbg:record:startrecording] : channe"...
83484:  BL              sub_80664
83488:  LDR             R0, =(off_114A90 - 0x83490)
8348A:  LDR             R1, =(dword_1A4A1C - 0x83492)
8348C:  ADD             R0, PC; off_114A90
8348E:  ADD             R1, PC; dword_1A4A1C
83490:  LDR             R2, [R0]; off_1ABEF4
83492:  LDR             R0, [R1]
83494:  LDR             R2, [R2]
83496:  MOVS            R1, #0
83498:  BLX             R2
8349A:  MOVS            R0, #1
8349C:  STRB            R0, [R4]
8349E:  POP             {R4,R6,R7,PC}
834A0:  MOVS            R0, #0
834A2:  POP             {R4,R6,R7,PC}
