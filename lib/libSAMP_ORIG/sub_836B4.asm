; =========================================================
; Game Engine Function: sub_836B4
; Address            : 0x836B4 - 0x836F0
; =========================================================

836B4:  PUSH            {R4,R5,R7,LR}
836B6:  ADD             R7, SP, #8
836B8:  MOV             R4, R0
836BA:  LDRD.W          R5, R0, [R0,#4]
836BE:  CMP             R0, R5
836C0:  BNE             loc_836D6
836C2:  LDR             R0, [R4]; void *
836C4:  CMP             R0, #0
836C6:  IT NE
836C8:  BLXNE           j__ZdlPv; operator delete(void *)
836CC:  MOV             R0, R4
836CE:  POP             {R4,R5,R7,PC}
836D0:  CMP             R1, R5
836D2:  MOV             R0, R1
836D4:  BEQ             loc_836C2
836D6:  SUB.W           R1, R0, #0xC
836DA:  STR             R1, [R4,#8]
836DC:  LDRB.W          R2, [R0,#-0xC]
836E0:  LSLS            R2, R2, #0x1F
836E2:  BEQ             loc_836D0
836E4:  LDR.W           R0, [R0,#-4]; void *
836E8:  BLX             j__ZdlPv; operator delete(void *)
836EC:  LDR             R1, [R4,#8]
836EE:  B               loc_836D0
