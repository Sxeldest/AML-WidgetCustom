; =========================================================
; Game Engine Function: _ZN23CTaskComplexSignalAtPedC2EP4CPedih
; Address            : 0x519E74 - 0x519EB2
; =========================================================

519E74:  PUSH            {R4-R7,LR}
519E76:  ADD             R7, SP, #0xC
519E78:  PUSH.W          {R11}
519E7C:  MOV             R6, R3
519E7E:  MOV             R5, R1
519E80:  MOV             R4, R0
519E82:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
519E86:  LDR             R0, =(_ZTV23CTaskComplexSignalAtPed_ptr - 0x519E92)
519E88:  MOVS            R1, #0
519E8A:  STR             R1, [R4,#0x10]
519E8C:  CMP             R5, #0
519E8E:  ADD             R0, PC; _ZTV23CTaskComplexSignalAtPed_ptr
519E90:  STRB            R6, [R4,#0x14]
519E92:  STRB            R1, [R4,#0x15]
519E94:  MOV             R1, R4
519E96:  LDR             R0, [R0]; `vtable for'CTaskComplexSignalAtPed ...
519E98:  ADD.W           R0, R0, #8
519E9C:  STR             R0, [R4]
519E9E:  STR.W           R5, [R1,#0xC]!; CEntity **
519EA2:  ITT NE
519EA4:  MOVNE           R0, R5; this
519EA6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
519EAA:  MOV             R0, R4
519EAC:  POP.W           {R11}
519EB0:  POP             {R4-R7,PC}
