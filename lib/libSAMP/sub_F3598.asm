; =========================================================
; Game Engine Function: sub_F3598
; Address            : 0xF3598 - 0xF35C4
; =========================================================

F3598:  PUSH            {R4,R5,R7,LR}
F359A:  ADD             R7, SP, #8
F359C:  LDR             R5, =(dword_23FCE0 - 0xF35A4)
F359E:  MOVS            R4, #0
F35A0:  ADD             R5, PC; dword_23FCE0
F35A2:  LDR.W           R0, [R5,R4,LSL#2]
F35A6:  CBZ             R0, loc_F35BC
F35A8:  CMP             R4, #0xBE
F35AA:  BNE             loc_F35B6
F35AC:  BL              sub_F6070
F35B0:  BLX             j__ZdlPv; operator delete(void *)
F35B4:  B               loc_F35BC
F35B6:  LDR             R1, [R0]
F35B8:  LDR             R1, [R1,#4]
F35BA:  BLX             R1
F35BC:  ADDS            R4, #1
F35BE:  CMP             R4, #0xC0
F35C0:  BNE             loc_F35A2
F35C2:  POP             {R4,R5,R7,PC}
