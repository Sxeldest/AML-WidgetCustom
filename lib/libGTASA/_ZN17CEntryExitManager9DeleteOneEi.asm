; =========================================================
; Game Engine Function: _ZN17CEntryExitManager9DeleteOneEi
; Address            : 0x304D60 - 0x304DBE
; =========================================================

304D60:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x304D66)
304D62:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
304D64:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits ...
304D66:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits
304D68:  LDR             R2, [R1,#4]
304D6A:  LDRSB           R2, [R2,R0]
304D6C:  CMP             R2, #0
304D6E:  IT LT
304D70:  BXLT            LR
304D72:  PUSH            {R4,R6,R7,LR}
304D74:  ADD             R7, SP, #0x10+var_8
304D76:  LDR             R2, =(_ZN17CEntryExitManager11mp_QuadTreeE_ptr - 0x304D82)
304D78:  RSB.W           R3, R0, R0,LSL#4
304D7C:  LDR             R1, [R1]
304D7E:  ADD             R2, PC; _ZN17CEntryExitManager11mp_QuadTreeE_ptr
304D80:  ADD.W           R4, R1, R3,LSL#2
304D84:  LDR             R2, [R2]; CEntryExitManager::mp_QuadTree ...
304D86:  MOV             R1, R4; void *
304D88:  LDR             R0, [R2]; this
304D8A:  BLX             j__ZN13CQuadTreeNode10DeleteItemEPv; CQuadTreeNode::DeleteItem(void *)
304D8E:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x304D9C)
304D90:  MOV             R3, #0xEEEEEEEF
304D98:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
304D9A:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
304D9C:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits
304D9E:  LDRD.W          R1, R2, [R0]
304DA2:  SUBS            R1, R4, R1
304DA4:  ASRS            R1, R1, #2
304DA6:  MULS            R1, R3
304DA8:  LDRB            R3, [R2,R1]
304DAA:  ORR.W           R3, R3, #0x80
304DAE:  STRB            R3, [R2,R1]
304DB0:  LDR             R2, [R0,#0xC]
304DB2:  CMP             R1, R2
304DB4:  POP.W           {R4,R6,R7,LR}
304DB8:  IT LT
304DBA:  STRLT           R1, [R0,#0xC]
304DBC:  BX              LR
