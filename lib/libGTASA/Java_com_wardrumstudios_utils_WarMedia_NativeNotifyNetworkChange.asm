; =========================================================
; Game Engine Function: Java_com_wardrumstudios_utils_WarMedia_NativeNotifyNetworkChange
; Address            : 0x27B1FC - 0x27B21E
; =========================================================

27B1FC:  PUSH            {R7,LR}
27B1FE:  MOV             R7, SP
27B200:  SUB             SP, SP, #8
27B202:  LDR             R0, =(AND_AppInitialized_ptr - 0x27B20A)
27B204:  STR             R2, [SP,#0x10+var_C]
27B206:  ADD             R0, PC; AND_AppInitialized_ptr
27B208:  LDR             R0, [R0]; AND_AppInitialized
27B20A:  LDRB            R0, [R0]
27B20C:  CMP             R0, #0
27B20E:  ITTT NE
27B210:  ADDNE.W         R1, SP, #0x10+var_C
27B214:  MOVNE           R0, #0x19
27B216:  BLXNE           j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
27B21A:  ADD             SP, SP, #8
27B21C:  POP             {R7,PC}
