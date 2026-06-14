; =========================================================
; Game Engine Function: _ZN17CWidgetRegionLook14IsPinchZoomingEP9CVector2D
; Address            : 0x2C12E0 - 0x2C1320
; =========================================================

2C12E0:  PUSH            {R4,R5,R7,LR}
2C12E2:  ADD             R7, SP, #8
2C12E4:  MOV             R5, R0
2C12E6:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x2C12EE)
2C12E8:  MOV             R4, R1
2C12EA:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
2C12EC:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
2C12EE:  LDR             R0, [R0]; CTheScripts::pActiveScripts
2C12F0:  CBZ             R0, loc_2C12FC
2C12F2:  ADDS            R0, #8; char *
2C12F4:  ADR             R1, aBarb; "barb"
2C12F6:  BLX             strcmp
2C12FA:  CBZ             R0, loc_2C131C
2C12FC:  MOVS            R0, #9
2C12FE:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C1302:  CMP             R0, #1
2C1304:  BNE             loc_2C1310
2C1306:  MOVS            R0, #9
2C1308:  POP.W           {R4,R5,R7,LR}
2C130C:  B.W             j_j__ZN4CHID10IsReleasedE10HIDMapping; j_CHID::IsReleased(HIDMapping)
2C1310:  MOV             R0, R5
2C1312:  MOV             R1, R4
2C1314:  POP.W           {R4,R5,R7,LR}
2C1318:  B.W             sub_19698C
2C131C:  MOVS            R0, #0
2C131E:  POP             {R4,R5,R7,PC}
