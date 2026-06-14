; =========================================================
; Game Engine Function: sub_FDF1C
; Address            : 0xFDF1C - 0xFDFC4
; =========================================================

FDF1C:  PUSH            {R4-R7,LR}
FDF1E:  ADD             R7, SP, #0xC
FDF20:  PUSH.W          {R8,R9,R11}
FDF24:  SUB             SP, SP, #0x20
FDF26:  MOV             R4, R0
FDF28:  BL              sub_108D44
FDF2C:  LDR             R1, =(off_234A74 - 0xFDF34)
FDF2E:  MOV             R8, SP
FDF30:  ADD             R1, PC; off_234A74
FDF32:  LDR             R6, [R1]; dword_2402E4
FDF34:  LDR             R1, [R6]
FDF36:  LDR.W           R9, [R1]
FDF3A:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZ24CPed_GetWeaponSkill_hookP9_PED_TYPEE3$_5NS_9allocatorIS4_EEFvvEEE - 0xFDF4A); `vtable for'std::__function::__func<CPed_GetWeaponSkill_hook(_PED_TYPE *)::$_5,std::allocator<CPed_GetWeaponSkill_hook(_PED_TYPE *)::$_5>,void ()(void)> ...
FDF3C:  STR             R0, [R1]
FDF3E:  STRB.W          R0, [R7,#var_19]
FDF42:  SUB.W           R0, R7, #-var_19
FDF46:  ADD             R2, PC; `vtable for'std::__function::__func<CPed_GetWeaponSkill_hook(_PED_TYPE *)::$_5,std::allocator<CPed_GetWeaponSkill_hook(_PED_TYPE *)::$_5>,void ()(void)>
FDF48:  STR             R0, [SP,#0x38+var_34]
FDF4A:  ADD.W           R0, R2, #8
FDF4E:  STR.W           R8, [SP,#0x38+var_28]
FDF52:  STR             R0, [SP,#0x38+var_38]
FDF54:  BL              sub_F83C8
FDF58:  LDR             R0, [SP,#0x38+var_34]
FDF5A:  LDRB            R0, [R0]
FDF5C:  BL              sub_F8400
FDF60:  LDR             R5, =(byte_247574 - 0xFDF6C)
FDF62:  MOVS            R2, #1
FDF64:  LDR             R0, [SP,#0x38+var_28]
FDF66:  LDR             R1, [R6]
FDF68:  ADD             R5, PC; byte_247574
FDF6A:  CMP             R8, R0
FDF6C:  STRB            R2, [R5]
FDF6E:  STR.W           R9, [R1]
FDF72:  BEQ             loc_FDF7A
FDF74:  CBZ             R0, loc_FDF84
FDF76:  MOVS            R1, #5
FDF78:  B               loc_FDF7C
FDF7A:  MOVS            R1, #4
FDF7C:  LDR             R2, [R0]
FDF7E:  LDR.W           R1, [R2,R1,LSL#2]
FDF82:  BLX             R1
FDF84:  LDR             R0, =(off_23494C - 0xFDF96)
FDF86:  MOVW            R2, #0x55E3
FDF8A:  LDRB.W          R1, [R4,#0x71C]
FDF8E:  MOVT            R2, #0x4A ; 'J'
FDF92:  ADD             R0, PC; off_23494C
FDF94:  LDR             R0, [R0]; dword_23DF24
FDF96:  RSB.W           R1, R1, R1,LSL#3
FDF9A:  ADD.W           R1, R4, R1,LSL#2
FDF9E:  LDR             R0, [R0]
FDFA0:  LDR.W           R1, [R1,#0x5A4]
FDFA4:  ADD             R2, R0
FDFA6:  MOV             R0, R4
FDFA8:  BLX             R2
FDFAA:  MOV             R4, R0
FDFAC:  LDRB            R0, [R5]
FDFAE:  CMP             R0, #1
FDFB0:  BNE             loc_FDFBA
FDFB2:  BL              sub_F8390
FDFB6:  MOVS            R0, #0
FDFB8:  STRB            R0, [R5]
FDFBA:  MOV             R0, R4
FDFBC:  ADD             SP, SP, #0x20 ; ' '
FDFBE:  POP.W           {R8,R9,R11}
FDFC2:  POP             {R4-R7,PC}
