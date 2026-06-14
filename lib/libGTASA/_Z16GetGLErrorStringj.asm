; =========================================================
; Game Engine Function: _Z16GetGLErrorStringj
; Address            : 0x1CC168 - 0x1CC196
; =========================================================

1CC168:  SUB.W           R1, R0, #0x500; switch 6 cases
1CC16C:  CMP             R1, #5
1CC16E:  BHI             def_1CC170; jumptable 001CC170 default case
1CC170:  TBB.W           [PC,R1]; switch jump
1CC174:  DCB 3; jump table for switch statement
1CC175:  DCB 0xB
1CC176:  DCB 0xD
1CC177:  DCB 9
1CC178:  DCB 9
1CC179:  DCB 0xF
1CC17A:  ADR             R0, aGlInvalidEnum; jumptable 001CC170 case 1280
1CC17C:  BX              LR
1CC17E:  CMP             R0, #0; jumptable 001CC170 default case
1CC180:  ITT EQ
1CC182:  ADREQ           R0, aGlNoError; "GL_NO_ERROR"
1CC184:  BXEQ            LR
1CC186:  ADR             R0, aUnknown; jumptable 001CC170 cases 1283,1284
1CC188:  BX              LR
1CC18A:  ADR             R0, aGlInvalidValue; jumptable 001CC170 case 1281
1CC18C:  BX              LR
1CC18E:  ADR             R0, aGlInvalidOpera; jumptable 001CC170 case 1282
1CC190:  BX              LR
1CC192:  ADR             R0, aGlOutOfMemory; jumptable 001CC170 case 1285
1CC194:  BX              LR
