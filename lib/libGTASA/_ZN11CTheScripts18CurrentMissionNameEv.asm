; =========================================================
; Game Engine Function: _ZN11CTheScripts18CurrentMissionNameEv
; Address            : 0x32E900 - 0x32E946
; =========================================================

32E900:  PUSH            {R4-R7,LR}
32E902:  ADD             R7, SP, #0xC
32E904:  PUSH.W          {R8}
32E908:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x32E90E)
32E90A:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
32E90C:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
32E90E:  LDR             R6, [R0]; CTheScripts::pActiveScripts
32E910:  CBZ             R6, loc_32E93A
32E912:  LDR.W           R8, =(byte_61CD7E - 0x32E91C)
32E916:  LDR             R4, =(aNoname - 0x32E91E); "noname"
32E918:  ADD             R8, PC; byte_61CD7E
32E91A:  ADD             R4, PC; "noname"
32E91C:  LDRB.W          R0, [R6,#0xE6]
32E920:  CBZ             R0, loc_32E930
32E922:  ADD.W           R5, R6, #8
32E926:  MOV             R1, R4; char *
32E928:  MOV             R0, R5; char *
32E92A:  BLX             strcmp
32E92E:  CBNZ            R0, loc_32E93E
32E930:  LDR             R6, [R6]
32E932:  CMP             R6, #0
32E934:  BNE             loc_32E91C
32E936:  MOV             R5, R8
32E938:  B               loc_32E93E
32E93A:  LDR             R5, =(byte_61CD7E - 0x32E940)
32E93C:  ADD             R5, PC; byte_61CD7E
32E93E:  MOV             R0, R5
32E940:  POP.W           {R8}
32E944:  POP             {R4-R7,PC}
