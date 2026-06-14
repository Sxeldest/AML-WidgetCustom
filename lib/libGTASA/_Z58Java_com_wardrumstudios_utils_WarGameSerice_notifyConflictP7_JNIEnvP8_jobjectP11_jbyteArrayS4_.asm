; =========================================================
; Game Engine Function: _Z58Java_com_wardrumstudios_utils_WarGameSerice_notifyConflictP7_JNIEnvP8_jobjectP11_jbyteArrayS4_
; Address            : 0x27BEE4 - 0x27BF7C
; =========================================================

27BEE4:  PUSH            {R4-R7,LR}
27BEE6:  ADD             R7, SP, #0xC
27BEE8:  PUSH.W          {R8}
27BEEC:  SUB             SP, SP, #8
27BEEE:  MOV             R6, R2
27BEF0:  MOV             R8, R3
27BEF2:  MOV             R4, R0
27BEF4:  CBZ             R6, loc_27BF1A
27BEF6:  LDR             R0, [R4]
27BEF8:  MOV             R1, R6
27BEFA:  LDR.W           R2, [R0,#0x2AC]
27BEFE:  MOV             R0, R4
27BF00:  BLX             R2
27BF02:  MOV             R5, R0
27BF04:  BLX             _Znaj; operator new[](uint)
27BF08:  LDR             R1, [R4]
27BF0A:  MOVS            R2, #0
27BF0C:  MOV             R3, R5
27BF0E:  LDR.W           R12, [R1,#0x320]
27BF12:  MOV             R1, R6
27BF14:  STR             R0, [SP,#0x18+var_18]
27BF16:  MOV             R0, R4
27BF18:  BLX             R12
27BF1A:  CMP.W           R8, #0
27BF1E:  BEQ             loc_27BF44
27BF20:  LDR             R0, [R4]
27BF22:  MOV             R1, R8
27BF24:  LDR.W           R2, [R0,#0x2AC]
27BF28:  MOV             R0, R4
27BF2A:  BLX             R2
27BF2C:  MOV             R5, R0
27BF2E:  BLX             _Znaj; operator new[](uint)
27BF32:  LDR             R1, [R4]
27BF34:  MOVS            R2, #0
27BF36:  MOV             R3, R5
27BF38:  LDR.W           R6, [R1,#0x320]
27BF3C:  MOV             R1, R8
27BF3E:  STR             R0, [SP,#0x18+var_18]
27BF40:  MOV             R0, R4
27BF42:  BLX             R6
27BF44:  LDR             R0, [R4]
27BF46:  LDR.W           R1, [R0,#0x390]
27BF4A:  MOV             R0, R4
27BF4C:  BLX             R1
27BF4E:  CBZ             R0, loc_27BF74
27BF50:  LDR             R1, =(aOswrapper - 0x27BF5E); "OSWrapper"
27BF52:  MOVS            R0, #3; prio
27BF54:  LDR             R2, =(aJniExceptionLi - 0x27BF60); "JNI Exception (line %d):"
27BF56:  MOVW            R3, #0x233
27BF5A:  ADD             R1, PC; "OSWrapper"
27BF5C:  ADD             R2, PC; "JNI Exception (line %d):"
27BF5E:  BLX             __android_log_print
27BF62:  LDR             R0, [R4]
27BF64:  LDR             R1, [R0,#0x40]
27BF66:  MOV             R0, R4
27BF68:  ADD             SP, SP, #8
27BF6A:  POP.W           {R8}
27BF6E:  POP.W           {R4-R7,LR}
27BF72:  BX              R1
27BF74:  ADD             SP, SP, #8
27BF76:  POP.W           {R8}
27BF7A:  POP             {R4-R7,PC}
