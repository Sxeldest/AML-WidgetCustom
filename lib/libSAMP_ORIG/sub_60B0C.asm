; =========================================================
; Game Engine Function: sub_60B0C
; Address            : 0x60B0C - 0x60BC0
; =========================================================

60B0C:  PUSH            {R4-R7,LR}
60B0E:  ADD             R7, SP, #0xC
60B10:  PUSH.W          {R8,R9,R11}
60B14:  SUB             SP, SP, #0x28
60B16:  MOV             R5, R0
60B18:  LDR             R0, =(__stack_chk_guard_ptr - 0x60B24)
60B1A:  VMOV.I32        Q8, #0
60B1E:  MOV             R8, R1
60B20:  ADD             R0, PC; __stack_chk_guard_ptr
60B22:  ADD             R1, SP, #0x40+var_30
60B24:  MOV             R9, R2
60B26:  LDR             R0, [R0]; __stack_chk_guard
60B28:  LDR             R0, [R0]
60B2A:  STR             R0, [SP,#0x40+var_1C]
60B2C:  MOV             R0, R5
60B2E:  VST1.64         {D16-D17}, [R1]
60B32:  BLX             dladdr
60B36:  CBZ             R0, loc_60B6A
60B38:  LDRD.W          R0, R12, [SP,#0x40+var_30]
60B3C:  LDRD.W          R6, LR, [SP,#0x40+var_28]
60B40:  LDR             R1, =(aMemory - 0x60B4C); "Memory" ...
60B42:  CMP             R0, #0
60B44:  LDR             R2, =(aPltHookingS0xX - 0x60B50); "PLT Hooking %s (0x%X) from %s (0x%X)" ...
60B46:  LDR             R3, =(aUnknownSymbol - 0x60B52); "unknown symbol" ...
60B48:  ADD             R1, PC; "Memory"
60B4A:  LDR             R4, =(aUnknownFile - 0x60B54); "unknown file" ...
60B4C:  ADD             R2, PC; "PLT Hooking %s (0x%X) from %s (0x%X)"
60B4E:  ADD             R3, PC; "unknown symbol"
60B50:  ADD             R4, PC; "unknown file"
60B52:  IT NE
60B54:  MOVNE           R4, R0
60B56:  MOVS            R0, #4; prio
60B58:  STRD.W          LR, R4, [SP,#0x40+var_40]
60B5C:  CMP             R6, #0
60B5E:  STR.W           R12, [SP,#0x40+var_38]
60B62:  IT NE
60B64:  MOVNE           R3, R6
60B66:  BLX             __android_log_print
60B6A:  MOV             R0, R5
60B6C:  MOV.W           R1, #0x1000
60B70:  MOVS            R2, #7
60B72:  BL              sub_AF9C0
60B76:  CBZ             R0, loc_60B86
60B78:  MOV             R0, R5
60B7A:  MOV.W           R1, #0x1000
60B7E:  MOVS            R2, #3
60B80:  BL              sub_AF9C0
60B84:  B               loc_60B96
60B86:  LDR             R1, =(aMemory - 0x60B92); "Memory" ...
60B88:  MOVS            R0, #4; prio
60B8A:  LDR             R2, =(aProtectaddrPro - 0x60B94); "protectAddr (_PROT_RWX_) failed: 0x%X -"... ...
60B8C:  MOV             R3, R5
60B8E:  ADD             R1, PC; "Memory"
60B90:  ADD             R2, PC; "protectAddr (_PROT_RWX_) failed: 0x%X -"...
60B92:  BLX             __android_log_print
60B96:  CMP.W           R9, #0
60B9A:  ITT NE
60B9C:  LDRNE           R0, [R5]
60B9E:  STRNE.W         R0, [R9]
60BA2:  STR.W           R8, [R5]
60BA6:  LDR             R0, [SP,#0x40+var_1C]
60BA8:  LDR             R1, =(__stack_chk_guard_ptr - 0x60BAE)
60BAA:  ADD             R1, PC; __stack_chk_guard_ptr
60BAC:  LDR             R1, [R1]; __stack_chk_guard
60BAE:  LDR             R1, [R1]
60BB0:  CMP             R1, R0
60BB2:  ITTT EQ
60BB4:  ADDEQ           SP, SP, #0x28 ; '('
60BB6:  POPEQ.W         {R8,R9,R11}
60BBA:  POPEQ           {R4-R7,PC}
60BBC:  BLX             __stack_chk_fail
