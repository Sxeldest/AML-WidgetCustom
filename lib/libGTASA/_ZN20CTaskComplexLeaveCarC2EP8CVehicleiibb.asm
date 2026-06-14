; =========================================================
; Game Engine Function: _ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb
; Address            : 0x4F8904 - 0x4F896E
; =========================================================

4F8904:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *, int, int, bool, bool)'
4F8906:  ADD             R7, SP, #0xC
4F8908:  PUSH.W          {R8}
4F890C:  MOV             R8, R3
4F890E:  MOV             R6, R2
4F8910:  MOV             R5, R1
4F8912:  MOV             R4, R0
4F8914:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F8918:  LDR             R1, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4F8922)
4F891A:  CMP             R5, #0
4F891C:  LDR             R0, [R7,#arg_4]
4F891E:  ADD             R1, PC; _ZTV20CTaskComplexLeaveCar_ptr
4F8920:  LDR             R2, [R7,#arg_0]
4F8922:  STRD.W          R6, R8, [R4,#0x10]
4F8926:  STRB            R2, [R4,#0x18]
4F8928:  MOV.W           R2, #0xF
4F892C:  STRB            R0, [R4,#0x19]
4F892E:  MOV.W           R0, #0
4F8932:  STRB            R0, [R4,#0x1A]
4F8934:  STR             R0, [R4,#0x1C]
4F8936:  STRB.W          R0, [R4,#0x20]
4F893A:  STRB.W          R0, [R4,#0x21]
4F893E:  STR             R2, [R4,#0x24]
4F8940:  MOV.W           R2, #0x40800000
4F8944:  LDR             R1, [R1]; `vtable for'CTaskComplexLeaveCar ...
4F8946:  STR             R2, [R4,#0x28]
4F8948:  MOV.W           R2, #0x3F800000
4F894C:  STR             R2, [R4,#0x2C]
4F894E:  STRB.W          R0, [R4,#0x30]
4F8952:  ADD.W           R0, R1, #8
4F8956:  MOV             R1, R4
4F8958:  STR             R0, [R4]
4F895A:  STR.W           R5, [R1,#0xC]!; CEntity **
4F895E:  ITT NE
4F8960:  MOVNE           R0, R5; this
4F8962:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F8966:  MOV             R0, R4
4F8968:  POP.W           {R8}
4F896C:  POP             {R4-R7,PC}
