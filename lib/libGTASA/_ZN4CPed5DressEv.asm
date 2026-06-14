; =========================================================
; Game Engine Function: _ZN4CPed5DressEv
; Address            : 0x4A7DC6 - 0x4A7DFE
; =========================================================

4A7DC6:  PUSH            {R4,R6,R7,LR}
4A7DC8:  ADD             R7, SP, #8
4A7DCA:  MOV             R4, R0
4A7DCC:  MOVW            R2, #0xFFFF
4A7DD0:  LDR             R0, [R4]
4A7DD2:  LDRSH.W         R1, [R4,#0x26]
4A7DD6:  STRH            R2, [R4,#0x26]
4A7DD8:  LDR             R2, [R0,#0x18]
4A7DDA:  MOV             R0, R4
4A7DDC:  BLX             R2
4A7DDE:  LDR.W           R0, [R4,#0x44C]
4A7DE2:  CMP             R0, #0x32 ; '2'
4A7DE4:  ITT NE
4A7DE6:  MOVNE           R0, #1
4A7DE8:  STRNE.W         R0, [R4,#0x44C]
4A7DEC:  MOV             R0, R4; this
4A7DEE:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4A7DF2:  LDR.W           R0, [R4,#0x5A0]
4A7DF6:  LDR             R0, [R0,#0x20]
4A7DF8:  STR.W           R0, [R4,#0x564]
4A7DFC:  POP             {R4,R6,R7,PC}
