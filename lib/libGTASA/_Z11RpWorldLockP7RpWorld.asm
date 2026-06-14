; =========================================================
; Game Engine Function: _Z11RpWorldLockP7RpWorld
; Address            : 0x21CB18 - 0x21CB70
; =========================================================

21CB18:  PUSH            {R4-R7,LR}
21CB1A:  ADD             R7, SP, #0xC
21CB1C:  PUSH.W          {R8,R9,R11}
21CB20:  SUB             SP, SP, #0x100
21CB22:  MOV             R8, R0
21CB24:  MOV.W           R9, #0
21CB28:  LDR.W           R5, [R8,#0x1C]
21CB2C:  MOV             R6, SP
21CB2E:  MOVS            R4, #0
21CB30:  LDR             R0, [R5]
21CB32:  CMP.W           R0, #0xFFFFFFFF
21CB36:  BLE             loc_21CB4C
21CB38:  LDRD.W          R0, R1, [R5,#8]
21CB3C:  ADDS            R4, #1
21CB3E:  STR.W           R1, [R6,R4,LSL#2]
21CB42:  MOV             R5, R0
21CB44:  CMP.W           R4, #0xFFFFFFFF
21CB48:  BGT             loc_21CB30
21CB4A:  B               loc_21CB66
21CB4C:  LDR.W           R0, [R5,#0x80]
21CB50:  CBZ             R0, loc_21CB5A
21CB52:  BLX             j__Z14_rpMeshDestroyP12RpMeshHeader; _rpMeshDestroy(RpMeshHeader *)
21CB56:  STR.W           R9, [R5,#0x80]
21CB5A:  LDR.W           R5, [R6,R4,LSL#2]
21CB5E:  SUBS            R4, #1
21CB60:  CMP.W           R4, #0xFFFFFFFF
21CB64:  BGT             loc_21CB30
21CB66:  MOV             R0, R8
21CB68:  ADD             SP, SP, #0x100
21CB6A:  POP.W           {R8,R9,R11}
21CB6E:  POP             {R4-R7,PC}
