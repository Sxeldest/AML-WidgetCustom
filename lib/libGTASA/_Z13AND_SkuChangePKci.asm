; =========================================================
; Game Engine Function: _Z13AND_SkuChangePKci
; Address            : 0x26CC88 - 0x26CCF4
; =========================================================

26CC88:  PUSH            {R4-R7,LR}
26CC8A:  ADD             R7, SP, #0xC
26CC8C:  PUSH.W          {R8,R9,R11}
26CC90:  MOV             R9, R0
26CC92:  LDR             R0, =(numItems_ptr - 0x26CC9A)
26CC94:  MOV             R8, R1
26CC96:  ADD             R0, PC; numItems_ptr
26CC98:  LDR             R0, [R0]; numItems
26CC9A:  LDR             R4, [R0]
26CC9C:  CMP             R4, #1
26CC9E:  BLT             loc_26CCEE
26CCA0:  LDR             R0, =(items_ptr - 0x26CCA8)
26CCA2:  MOVS            R5, #0
26CCA4:  ADD             R0, PC; items_ptr
26CCA6:  LDR             R0, [R0]; items
26CCA8:  LDR             R0, [R0]
26CCAA:  ADD.W           R6, R0, #8
26CCAE:  LDR.W           R0, [R6,#-8]
26CCB2:  MOV             R1, R9; char *
26CCB4:  LDR             R0, [R0]; char *
26CCB6:  BLX             strcmp
26CCBA:  CBZ             R0, loc_26CCC6
26CCBC:  ADDS            R5, #1
26CCBE:  ADDS            R6, #0xC
26CCC0:  CMP             R5, R4
26CCC2:  BLT             loc_26CCAE
26CCC4:  B               loc_26CCEE
26CCC6:  CMP             R6, #8
26CCC8:  BEQ             loc_26CCEE
26CCCA:  LDR             R0, =(billingMutex_ptr - 0x26CCD0)
26CCCC:  ADD             R0, PC; billingMutex_ptr
26CCCE:  LDR             R4, [R0]; billingMutex
26CCD0:  LDR             R0, [R4]; mutex
26CCD2:  BLX             pthread_mutex_lock
26CCD6:  MOVS            R0, #1
26CCD8:  STRB.W          R0, [R6,#-3]
26CCDC:  STR.W           R8, [R6]
26CCE0:  LDR             R0, [R4]; mutex
26CCE2:  POP.W           {R8,R9,R11}
26CCE6:  POP.W           {R4-R7,LR}
26CCEA:  B.W             j_pthread_mutex_unlock
26CCEE:  POP.W           {R8,R9,R11}
26CCF2:  POP             {R4-R7,PC}
