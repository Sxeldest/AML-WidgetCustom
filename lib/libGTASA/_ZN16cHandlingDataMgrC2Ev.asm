; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgrC2Ev
; Address            : 0x570C94 - 0x570CB8
; =========================================================

570C94:  PUSH            {R4,R5,R7,LR}
570C96:  ADD             R7, SP, #8
570C98:  MOV             R4, R0
570C9A:  MOVS            R5, #0x40 ; '@'
570C9C:  ADDS            R0, R4, R5; this
570C9E:  BLX             j__ZN13cTransmissionC2Ev; cTransmission::cTransmission(void)
570CA2:  ADDS            R5, #0xE0
570CA4:  CMP.W           R5, #0xB800
570CA8:  BNE             loc_570C9C
570CAA:  MOV             R0, R4
570CAC:  MOVW            R1, #0xC624
570CB0:  BLX             j___aeabi_memclr8_0
570CB4:  MOV             R0, R4
570CB6:  POP             {R4,R5,R7,PC}
