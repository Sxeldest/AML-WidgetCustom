; =========================================================
; Game Engine Function: _ZN24CTaskSimplePutDownEntityC2EP7CEntityPK7CVectorhhPKcS6_if
; Address            : 0x5423C4 - 0x5423F4
; =========================================================

5423C4:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimplePutDownEntity::CTaskSimplePutDownEntity(CEntity *, CVector const*, unsigned char, unsigned char, char const*, char const*, int, float)'
5423C6:  ADD             R7, SP, #8
5423C8:  SUB             SP, SP, #0x10
5423CA:  LDRD.W          LR, R12, [R7,#arg_0]
5423CE:  LDRD.W          R4, R5, [R7,#arg_8]
5423D2:  STRD.W          LR, R12, [SP,#0x18+var_18]; unsigned __int8
5423D6:  STRD.W          R4, R5, [SP,#0x18+var_10]; char *
5423DA:  BLX             j__ZN21CTaskSimpleHoldEntityC2EP7CEntityPK7CVectorhhPKcS6_i; CTaskSimpleHoldEntity::CTaskSimpleHoldEntity(CEntity *,CVector const*,uchar,uchar,char const*,char const*,int)
5423DE:  LDR             R1, =(_ZTV24CTaskSimplePutDownEntity_ptr - 0x5423E8)
5423E0:  VLDR            S0, [R7,#arg_10]
5423E4:  ADD             R1, PC; _ZTV24CTaskSimplePutDownEntity_ptr
5423E6:  VSTR            S0, [R0,#0x3C]
5423EA:  LDR             R1, [R1]; `vtable for'CTaskSimplePutDownEntity ...
5423EC:  ADDS            R1, #8
5423EE:  STR             R1, [R0]
5423F0:  ADD             SP, SP, #0x10
5423F2:  POP             {R4,R5,R7,PC}
