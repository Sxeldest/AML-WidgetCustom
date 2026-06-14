; =========================================================
; Game Engine Function: sub_21DC2C
; Address            : 0x21DC2C - 0x21DC88
; =========================================================

21DC2C:  PUSH            {R4,R6,R7,LR}
21DC2E:  ADD             R7, SP, #8
21DC30:  MOV             R4, R0
21DC32:  LDR             R0, =(RwEngineInstance_ptr - 0x21DC3A)
21DC34:  LDR             R1, =(dword_6BD690 - 0x21DC3C)
21DC36:  ADD             R0, PC; RwEngineInstance_ptr
21DC38:  ADD             R1, PC; dword_6BD690
21DC3A:  LDR             R0, [R0]; RwEngineInstance
21DC3C:  LDR             R1, [R1]
21DC3E:  LDR             R2, [R0]
21DC40:  ADDS            R0, R2, R1
21DC42:  LDR             R0, [R0,#4]
21DC44:  CBZ             R0, loc_21DC60
21DC46:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
21DC4A:  LDR             R0, =(RwEngineInstance_ptr - 0x21DC54)
21DC4C:  MOVS            R3, #0
21DC4E:  LDR             R1, =(dword_6BD690 - 0x21DC56)
21DC50:  ADD             R0, PC; RwEngineInstance_ptr
21DC52:  ADD             R1, PC; dword_6BD690
21DC54:  LDR             R0, [R0]; RwEngineInstance
21DC56:  LDR             R1, [R1]
21DC58:  LDR             R2, [R0]
21DC5A:  ADD             R2, R1
21DC5C:  STR             R3, [R2,#4]
21DC5E:  LDR             R2, [R0]
21DC60:  LDR             R0, [R2,R1]
21DC62:  CBZ             R0, loc_21DC7A
21DC64:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
21DC68:  LDR             R0, =(RwEngineInstance_ptr - 0x21DC72)
21DC6A:  MOVS            R2, #0
21DC6C:  LDR             R1, =(dword_6BD690 - 0x21DC74)
21DC6E:  ADD             R0, PC; RwEngineInstance_ptr
21DC70:  ADD             R1, PC; dword_6BD690
21DC72:  LDR             R0, [R0]; RwEngineInstance
21DC74:  LDR             R1, [R1]
21DC76:  LDR             R0, [R0]
21DC78:  STR             R2, [R0,R1]
21DC7A:  LDR             R0, =(dword_6BD694 - 0x21DC80)
21DC7C:  ADD             R0, PC; dword_6BD694
21DC7E:  LDR             R1, [R0]
21DC80:  SUBS            R1, #1
21DC82:  STR             R1, [R0]
21DC84:  MOV             R0, R4
21DC86:  POP             {R4,R6,R7,PC}
