; =========================================================
; Game Engine Function: sub_21DB54
; Address            : 0x21DB54 - 0x21DBF6
; =========================================================

21DB54:  PUSH            {R4,R5,R7,LR}
21DB56:  ADD             R7, SP, #8
21DB58:  SUB             SP, SP, #8
21DB5A:  LDR             R2, =(dword_683C2C - 0x21DB64)
21DB5C:  MOV             R4, R0
21DB5E:  LDR             R0, =(dword_683C30 - 0x21DB68)
21DB60:  ADD             R2, PC; dword_683C2C
21DB62:  LDR             R5, =(dword_6BD690 - 0x21DB6C)
21DB64:  ADD             R0, PC; dword_683C30
21DB66:  LDR             R2, [R2]
21DB68:  ADD             R5, PC; dword_6BD690
21DB6A:  LDR             R3, [R0]
21DB6C:  LDR             R0, =(unk_6BD648 - 0x21DB76)
21DB6E:  STR             R1, [R5]
21DB70:  MOV             R1, R2
21DB72:  ADD             R0, PC; unk_6BD648
21DB74:  STR             R0, [SP,#0x10+var_10]
21DB76:  MOVS            R0, #0x18
21DB78:  MOVS            R2, #4
21DB7A:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
21DB7E:  LDR             R1, =(RwEngineInstance_ptr - 0x21DB86)
21DB80:  LDR             R2, [R5]
21DB82:  ADD             R1, PC; RwEngineInstance_ptr
21DB84:  LDR             R1, [R1]; RwEngineInstance
21DB86:  LDR             R3, [R1]
21DB88:  STR             R0, [R3,R2]
21DB8A:  LDR             R0, [R1]
21DB8C:  LDR             R0, [R0,R2]
21DB8E:  CBZ             R0, loc_21DBD4
21DB90:  LDR             R0, =(dword_683C38 - 0x21DB9A)
21DB92:  MOVS            R2, #4
21DB94:  LDR             R1, =(dword_683C34 - 0x21DB9C)
21DB96:  ADD             R0, PC; dword_683C38
21DB98:  ADD             R1, PC; dword_683C34
21DB9A:  LDR             R3, [R0]
21DB9C:  LDR             R0, =(unk_6BD66C - 0x21DBA4)
21DB9E:  LDR             R1, [R1]
21DBA0:  ADD             R0, PC; unk_6BD66C
21DBA2:  STR             R0, [SP,#0x10+var_10]
21DBA4:  MOVS            R0, #0x18
21DBA6:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
21DBAA:  LDR             R1, =(RwEngineInstance_ptr - 0x21DBB2)
21DBAC:  LDR             R2, =(dword_6BD690 - 0x21DBB4)
21DBAE:  ADD             R1, PC; RwEngineInstance_ptr
21DBB0:  ADD             R2, PC; dword_6BD690
21DBB2:  LDR             R1, [R1]; RwEngineInstance
21DBB4:  LDR             R2, [R2]
21DBB6:  LDR             R3, [R1]
21DBB8:  ADD             R3, R2
21DBBA:  STR             R0, [R3,#4]
21DBBC:  LDR             R0, [R1]
21DBBE:  ADDS            R1, R0, R2
21DBC0:  LDR             R2, [R1,#4]
21DBC2:  CBZ             R2, loc_21DBD8
21DBC4:  LDR             R1, =(dword_6BD694 - 0x21DBCE)
21DBC6:  MOVS            R2, #1
21DBC8:  STRH            R2, [R0,#8]
21DBCA:  ADD             R1, PC; dword_6BD694
21DBCC:  LDR             R0, [R1]
21DBCE:  ADDS            R0, #1
21DBD0:  STR             R0, [R1]
21DBD2:  B               loc_21DBF0
21DBD4:  MOVS            R4, #0
21DBD6:  B               loc_21DBF0
21DBD8:  LDR             R0, [R1]
21DBDA:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
21DBDE:  LDR             R0, =(RwEngineInstance_ptr - 0x21DBE8)
21DBE0:  MOVS            R4, #0
21DBE2:  LDR             R1, =(dword_6BD690 - 0x21DBEA)
21DBE4:  ADD             R0, PC; RwEngineInstance_ptr
21DBE6:  ADD             R1, PC; dword_6BD690
21DBE8:  LDR             R0, [R0]; RwEngineInstance
21DBEA:  LDR             R1, [R1]
21DBEC:  LDR             R0, [R0]
21DBEE:  STR             R4, [R0,R1]
21DBF0:  MOV             R0, R4
21DBF2:  ADD             SP, SP, #8
21DBF4:  POP             {R4,R5,R7,PC}
