; =========================================================
; Game Engine Function: _ZN23CTaskSimplePickUpEntityC2EP7CEntityPK7CVectorhhPKcS6_if
; Address            : 0x542220 - 0x542258
; =========================================================

542220:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimplePickUpEntity::CTaskSimplePickUpEntity(CEntity *, CVector const*, unsigned char, unsigned char, char const*, char const*, int, float)'
542222:  ADD             R7, SP, #8
542224:  SUB             SP, SP, #0x10
542226:  LDRD.W          LR, R12, [R7,#arg_0]
54222A:  LDRD.W          R4, R5, [R7,#arg_8]
54222E:  STRD.W          LR, R12, [SP,#0x18+var_18]; unsigned __int8
542232:  STRD.W          R4, R5, [SP,#0x18+var_10]; char *
542236:  BLX             j__ZN21CTaskSimpleHoldEntityC2EP7CEntityPK7CVectorhhPKcS6_i; CTaskSimpleHoldEntity::CTaskSimpleHoldEntity(CEntity *,CVector const*,uchar,uchar,char const*,char const*,int)
54223A:  LDR             R1, =(_ZTV23CTaskSimplePickUpEntity_ptr - 0x542246)
54223C:  MOVS            R2, #0
54223E:  VLDR            S0, [R7,#arg_10]
542242:  ADD             R1, PC; _ZTV23CTaskSimplePickUpEntity_ptr
542244:  VSTR            S0, [R0,#0x3C]
542248:  LDR             R1, [R1]; `vtable for'CTaskSimplePickUpEntity ...
54224A:  STRD.W          R2, R2, [R0,#0x40]
54224E:  STR             R2, [R0,#0x48]
542250:  ADDS            R1, #8
542252:  STR             R1, [R0]
542254:  ADD             SP, SP, #0x10
542256:  POP             {R4,R5,R7,PC}
