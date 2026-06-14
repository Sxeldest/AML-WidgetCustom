; =========================================================
; Game Engine Function: sub_21DBA8
; Address            : 0x21DBA8 - 0x21DBEE
; =========================================================

21DBA8:  PUSH            {R4,R5,R7,LR}
21DBAA:  ADD             R7, SP, #8
21DBAC:  BLX             j___cxa_get_globals
21DBB0:  LDR             R2, [R0,#8]
21DBB2:  CBZ             R2, loc_21DBEA
21DBB4:  MOV             R1, R2
21DBB6:  LDR             R5, =0x434C4E
21DBB8:  LDR.W           R3, [R1,#0x28]!
21DBBC:  LDR             R4, [R1,#4]
21DBBE:  LSRS            R3, R3, #8
21DBC0:  EOR.W           R5, R5, R4,LSR#8
21DBC4:  ORR.W           R3, R3, R4,LSL#24
21DBC8:  LDR             R4, =0x47432B2B
21DBCA:  EORS            R3, R4
21DBCC:  ORRS            R3, R5
21DBCE:  BNE             loc_21DBE2
21DBD0:  LDR             R3, [R2,#0x24]
21DBD2:  SUBS            R3, #1
21DBD4:  STR             R3, [R2,#0x24]
21DBD6:  BNE             loc_21DBE6
21DBD8:  LDR             R3, [R2,#0x20]
21DBDA:  STR             R3, [R0,#8]
21DBDC:  MOVS            R0, #0
21DBDE:  STR             R0, [R2,#0x20]
21DBE0:  B               loc_21DBE6
21DBE2:  MOVS            R2, #0
21DBE4:  STR             R2, [R0,#8]
21DBE6:  MOV             R0, R1
21DBE8:  POP             {R4,R5,R7,PC}
21DBEA:  BLX             j__ZSt9terminatev; std::terminate(void)
