; =========================================================
; Game Engine Function: _ZN10CEscalator9SwitchOffEv
; Address            : 0x5A6E74 - 0x5A6EF4
; =========================================================

5A6E74:  PUSH            {R4-R7,LR}
5A6E76:  ADD             R7, SP, #0xC
5A6E78:  PUSH.W          {R8-R11}
5A6E7C:  SUB             SP, SP, #4
5A6E7E:  MOV             R4, R0
5A6E80:  LDRB.W          R0, [R4,#0x79]
5A6E84:  CBZ             R0, loc_5A6EEC
5A6E86:  ADD.W           R3, R4, #0x7C ; '|'
5A6E8A:  LDM             R3, {R1-R3}; CEntity *
5A6E8C:  ADDS            R0, R2, R1
5A6E8E:  ADD             R0, R3
5A6E90:  CMP             R0, #1
5A6E92:  BLT             loc_5A6EE6
5A6E94:  LDR             R0, =(deletingEscalator_ptr - 0x5A6EA6)
5A6E96:  ADD.W           R5, R4, #0xA8
5A6E9A:  MOV.W           R8, #0
5A6E9E:  MOV.W           R9, #1
5A6EA2:  ADD             R0, PC; deletingEscalator_ptr
5A6EA4:  MOVS            R6, #0
5A6EA6:  LDR.W           R10, [R0]; deletingEscalator
5A6EAA:  LDR             R0, =(deletingEscalator_ptr - 0x5A6EB0)
5A6EAC:  ADD             R0, PC; deletingEscalator_ptr
5A6EAE:  LDR.W           R11, [R0]; deletingEscalator
5A6EB2:  LDR.W           R0, [R5,R6,LSL#2]; this
5A6EB6:  CBZ             R0, loc_5A6EDC
5A6EB8:  BLX.W           j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
5A6EBC:  STRB.W          R9, [R10]
5A6EC0:  LDR.W           R0, [R5,R6,LSL#2]
5A6EC4:  CMP             R0, #0
5A6EC6:  ITTT NE
5A6EC8:  LDRNE           R1, [R0]
5A6ECA:  LDRNE           R1, [R1,#4]
5A6ECC:  BLXNE           R1
5A6ECE:  ADD.W           R3, R4, #0x7C ; '|'
5A6ED2:  STRB.W          R8, [R11]
5A6ED6:  STR.W           R8, [R5,R6,LSL#2]
5A6EDA:  LDM             R3, {R1-R3}
5A6EDC:  ADDS            R0, R2, R1
5A6EDE:  ADDS            R6, #1
5A6EE0:  ADD             R0, R3
5A6EE2:  CMP             R6, R0
5A6EE4:  BLT             loc_5A6EB2
5A6EE6:  MOVS            R0, #0
5A6EE8:  STRB.W          R0, [R4,#0x79]
5A6EEC:  ADD             SP, SP, #4
5A6EEE:  POP.W           {R8-R11}
5A6EF2:  POP             {R4-R7,PC}
