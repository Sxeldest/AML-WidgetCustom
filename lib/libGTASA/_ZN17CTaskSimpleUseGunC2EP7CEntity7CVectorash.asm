; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash
; Address            : 0x4DBC8C - 0x4DBD12
; =========================================================

4DBC8C:  PUSH            {R4-R7,LR}
4DBC8E:  ADD             R7, SP, #0xC
4DBC90:  PUSH.W          {R8-R11}
4DBC94:  SUB             SP, SP, #4
4DBC96:  MOV             R8, R3
4DBC98:  MOV             R6, R2
4DBC9A:  MOV             R5, R1
4DBC9C:  MOV             R4, R0
4DBC9E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DBCA2:  LDR             R0, =(_ZTV17CTaskSimpleUseGun_ptr - 0x4DBCB4)
4DBCA4:  MOV.W           R2, #0x100
4DBCA8:  LDRD.W          R10, R3, [R7,#arg_8]
4DBCAC:  MOV.W           R9, #0
4DBCB0:  ADD             R0, PC; _ZTV17CTaskSimpleUseGun_ptr
4DBCB2:  LDRD.W          R11, R1, [R7,#arg_0]
4DBCB6:  STRH            R2, [R4,#8]
4DBCB8:  CMP             R5, #0
4DBCBA:  LDR             R0, [R0]; `vtable for'CTaskSimpleUseGun ...
4DBCBC:  STRB.W          R9, [R4,#0xE]
4DBCC0:  STRB            R1, [R4,#0xF]
4DBCC2:  MOV.W           R1, #0xFF
4DBCC6:  STRD.W          R9, R9, [R4,#0x14]
4DBCCA:  ADD.W           R0, R0, #8
4DBCCE:  STR.W           R9, [R4,#0xA]
4DBCD2:  STRB            R1, [R4,#0x10]
4DBCD4:  MOV             R1, R4
4DBCD6:  STR             R0, [R4]
4DBCD8:  STR.W           R5, [R1,#0x1C]!; CEntity **
4DBCDC:  BEQ             loc_4DBCE8
4DBCDE:  MOV             R0, R5; this
4DBCE0:  MOV             R5, R3
4DBCE2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DBCE6:  MOV             R3, R5
4DBCE8:  ADD.W           R0, R4, #0x20 ; ' '
4DBCEC:  STM.W           R0, {R6,R8,R11}
4DBCF0:  MOV.W           R0, #0xFF0000
4DBCF4:  STRD.W          R9, R9, [R4,#0x2C]
4DBCF8:  STRH.W          R10, [R4,#0x34]
4DBCFC:  STR.W           R0, [R4,#0x36]
4DBD00:  MOV             R0, R4
4DBD02:  STRB.W          R9, [R4,#0x3A]
4DBD06:  STRB.W          R3, [R4,#0x3B]
4DBD0A:  ADD             SP, SP, #4
4DBD0C:  POP.W           {R8-R11}
4DBD10:  POP             {R4-R7,PC}
