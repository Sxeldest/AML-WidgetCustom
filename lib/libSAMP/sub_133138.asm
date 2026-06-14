; =========================================================
; Game Engine Function: sub_133138
; Address            : 0x133138 - 0x133182
; =========================================================

133138:  PUSH            {R4,R6,R7,LR}
13313A:  ADD             R7, SP, #8
13313C:  MOV             R4, R0
13313E:  LDR             R0, =(_ZTV13KeyboardInput - 0x133144); `vtable for'KeyboardInput ...
133140:  ADD             R0, PC; `vtable for'KeyboardInput
133142:  ADDS            R0, #8
133144:  STR             R0, [R4]
133146:  ADD.W           R0, R4, #0x7C ; '|'
13314A:  BL              sub_F4D2E
13314E:  LDRB.W          R0, [R4,#0x70]
133152:  LSLS            R0, R0, #0x1F
133154:  ITT NE
133156:  LDRNE           R0, [R4,#0x78]; void *
133158:  BLXNE           j__ZdlPv; operator delete(void *)
13315C:  LDRB.W          R0, [R4,#0x64]
133160:  LSLS            R0, R0, #0x1F
133162:  ITT NE
133164:  LDRNE           R0, [R4,#0x6C]; void *
133166:  BLXNE           j__ZdlPv; operator delete(void *)
13316A:  LDRB.W          R0, [R4,#0x58]
13316E:  LSLS            R0, R0, #0x1F
133170:  ITT NE
133172:  LDRNE           R0, [R4,#0x60]; void *
133174:  BLXNE           j__ZdlPv; operator delete(void *)
133178:  MOV             R0, R4
13317A:  POP.W           {R4,R6,R7,LR}
13317E:  B.W             sub_12BCE4
