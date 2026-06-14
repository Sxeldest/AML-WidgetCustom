; =========================================================
; Game Engine Function: _Z39WarGameService_notifyAchievementsLoadedP7_JNIEnvP8_jobjectP13_jobjectArrayP14_jbooleanArrayP10_jintArrayS8_
; Address            : 0x27BB64 - 0x27BCDA
; =========================================================

27BB64:  PUSH            {R4-R7,LR}
27BB66:  ADD             R7, SP, #0xC
27BB68:  PUSH.W          {R8-R11}
27BB6C:  SUB             SP, SP, #0x14
27BB6E:  STR             R3, [SP,#0x30+var_20]
27BB70:  MOV             R4, R0
27BB72:  LDR             R0, [R4]
27BB74:  MOV             R9, R2
27BB76:  MOV             R1, R9
27BB78:  LDR.W           R2, [R0,#0x2AC]
27BB7C:  MOV             R0, R4
27BB7E:  BLX             R2
27BB80:  MOV             R8, R0
27BB82:  MOVS            R0, #4
27BB84:  UMULL.W         R6, R0, R8, R0
27BB88:  CMP             R0, #0
27BB8A:  IT NE
27BB8C:  MOVNE           R0, #1
27BB8E:  CMP             R0, #0
27BB90:  IT NE
27BB92:  MOVNE.W         R6, #0xFFFFFFFF
27BB96:  MOV             R0, R6; unsigned int
27BB98:  BLX             _Znaj; operator new[](uint)
27BB9C:  MOV             R5, R0
27BB9E:  MOV             R0, R6; unsigned int
27BBA0:  BLX             _Znaj; operator new[](uint)
27BBA4:  MOV             R11, R0
27BBA6:  LDR             R0, [R7,#arg_4]
27BBA8:  STR             R0, [SP,#0x30+var_24]
27BBAA:  CMP.W           R8, #1
27BBAE:  LDR             R0, [R7,#arg_0]
27BBB0:  STR             R0, [SP,#0x30+var_28]
27BBB2:  LDR             R0, [R4]
27BBB4:  BLT             loc_27BBFC
27BBB6:  MOV.W           R10, #0
27BBBA:  LDR.W           R3, [R0,#0x2B4]
27BBBE:  MOV             R0, R4
27BBC0:  MOV             R1, R9
27BBC2:  MOV             R2, R10
27BBC4:  BLX             R3
27BBC6:  MOV             R6, R0
27BBC8:  LDR             R0, [R4]
27BBCA:  MOV             R1, R6
27BBCC:  MOVS            R2, #0
27BBCE:  LDR.W           R3, [R0,#0x2A4]
27BBD2:  MOV             R0, R4
27BBD4:  BLX             R3
27BBD6:  STR.W           R0, [R5,R10,LSL#2]
27BBDA:  MOV             R1, R6
27BBDC:  LDR             R0, [R4]
27BBDE:  LDR             R2, [R0,#0x54]
27BBE0:  MOV             R0, R4
27BBE2:  BLX             R2
27BBE4:  STR.W           R0, [R11,R10,LSL#2]
27BBE8:  MOV             R1, R6
27BBEA:  LDR             R0, [R4]
27BBEC:  LDR             R2, [R0,#0x5C]
27BBEE:  MOV             R0, R4
27BBF0:  BLX             R2
27BBF2:  LDR             R0, [R4]
27BBF4:  ADD.W           R10, R10, #1
27BBF8:  CMP             R8, R10
27BBFA:  BNE             loc_27BBBA
27BBFC:  LDR.W           R3, [R0,#0x2DC]
27BC00:  MOV             R0, R4
27BC02:  LDR             R1, [SP,#0x30+var_20]
27BC04:  MOVS            R2, #0
27BC06:  BLX             R3
27BC08:  MOV             R9, R0
27BC0A:  LDR             R0, [R4]
27BC0C:  LDR             R1, [SP,#0x30+var_28]
27BC0E:  MOVS            R2, #0
27BC10:  LDR.W           R3, [R0,#0x2EC]
27BC14:  MOV             R0, R4
27BC16:  BLX             R3
27BC18:  MOV             R10, R0
27BC1A:  LDR             R0, [R4]
27BC1C:  LDR             R1, [SP,#0x30+var_24]
27BC1E:  MOVS            R2, #0
27BC20:  LDR.W           R3, [R0,#0x2EC]
27BC24:  MOV             R0, R4
27BC26:  BLX             R3
27BC28:  MOV             R6, R0
27BC2A:  MOV             R0, R8; int
27BC2C:  MOV             R1, R5; char **
27BC2E:  MOV             R2, R9; bool *
27BC30:  MOV             R3, R10; int *
27BC32:  STR             R6, [SP,#0x30+var_30]; int *
27BC34:  STR             R5, [SP,#0x30+var_2C]
27BC36:  BLX             j__Z24AND_OnAchievementsLoadediPPKcPbPiS3_; AND_OnAchievementsLoaded(int,char const**,bool *,int *,int *)
27BC3A:  LDR             R0, [R4]
27BC3C:  MOV             R2, R9
27BC3E:  LDR             R1, [SP,#0x30+var_20]
27BC40:  MOVS            R3, #2
27BC42:  LDR.W           R5, [R0,#0x2FC]
27BC46:  MOV             R0, R4
27BC48:  BLX             R5
27BC4A:  LDR             R0, [R4]
27BC4C:  MOV             R2, R10
27BC4E:  LDR             R1, [SP,#0x30+var_28]
27BC50:  MOVS            R3, #2
27BC52:  LDR.W           R5, [R0,#0x30C]
27BC56:  MOV             R0, R4
27BC58:  BLX             R5
27BC5A:  LDR             R0, [R4]
27BC5C:  MOV             R2, R6
27BC5E:  LDR             R1, [SP,#0x30+var_24]
27BC60:  MOVS            R3, #2
27BC62:  LDR.W           R5, [R0,#0x30C]
27BC66:  MOV             R0, R4
27BC68:  BLX             R5
27BC6A:  CMP.W           R8, #1
27BC6E:  BLT             loc_27BC96
27BC70:  LDR             R6, [SP,#0x30+var_2C]
27BC72:  MOV             R5, R11
27BC74:  LDR             R0, [R4]
27BC76:  LDR.W           R2, [R6],#4
27BC7A:  LDR             R1, [R5]
27BC7C:  LDR.W           R3, [R0,#0x2A8]
27BC80:  MOV             R0, R4
27BC82:  BLX             R3
27BC84:  LDR             R0, [R4]
27BC86:  LDR.W           R1, [R5],#4
27BC8A:  LDR             R2, [R0,#0x58]
27BC8C:  MOV             R0, R4
27BC8E:  BLX             R2
27BC90:  SUBS.W          R8, R8, #1
27BC94:  BNE             loc_27BC74
27BC96:  MOV             R0, R11; void *
27BC98:  BLX             _ZdaPv; operator delete[](void *)
27BC9C:  LDR             R0, [SP,#0x30+var_2C]; void *
27BC9E:  BLX             _ZdaPv; operator delete[](void *)
27BCA2:  LDR             R0, [R4]
27BCA4:  LDR.W           R1, [R0,#0x390]
27BCA8:  MOV             R0, R4
27BCAA:  BLX             R1
27BCAC:  CBZ             R0, loc_27BCD2
27BCAE:  LDR             R1, =(aOswrapper - 0x27BCBC); "OSWrapper"
27BCB0:  MOVS            R0, #3; prio
27BCB2:  LDR             R2, =(aJniExceptionLi - 0x27BCBE); "JNI Exception (line %d):"
27BCB4:  MOVW            R3, #0x1F1
27BCB8:  ADD             R1, PC; "OSWrapper"
27BCBA:  ADD             R2, PC; "JNI Exception (line %d):"
27BCBC:  BLX             __android_log_print
27BCC0:  LDR             R0, [R4]
27BCC2:  LDR             R1, [R0,#0x40]
27BCC4:  MOV             R0, R4
27BCC6:  ADD             SP, SP, #0x14
27BCC8:  POP.W           {R8-R11}
27BCCC:  POP.W           {R4-R7,LR}
27BCD0:  BX              R1
27BCD2:  ADD             SP, SP, #0x14
27BCD4:  POP.W           {R8-R11}
27BCD8:  POP             {R4-R7,PC}
