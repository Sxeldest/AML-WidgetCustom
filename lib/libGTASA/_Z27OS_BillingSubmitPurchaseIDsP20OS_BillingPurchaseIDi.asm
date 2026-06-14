; =========================================================
; Game Engine Function: _Z27OS_BillingSubmitPurchaseIDsP20OS_BillingPurchaseIDi
; Address            : 0x26CD08 - 0x26CE06
; =========================================================

26CD08:  PUSH            {R4-R7,LR}
26CD0A:  ADD             R7, SP, #0xC
26CD0C:  PUSH.W          {R8-R11}
26CD10:  SUB             SP, SP, #4
26CD12:  MOV             R4, R1
26CD14:  MOV             R5, R0
26CD16:  ADD.W           R0, R4, R4,LSL#1
26CD1A:  LSLS            R0, R0, #2; byte_count
26CD1C:  BLX             malloc
26CD20:  LDR             R1, =(items_ptr - 0x26CD2A)
26CD22:  CMP             R4, #1
26CD24:  LDR             R2, =(numItems_ptr - 0x26CD2C)
26CD26:  ADD             R1, PC; items_ptr
26CD28:  ADD             R2, PC; numItems_ptr
26CD2A:  LDR             R1, [R1]; items
26CD2C:  LDR             R2, [R2]; numItems
26CD2E:  STR             R0, [R1]
26CD30:  STR             R4, [R2]
26CD32:  BLT             loc_26CDDE
26CD34:  LDR             R2, =(items_ptr - 0x26CD44)
26CD36:  MOV.W           R12, #0
26CD3A:  MOV.W           LR, #2
26CD3E:  MOVS            R6, #0
26CD40:  ADD             R2, PC; items_ptr
26CD42:  LDR             R2, [R2]; items
26CD44:  ADD.W           R3, R6, R6,LSL#1
26CD48:  ADDS            R1, R5, R6
26CD4A:  SUBS            R4, #1
26CD4C:  ADD.W           R6, R6, #4
26CD50:  STR             R1, [R0,R3]
26CD52:  LDR             R0, [R2]
26CD54:  ADD.W           R1, R0, R3
26CD58:  STR.W           LR, [R1,#8]
26CD5C:  STRH.W          R12, [R1,#4]
26CD60:  BNE             loc_26CD44
26CD62:  LDR             R1, =(numItems_ptr - 0x26CD6C)
26CD64:  MOVS            R3, #1
26CD66:  LDR             R2, =(byte_6D7111 - 0x26CD6E)
26CD68:  ADD             R1, PC; numItems_ptr
26CD6A:  ADD             R2, PC; byte_6D7111
26CD6C:  LDR             R1, [R1]; numItems
26CD6E:  STRB            R3, [R2]
26CD70:  LDR             R1, [R1]
26CD72:  CMP             R1, #1
26CD74:  BLT             loc_26CDE6
26CD76:  LDR             R1, =(s_addSku_ptr - 0x26CD82)
26CD78:  MOV.W           R8, #1
26CD7C:  MOVS            R6, #0
26CD7E:  ADD             R1, PC; s_addSku_ptr
26CD80:  LDR.W           R10, [R1]; s_addSku
26CD84:  LDR             R1, =(numItems_ptr - 0x26CD8A)
26CD86:  ADD             R1, PC; numItems_ptr
26CD88:  LDR.W           R11, [R1]; numItems
26CD8C:  LDR             R1, =(items_ptr - 0x26CD92)
26CD8E:  ADD             R1, PC; items_ptr
26CD90:  LDR.W           R9, [R1]; items
26CD94:  B               loc_26CDA0
26CD96:  ADDS            R6, #0xC
26CD98:  LDR.W           R0, [R9]
26CD9C:  ADD.W           R8, R8, #1
26CDA0:  LDR             R0, [R0,R6]
26CDA2:  LDR             R4, [R0]
26CDA4:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26CDA8:  MOV             R5, R0
26CDAA:  MOV             R1, R4
26CDAC:  LDR             R0, [R5]
26CDAE:  LDR.W           R2, [R0,#0x29C]
26CDB2:  MOV             R0, R5
26CDB4:  BLX             R2
26CDB6:  MOV             R4, R0
26CDB8:  LDR             R0, =(dword_6D81DC - 0x26CDC4)
26CDBA:  LDR.W           R2, [R10]
26CDBE:  MOV             R3, R4
26CDC0:  ADD             R0, PC; dword_6D81DC
26CDC2:  LDR             R1, [R0]
26CDC4:  MOV             R0, R5
26CDC6:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26CDCA:  LDR             R0, [R5]
26CDCC:  MOV             R1, R4
26CDCE:  LDR             R2, [R0,#0x5C]
26CDD0:  MOV             R0, R5
26CDD2:  BLX             R2
26CDD4:  LDR.W           R0, [R11]
26CDD8:  CMP             R8, R0
26CDDA:  BLT             loc_26CD96
26CDDC:  B               loc_26CDE6
26CDDE:  LDR             R0, =(byte_6D7111 - 0x26CDE6)
26CDE0:  MOVS            R1, #1
26CDE2:  ADD             R0, PC; byte_6D7111
26CDE4:  STRB            R1, [R0]
26CDE6:  LDR             R0, =(s_initBilling_ptr - 0x26CDEE)
26CDE8:  LDR             R4, =(dword_6D81DC - 0x26CDF0)
26CDEA:  ADD             R0, PC; s_initBilling_ptr
26CDEC:  ADD             R4, PC; dword_6D81DC
26CDEE:  LDR             R5, [R0]; s_initBilling
26CDF0:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26CDF4:  LDR             R1, [R4]
26CDF6:  LDR             R2, [R5]
26CDF8:  ADD             SP, SP, #4
26CDFA:  POP.W           {R8-R11}
26CDFE:  POP.W           {R4-R7,LR}
26CE02:  B.W             sub_196F90
