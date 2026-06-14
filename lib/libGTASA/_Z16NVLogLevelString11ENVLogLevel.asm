; =========================================================
; Game Engine Function: _Z16NVLogLevelString11ENVLogLevel
; Address            : 0x277034 - 0x277092
; =========================================================

277034:  SUBS            R1, R0, #1; switch 32 cases
277036:  CMP             R1, #0x1F
277038:  BHI             def_27703E; jumptable 0027703E default case, cases 3,5-7,9-15,17-31
27703A:  LDR             R0, =(aDebug - 0x277040); "DEBUG"
27703C:  ADD             R0, PC; "DEBUG"
27703E:  TBB.W           [PC,R1]; switch jump
277042:  DCB 0x17; jump table for switch statement
277043:  DCB 0x10
277044:  DCB 0x14
277045:  DCB 0x18
277046:  DCB 0x14
277047:  DCB 0x14
277048:  DCB 0x14
277049:  DCB 0x1C
27704A:  DCB 0x14
27704B:  DCB 0x14
27704C:  DCB 0x14
27704D:  DCB 0x14
27704E:  DCB 0x14
27704F:  DCB 0x14
277050:  DCB 0x14
277051:  DCB 0x20
277052:  DCB 0x14
277053:  DCB 0x14
277054:  DCB 0x14
277055:  DCB 0x14
277056:  DCB 0x14
277057:  DCB 0x14
277058:  DCB 0x14
277059:  DCB 0x14
27705A:  DCB 0x14
27705B:  DCB 0x14
27705C:  DCB 0x14
27705D:  DCB 0x14
27705E:  DCB 0x14
27705F:  DCB 0x14
277060:  DCB 0x14
277061:  DCB 0x24
277062:  LDR             R0, =(aDebug - 0x277068); jumptable 0027703E case 2
277064:  ADD             R0, PC; "DEBUG"
277066:  ADDS            R0, #6
277068:  BX              LR
27706A:  LDR             R0, =(aDebug - 0x277070); jumptable 0027703E default case, cases 3,5-7,9-15,17-31
27706C:  ADD             R0, PC; "DEBUG"
27706E:  ADDS            R0, #0x24 ; '$'
277070:  BX              LR; jumptable 0027703E case 1
277072:  LDR             R0, =(aDebug - 0x277078); jumptable 0027703E case 4
277074:  ADD             R0, PC; "DEBUG"
277076:  ADDS            R0, #0xC
277078:  BX              LR
27707A:  LDR             R0, =(aDebug - 0x277080); jumptable 0027703E case 8
27707C:  ADD             R0, PC; "DEBUG"
27707E:  ADDS            R0, #0x12
277080:  BX              LR
277082:  LDR             R0, =(aDebug - 0x277088); jumptable 0027703E case 16
277084:  ADD             R0, PC; "DEBUG"
277086:  ADDS            R0, #0x18
277088:  BX              LR
27708A:  LDR             R0, =(aDebug - 0x277090); jumptable 0027703E case 32
27708C:  ADD             R0, PC; "DEBUG"
27708E:  ADDS            R0, #0x1E
277090:  BX              LR
