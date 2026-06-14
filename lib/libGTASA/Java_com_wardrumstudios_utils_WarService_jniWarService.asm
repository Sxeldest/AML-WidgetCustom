; =========================================================
; Game Engine Function: Java_com_wardrumstudios_utils_WarService_jniWarService
; Address            : 0x26C638 - 0x26C694
; =========================================================

26C638:  PUSH            {R4-R7,LR}
26C63A:  ADD             R7, SP, #0xC
26C63C:  PUSH.W          {R11}
26C640:  MOV             R4, R0
26C642:  MOV             R5, R1
26C644:  LDR             R0, [R4]
26C646:  ADR             R1, aComWardrumstud; "com/wardrumstudios/utils/WarService"
26C648:  LDR             R2, [R0,#0x18]
26C64A:  MOV             R0, R4
26C64C:  BLX             R2
26C64E:  MOV             R6, R0
26C650:  LDR             R0, [R4]
26C652:  MOV             R1, R5
26C654:  LDR             R2, [R0,#0x54]
26C656:  MOV             R0, R4
26C658:  BLX             R2
26C65A:  LDR             R1, =(dword_6D70F8 - 0x26C664)
26C65C:  ADR             R2, aLocalpushnotif; "LocalPushNotification"
26C65E:  ADR             R3, aIljavaLangStri; "(ILjava/lang/String;Ljava/lang/String;)"...
26C660:  ADD             R1, PC; dword_6D70F8
26C662:  STR             R0, [R1]
26C664:  MOV             R1, R6
26C666:  LDR             R0, [R4]
26C668:  LDR.W           R5, [R0,#0x84]
26C66C:  MOV             R0, R4
26C66E:  BLX             R5
26C670:  LDR             R1, =(dword_6D70FC - 0x26C67A)
26C672:  ADR             R2, aLocalpushnotif_0; "LocalPushNotificationCancel"
26C674:  LDR             R3, =(aV - 0x26C67C); "()V"
26C676:  ADD             R1, PC; dword_6D70FC
26C678:  ADD             R3, PC; "()V"
26C67A:  STR             R0, [R1]
26C67C:  MOV             R1, R6
26C67E:  LDR             R0, [R4]
26C680:  LDR.W           R5, [R0,#0x84]
26C684:  MOV             R0, R4
26C686:  BLX             R5
26C688:  LDR             R1, =(dword_6D7100 - 0x26C68E)
26C68A:  ADD             R1, PC; dword_6D7100
26C68C:  STR             R0, [R1]
26C68E:  POP.W           {R11}
26C692:  POP             {R4-R7,PC}
