; =========================================================
; Game Engine Function: sub_F415E
; Address            : 0xF415E - 0xF4188
; =========================================================

F415E:  PUSH            {R4,R6,R7,LR}
F4160:  ADD             R7, SP, #8
F4162:  MOV             R4, R0
F4164:  LDRD.W          R1, R0, [R0,#4]
F4168:  CMP             R0, R1
F416A:  ITTTT NE
F416C:  SUBNE           R1, R0, R1
F416E:  SUBNE           R1, #0x10
F4170:  MVNNE.W         R1, R1,LSR#4
F4174:  ADDNE.W         R0, R0, R1,LSL#4
F4178:  IT NE
F417A:  STRNE           R0, [R4,#8]
F417C:  LDR             R0, [R4]; void *
F417E:  CBZ             R0, loc_F4184
F4180:  BLX             j__ZdlPv; operator delete(void *)
F4184:  MOV             R0, R4
F4186:  POP             {R4,R6,R7,PC}
