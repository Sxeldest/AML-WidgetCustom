; =========================================================
; Game Engine Function: _Z11NVImeClosedv
; Address            : 0x271640 - 0x27165C
; =========================================================

271640:  PUSH            {R7,LR}
271642:  MOV             R7, SP
271644:  SUB             SP, SP, #8
271646:  LDR             R0, =(dword_6D702C - 0x271650)
271648:  MOVS            R1, #0
27164A:  STR             R1, [SP,#0x10+var_C]
27164C:  ADD             R0, PC; dword_6D702C
27164E:  STR             R1, [R0]
271650:  ADD             R1, SP, #0x10+var_C
271652:  MOVS            R0, #0xA
271654:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
271658:  ADD             SP, SP, #8
27165A:  POP             {R7,PC}
