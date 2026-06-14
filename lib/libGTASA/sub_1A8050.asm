; =========================================================
; Game Engine Function: sub_1A8050
; Address            : 0x1A8050 - 0x1A807A
; =========================================================

1A8050:  PUSH            {R4,R5,R7,LR}
1A8052:  ADD             R7, SP, #8
1A8054:  LDR             R0, =(mod_HandlingManager_ptr - 0x1A805C)
1A8056:  MOVS            R4, #0x40 ; '@'
1A8058:  ADD             R0, PC; mod_HandlingManager_ptr
1A805A:  LDR             R5, [R0]; mod_HandlingManager
1A805C:  ADDS            R0, R5, R4; this
1A805E:  BLX             j__ZN13cTransmissionC2Ev; cTransmission::cTransmission(void)
1A8062:  ADDS            R4, #0xE0
1A8064:  CMP.W           R4, #0xB800
1A8068:  BNE             loc_1A805C
1A806A:  LDR             R0, =(mod_HandlingManager_ptr - 0x1A8074)
1A806C:  MOVW            R1, #0xC624
1A8070:  ADD             R0, PC; mod_HandlingManager_ptr
1A8072:  LDR             R0, [R0]; mod_HandlingManager
1A8074:  BLX             j___aeabi_memclr8_0
1A8078:  POP             {R4,R5,R7,PC}
