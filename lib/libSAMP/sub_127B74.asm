; =========================================================
; Game Engine Function: sub_127B74
; Address            : 0x127B74 - 0x127BA8
; =========================================================

127B74:  PUSH            {R4-R7,LR}
127B76:  ADD             R7, SP, #0xC
127B78:  PUSH.W          {R11}
127B7C:  MOV             R4, R0
127B7E:  BL              sub_163768
127B82:  LDRH            R6, [R4,#4]
127B84:  MOV             R5, R0
127B86:  BL              sub_163768
127B8A:  LDR.W           R1, [R5,R6,LSL#2]
127B8E:  LDR.W           R2, [R0,#0x81C]
127B92:  STR.W           R2, [R5,R6,LSL#2]
127B96:  STR.W           R1, [R0,#0x81C]
127B9A:  LDR             R0, [R4]
127B9C:  LDRH            R1, [R4,#4]
127B9E:  STRH            R1, [R0]
127BA0:  MOV             R0, R4
127BA2:  POP.W           {R11}
127BA6:  POP             {R4-R7,PC}
