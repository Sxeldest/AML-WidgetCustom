; =========================================================
; Game Engine Function: _ZN9CTheZones29FindZoneByLabelAndReturnIndexEPc9eZoneType
; Address            : 0x42DB88 - 0x42DBE6
; =========================================================

42DB88:  PUSH            {R4,R5,R7,LR}
42DB8A:  ADD             R7, SP, #8
42DB8C:  SUB             SP, SP, #8
42DB8E:  MOV             R4, R1
42DB90:  MOV             R1, R0; char *
42DB92:  MOVS            R0, #0
42DB94:  STRD.W          R0, R0, [SP,#0x10+var_10]
42DB98:  MOV             R0, SP; char *
42DB9A:  BLX             strcpy
42DB9E:  MOVW            R12, #0xFFFF
42DBA2:  CMP             R4, #2
42DBA4:  BNE             loc_42DBDE
42DBA6:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x42DBAC)
42DBA8:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
42DBAA:  LDR             R0, [R0]; CTheZones::TotalNumberOfNavigationZones ...
42DBAC:  LDRH            R1, [R0]; CTheZones::TotalNumberOfNavigationZones
42DBAE:  CBZ             R1, loc_42DBDE
42DBB0:  LDR             R0, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42DBBC)
42DBB2:  MOVS            R3, #0
42DBB4:  LDRD.W          LR, R4, [SP,#0x10+var_10]
42DBB8:  ADD             R0, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42DBBA:  LDR             R0, [R0]; CTheZones::NavigationZoneArray ...
42DBBC:  UXTH            R2, R3
42DBBE:  LSLS            R5, R2, #5
42DBC0:  ADD.W           R2, R0, R2,LSL#5
42DBC4:  LDR             R5, [R0,R5]
42DBC6:  LDR             R2, [R2,#4]
42DBC8:  EOR.W           R5, R5, LR
42DBCC:  EORS            R2, R4
42DBCE:  ORRS            R2, R5
42DBD0:  BEQ             loc_42DBDC
42DBD2:  ADDS            R3, #1
42DBD4:  UXTH            R2, R3
42DBD6:  CMP             R2, R1
42DBD8:  BCC             loc_42DBBC
42DBDA:  B               loc_42DBDE
42DBDC:  MOV             R12, R3
42DBDE:  SXTH.W          R0, R12
42DBE2:  ADD             SP, SP, #8
42DBE4:  POP             {R4,R5,R7,PC}
