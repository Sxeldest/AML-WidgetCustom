; =========================================================
; Game Engine Function: Java_com_wardrumstudios_utils_WarAdMob_jniWarAdMob
; Address            : 0x26C728 - 0x26C782
; =========================================================

26C728:  PUSH            {R4,R5,R7,LR}
26C72A:  ADD             R7, SP, #8
26C72C:  MOV             R4, R0
26C72E:  LDR             R0, [R4]
26C730:  LDR             R2, [R0,#0x54]
26C732:  MOV             R0, R4
26C734:  BLX             R2
26C736:  LDR             R1, =(dword_6D70EC - 0x26C73C)
26C738:  ADD             R1, PC; dword_6D70EC
26C73A:  STR             R0, [R1]
26C73C:  ADR             R1, aComWardrumstud_0; "com/wardrumstudios/utils/WarAdMob"
26C73E:  LDR             R0, [R4]
26C740:  LDR             R2, [R0,#0x18]
26C742:  MOV             R0, R4
26C744:  BLX             R2
26C746:  MOV             R5, R0
26C748:  LDR             R0, [R4]
26C74A:  LDR             R3, =(aV - 0x26C758); "()V"
26C74C:  ADR             R2, aShowadpopup; "ShowAdPopup"
26C74E:  MOV             R1, R5
26C750:  LDR.W           R12, [R0,#0x84]
26C754:  ADD             R3, PC; "()V"
26C756:  MOV             R0, R4
26C758:  BLX             R12
26C75A:  LDR             R1, =(dword_6D70F0 - 0x26C764)
26C75C:  ADR             R2, aGetadstate; "GetAdState"
26C75E:  LDR             R3, =(aII - 0x26C766); "(I)I"
26C760:  ADD             R1, PC; dword_6D70F0
26C762:  ADD             R3, PC; "(I)I"
26C764:  STR             R0, [R1]
26C766:  MOV             R1, R5
26C768:  LDR             R0, [R4]
26C76A:  LDR.W           R12, [R0,#0x84]
26C76E:  MOV             R0, R4
26C770:  BLX             R12
26C772:  LDR             R1, =(dword_6D70F4 - 0x26C77A)
26C774:  LDR             R2, =(byte_6D70E8 - 0x26C77C)
26C776:  ADD             R1, PC; dword_6D70F4
26C778:  ADD             R2, PC; byte_6D70E8
26C77A:  STR             R0, [R1]
26C77C:  MOVS            R0, #1
26C77E:  STRB            R0, [R2]
26C780:  POP             {R4,R5,R7,PC}
