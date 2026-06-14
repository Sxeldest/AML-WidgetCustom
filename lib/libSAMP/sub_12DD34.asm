; =========================================================
; Game Engine Function: sub_12DD34
; Address            : 0x12DD34 - 0x12DDF4
; =========================================================

12DD34:  PUSH            {R4-R7,LR}
12DD36:  ADD             R7, SP, #0xC
12DD38:  PUSH.W          {R8}
12DD3C:  SUB             SP, SP, #8
12DD3E:  MOV             R4, R0
12DD40:  MOVS            R0, #0x38 ; '8'; unsigned int
12DD42:  MOV             R5, R2
12DD44:  MOV             R8, R1
12DD46:  BLX             j__Znwj; operator new(uint)
12DD4A:  MOV             R6, R0
12DD4C:  MOV             R1, R8
12DD4E:  MOV             R2, R5
12DD50:  BL              sub_12E404
12DD54:  ADD.W           R0, R6, #0x10
12DD58:  STR             R0, [SP,#0x18+var_18]
12DD5A:  ADDS            R0, R6, #4
12DD5C:  STR             R6, [SP,#0x18+var_14]
12DD5E:  LDREX.W         R1, [R0]
12DD62:  ADDS            R1, #1
12DD64:  STREX.W         R2, R1, [R0]
12DD68:  CMP             R2, #0
12DD6A:  BNE             loc_12DD5E
12DD6C:  DMB.W           ISH
12DD70:  LDREX.W         R1, [R0]
12DD74:  SUBS            R2, R1, #1
12DD76:  STREX.W         R3, R2, [R0]
12DD7A:  CMP             R3, #0
12DD7C:  BNE             loc_12DD70
12DD7E:  DMB.W           ISH
12DD82:  CBNZ            R1, loc_12DD92
12DD84:  LDR             R0, [R6]
12DD86:  LDR             R1, [R0,#8]
12DD88:  MOV             R0, R6
12DD8A:  BLX             R1
12DD8C:  MOV             R0, R6; this
12DD8E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12DD92:  LDRD.W          R0, R6, [SP,#0x18+var_18]
12DD96:  CBZ             R6, loc_12DDAA
12DD98:  ADD.W           R1, R6, #8
12DD9C:  LDREX.W         R2, [R1]
12DDA0:  ADDS            R2, #1
12DDA2:  STREX.W         R3, R2, [R1]
12DDA6:  CMP             R3, #0
12DDA8:  BNE             loc_12DD9C
12DDAA:  LDR             R1, =(_ZTVN7sigslot10connectionE - 0x12DDB2); `vtable for'sigslot::connection ...
12DDAC:  STR             R6, [R4,#8]
12DDAE:  ADD             R1, PC; `vtable for'sigslot::connection
12DDB0:  ADD.W           R5, R1, #8
12DDB4:  STRD.W          R5, R0, [R4]
12DDB8:  MOV             R1, SP
12DDBA:  MOV             R0, R8
12DDBC:  BL              sub_12E3BE
12DDC0:  LDR             R4, [SP,#0x18+var_14]
12DDC2:  CBZ             R4, loc_12DDEC
12DDC4:  ADDS            R0, R4, #4
12DDC6:  DMB.W           ISH
12DDCA:  LDREX.W         R1, [R0]
12DDCE:  SUBS            R2, R1, #1
12DDD0:  STREX.W         R3, R2, [R0]
12DDD4:  CMP             R3, #0
12DDD6:  BNE             loc_12DDCA
12DDD8:  DMB.W           ISH
12DDDC:  CBNZ            R1, loc_12DDEC
12DDDE:  LDR             R0, [R4]
12DDE0:  LDR             R1, [R0,#8]
12DDE2:  MOV             R0, R4
12DDE4:  BLX             R1
12DDE6:  MOV             R0, R4; this
12DDE8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12DDEC:  ADD             SP, SP, #8
12DDEE:  POP.W           {R8}
12DDF2:  POP             {R4-R7,PC}
