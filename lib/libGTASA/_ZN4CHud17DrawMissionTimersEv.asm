; =========================================================
; Game Engine Function: _ZN4CHud17DrawMissionTimersEv
; Address            : 0x438A5C - 0x438AAE
; =========================================================

438A5C:  LDR             R0, =(_ZN4CHud31bScriptForceDisplayWithCountersE_ptr - 0x438A64)
438A5E:  LDR             R1, =(_ZN4CHud12m_BigMessageE_ptr - 0x438A68)
438A60:  ADD             R0, PC; _ZN4CHud31bScriptForceDisplayWithCountersE_ptr
438A62:  LDR             R2, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x438A6A)
438A64:  ADD             R1, PC; _ZN4CHud12m_BigMessageE_ptr
438A66:  ADD             R2, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
438A68:  LDR             R0, [R0]; CHud::bScriptForceDisplayWithCounters ...
438A6A:  LDR             R1, [R1]; CHud::m_BigMessage ...
438A6C:  LDR             R2, [R2]; CUserDisplay::OnscnTimer ...
438A6E:  LDRB            R3, [R0]; CHud::bScriptForceDisplayWithCounters
438A70:  LDRH.W          R0, [R1,#(word_99136C - 0x990F6C)]
438A74:  MOVS            R1, #0
438A76:  LDRB.W          R2, [R2,#(byte_96B690 - 0x96B540)]
438A7A:  CMP             R3, #0
438A7C:  IT EQ
438A7E:  MOVEQ           R1, #1
438A80:  CMP             R0, #0
438A82:  IT NE
438A84:  MOVNE           R0, #1
438A86:  CBZ             R2, locret_438AAC
438A88:  ANDS            R0, R1
438A8A:  BNE             locret_438AAC
438A8C:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x438A92)
438A8E:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
438A90:  LDR             R0, [R0]; CGarages::MessageIDString ...
438A92:  LDRB            R0, [R0]; CGarages::MessageIDString
438A94:  CMP             R0, #0
438A96:  IT NE
438A98:  BXNE            LR
438A9A:  PUSH            {R7,LR}
438A9C:  MOV             R7, SP
438A9E:  MOVS            R0, #0xB0
438AA0:  MOVS            R1, #0
438AA2:  MOVS            R2, #2
438AA4:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
438AA8:  POP.W           {R7,LR}
438AAC:  BX              LR
