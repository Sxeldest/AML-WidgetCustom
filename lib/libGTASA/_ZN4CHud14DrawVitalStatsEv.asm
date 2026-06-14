; =========================================================
; Game Engine Function: _ZN4CHud14DrawVitalStatsEv
; Address            : 0x437A94 - 0x437AB8
; =========================================================

437A94:  LDR             R0, =(TheCamera_ptr - 0x437A9A)
437A96:  ADD             R0, PC; TheCamera_ptr
437A98:  LDR             R0, [R0]; TheCamera
437A9A:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
437A9E:  CMP             R0, #0
437AA0:  IT NE
437AA2:  BXNE            LR
437AA4:  PUSH            {R7,LR}
437AA6:  MOV             R7, SP
437AA8:  MOVS            R0, #0xB7
437AAA:  MOVS            R1, #0
437AAC:  MOVS            R2, #2
437AAE:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
437AB2:  POP.W           {R7,LR}
437AB6:  BX              LR
