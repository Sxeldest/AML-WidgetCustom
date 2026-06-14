; =========================================================
; Game Engine Function: sub_133188
; Address            : 0x133188 - 0x1331D6
; =========================================================

133188:  PUSH            {R4,R6,R7,LR}
13318A:  ADD             R7, SP, #8
13318C:  MOV             R4, R0
13318E:  LDR             R0, =(_ZTV13KeyboardInput - 0x133194); `vtable for'KeyboardInput ...
133190:  ADD             R0, PC; `vtable for'KeyboardInput
133192:  ADDS            R0, #8
133194:  STR             R0, [R4]
133196:  ADD.W           R0, R4, #0x7C ; '|'
13319A:  BL              sub_F4D2E
13319E:  LDRB.W          R0, [R4,#0x70]
1331A2:  LSLS            R0, R0, #0x1F
1331A4:  ITT NE
1331A6:  LDRNE           R0, [R4,#0x78]; void *
1331A8:  BLXNE           j__ZdlPv; operator delete(void *)
1331AC:  LDRB.W          R0, [R4,#0x64]
1331B0:  LSLS            R0, R0, #0x1F
1331B2:  ITT NE
1331B4:  LDRNE           R0, [R4,#0x6C]; void *
1331B6:  BLXNE           j__ZdlPv; operator delete(void *)
1331BA:  LDRB.W          R0, [R4,#0x58]
1331BE:  LSLS            R0, R0, #0x1F
1331C0:  ITT NE
1331C2:  LDRNE           R0, [R4,#0x60]; void *
1331C4:  BLXNE           j__ZdlPv; operator delete(void *)
1331C8:  MOV             R0, R4
1331CA:  BL              sub_12BCE4
1331CE:  POP.W           {R4,R6,R7,LR}
1331D2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
