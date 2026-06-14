; =========================================================
; Game Engine Function: _ZN5CText6UnloadEh
; Address            : 0x54DB20 - 0x54DB8C
; =========================================================

54DB20:  PUSH            {R4-R7,LR}
54DB22:  ADD             R7, SP, #0xC
54DB24:  PUSH.W          {R11}
54DB28:  MOV             R4, R0
54DB2A:  MOVS            R0, #0; this
54DB2C:  MOV             R5, R1
54DB2E:  MOVS            R6, #0
54DB30:  BLX             j__ZN9CMessages31ClearAllMessagesDisplayedByGameEh; CMessages::ClearAllMessagesDisplayedByGame(uchar)
54DB34:  LDR             R0, [R4]; void *
54DB36:  CBZ             R0, loc_54DB3E
54DB38:  BLX             _ZdaPv; operator delete[](void *)
54DB3C:  STR             R6, [R4]
54DB3E:  LDR             R0, [R4,#8]; void *
54DB40:  STR             R6, [R4,#4]
54DB42:  CBZ             R0, loc_54DB4C
54DB44:  BLX             _ZdaPv; operator delete[](void *)
54DB48:  MOVS            R0, #0
54DB4A:  STR             R0, [R4,#8]
54DB4C:  MOVS            R0, #0
54DB4E:  CMP             R5, #0
54DB50:  STRB.W          R0, [R4,#0x22]
54DB54:  STR             R0, [R4,#0xC]
54DB56:  BEQ             loc_54DB5E
54DB58:  POP.W           {R11}
54DB5C:  POP             {R4-R7,PC}
54DB5E:  LDR             R0, [R4,#0x10]; void *
54DB60:  CBZ             R0, loc_54DB6A
54DB62:  BLX             _ZdaPv; operator delete[](void *)
54DB66:  MOVS            R0, #0
54DB68:  STR             R0, [R4,#0x10]
54DB6A:  LDR             R0, [R4,#0x18]; void *
54DB6C:  MOVS            R5, #0
54DB6E:  STR             R5, [R4,#0x14]
54DB70:  CBZ             R0, loc_54DB78
54DB72:  BLX             _ZdaPv; operator delete[](void *)
54DB76:  STR             R5, [R4,#0x18]
54DB78:  STR.W           R5, [R4,#0x27]
54DB7C:  STR.W           R5, [R4,#0x23]
54DB80:  STR             R5, [R4,#0x1C]
54DB82:  STRB.W          R5, [R4,#0x2B]
54DB86:  POP.W           {R11}
54DB8A:  POP             {R4-R7,PC}
