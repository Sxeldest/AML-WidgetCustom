; =========================================================
; Game Engine Function: _Z25OS_BillingPurchaseRequestPKc
; Address            : 0x26CF40 - 0x26CFE0
; =========================================================

26CF40:  PUSH            {R4-R7,LR}
26CF42:  ADD             R7, SP, #0xC
26CF44:  PUSH.W          {R8}
26CF48:  MOV             R8, R0
26CF4A:  LDR             R0, =(numItems_ptr - 0x26CF50)
26CF4C:  ADD             R0, PC; numItems_ptr
26CF4E:  LDR             R0, [R0]; numItems
26CF50:  LDR             R5, [R0]
26CF52:  CMP             R5, #1
26CF54:  BLT             loc_26CF88
26CF56:  LDR             R0, =(items_ptr - 0x26CF5E)
26CF58:  MOVS            R4, #0
26CF5A:  ADD             R0, PC; items_ptr
26CF5C:  LDR             R0, [R0]; items
26CF5E:  LDR             R0, [R0]
26CF60:  ADDS            R6, R0, #4
26CF62:  LDR.W           R0, [R6,#-4]
26CF66:  MOV             R1, R8; char *
26CF68:  LDR             R0, [R0]; char *
26CF6A:  BLX             strcmp
26CF6E:  CBZ             R0, loc_26CF7A
26CF70:  ADDS            R4, #1
26CF72:  ADDS            R6, #0xC
26CF74:  CMP             R4, R5
26CF76:  BLT             loc_26CF62
26CF78:  B               loc_26CF88
26CF7A:  CMP             R6, #4
26CF7C:  ITT NE
26CF7E:  LDRBNE          R0, [R6]
26CF80:  CMPNE           R0, #0
26CF82:  BEQ             loc_26CF88
26CF84:  MOVS            R5, #0
26CF86:  B               loc_26CFD8
26CF88:  LDR             R0, =(byte_6D7111 - 0x26CF90)
26CF8A:  MOVS            R5, #0
26CF8C:  ADD             R0, PC; byte_6D7111
26CF8E:  LDRB            R0, [R0]
26CF90:  CMP             R0, #1
26CF92:  BNE             loc_26CFD8
26CF94:  LDR             R0, =(byte_6D7112 - 0x26CF9A)
26CF96:  ADD             R0, PC; byte_6D7112
26CF98:  LDRB            R0, [R0]
26CF9A:  CBNZ            R0, loc_26CFD8
26CF9C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26CFA0:  MOV             R6, R0
26CFA2:  MOV             R1, R8
26CFA4:  LDR             R0, [R6]
26CFA6:  LDR.W           R2, [R0,#0x29C]
26CFAA:  MOV             R0, R6
26CFAC:  BLX             R2
26CFAE:  MOV             R4, R0
26CFB0:  LDR             R0, =(s_requestPurchase_ptr - 0x26CFBA)
26CFB2:  LDR             R1, =(dword_6D81DC - 0x26CFBC)
26CFB4:  MOV             R3, R4
26CFB6:  ADD             R0, PC; s_requestPurchase_ptr
26CFB8:  ADD             R1, PC; dword_6D81DC
26CFBA:  LDR             R0, [R0]; s_requestPurchase
26CFBC:  LDR             R1, [R1]
26CFBE:  LDR             R2, [R0]
26CFC0:  MOV             R0, R6
26CFC2:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
26CFC6:  MOV             R5, R0
26CFC8:  LDR             R0, [R6]
26CFCA:  MOV             R1, R4
26CFCC:  LDR             R2, [R0,#0x5C]
26CFCE:  MOV             R0, R6
26CFD0:  BLX             R2
26CFD2:  CMP             R5, #1
26CFD4:  IT NE
26CFD6:  MOVNE           R5, #0
26CFD8:  MOV             R0, R5
26CFDA:  POP.W           {R8}
26CFDE:  POP             {R4-R7,PC}
