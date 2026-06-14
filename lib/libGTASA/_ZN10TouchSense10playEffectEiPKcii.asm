; =========================================================
; Game Engine Function: _ZN10TouchSense10playEffectEiPKcii
; Address            : 0x270A4C - 0x270ADA
; =========================================================

270A4C:  PUSH            {R4-R7,LR}
270A4E:  ADD             R7, SP, #0xC
270A50:  PUSH.W          {R8}
270A54:  SUB             SP, SP, #8
270A56:  MOV             R5, R0
270A58:  LDR             R0, =(UseTouchSense_ptr - 0x270A62)
270A5A:  MOV             R4, R3
270A5C:  MOV             R6, R2
270A5E:  ADD             R0, PC; UseTouchSense_ptr
270A60:  LDR             R0, [R0]; UseTouchSense
270A62:  LDRB            R0, [R0]
270A64:  CBZ             R0, loc_270AD0
270A66:  LDR             R0, [R5]
270A68:  CMP             R0, R1
270A6A:  BLT             loc_270AA0
270A6C:  LDRB            R0, [R5,#4]
270A6E:  CBNZ            R0, loc_270A7A
270A70:  LDR             R1, =(aGta3Ivt - 0x270A78); "gta3.ivt"
270A72:  MOV             R0, R5; this
270A74:  ADD             R1, PC; "gta3.ivt"
270A76:  BLX             j__ZN10TouchSense10setIVTFileEPKc; TouchSense::setIVTFile(char const*)
270A7A:  MOV.W           R0, #0xFFFFFFFF
270A7E:  ADD             R2, SP, #0x18+var_14
270A80:  STR             R0, [SP,#0x18+var_14]
270A82:  MOV             R1, R6
270A84:  LDR             R0, [R5,#0x20]
270A86:  BLX             ImmVibeGetIVTEffectIndexFromName
270A8A:  LDR             R0, [SP,#0x18+var_14]
270A8C:  CMP             R0, #0
270A8E:  BLT             loc_270AA0
270A90:  LDR             R1, =(UseTouchSense_ptr - 0x270A96)
270A92:  ADD             R1, PC; UseTouchSense_ptr
270A94:  LDR             R1, [R1]; UseTouchSense
270A96:  LDRB            R1, [R1]
270A98:  CBZ             R1, loc_270AD0
270A9A:  LDR             R1, [R5]
270A9C:  CMP             R1, R0
270A9E:  BGE             loc_270AA4
270AA0:  MOVS            R0, #0
270AA2:  B               loc_270AD2
270AA4:  LDR             R0, =(g_accessMutex_ptr - 0x270AAE)
270AA6:  LDR.W           R8, [R7,#arg_0]
270AAA:  ADD             R0, PC; g_accessMutex_ptr
270AAC:  LDR             R6, [R0]; g_accessMutex
270AAE:  MOV             R0, R6; mutex
270AB0:  BLX             pthread_mutex_lock
270AB4:  LDR             R0, =(g_cond_ptr - 0x270AC2)
270AB6:  MOV.W           R1, #0xFFFFFFFF
270ABA:  STRD.W          R4, R1, [R5,#0x10]
270ABE:  ADD             R0, PC; g_cond_ptr
270AC0:  STR.W           R8, [R5,#0x18]
270AC4:  LDR             R0, [R0]; g_cond ; cond
270AC6:  BLX             pthread_cond_signal
270ACA:  MOV             R0, R6; mutex
270ACC:  BLX             pthread_mutex_unlock
270AD0:  MOVS            R0, #1
270AD2:  ADD             SP, SP, #8
270AD4:  POP.W           {R8}
270AD8:  POP             {R4-R7,PC}
