; =========================================================
; Game Engine Function: sub_7E380
; Address            : 0x7E380 - 0x7E3A6
; =========================================================

7E380:  PUSH            {R4,R5,R7,LR}
7E382:  ADD             R7, SP, #8
7E384:  LDR             R5, =(byte_1A45F0 - 0x7E38A)
7E386:  ADD             R5, PC; byte_1A45F0
7E388:  LDRB            R4, [R5]
7E38A:  CBNZ            R4, loc_7E39E
7E38C:  BL              sub_825F0
7E390:  CMP             R0, #0
7E392:  ITT EQ
7E394:  MOVEQ           R0, #1
7E396:  BLEQ            sub_82620
7E39A:  MOVS            R0, #1
7E39C:  STRB            R0, [R5]
7E39E:  CLZ.W           R0, R4
7E3A2:  LSRS            R0, R0, #5
7E3A4:  POP             {R4,R5,R7,PC}
